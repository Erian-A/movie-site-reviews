package dev.marcos.movies.models.persistence;

import dev.marcos.movies.models.Review;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
public class ReviewDAO extends BaseDAO{
    Connection conn = null;
    PreparedStatement stmt = null;
    public void save(long authorId, String imdbId, Review review) throws SQLException {
        try {
            conn = getConnection();
            if(review.getId() == 0){
                stmt = conn.prepareStatement("INSERT INTO Movie_Has_Review_From_Author (Description,FK_Author_Id,FK_Movie_ImbId) VALUES (?,?,?)", Statement.RETURN_GENERATED_KEYS);

            }else{
                stmt = conn.prepareStatement("UPDATE Movie_Has_Review_From_Author SET Description = ? WHERE FK_Author_Id=? AND FK_Movie_ImbId =? AND Review_Id=?");
            }
            stmt.setString(1, review.getDescription());
            stmt.setLong(2,authorId);
            stmt.setString(3,imdbId);
            if(review.getId() != 0){
                stmt.setLong(4,review.getId());
            }

            int count = stmt.executeUpdate();
            if(count == 0){
                throw new SQLException("Erro ao inserir o review");
            }
            if(review.getId() == 0){
                long id = getGeneratedId(stmt);
                review.setId(id);
            }
        }finally {
            if(stmt != null) stmt.close();
            if(conn != null) conn.close();
        }
    }

    private long getGeneratedId(Statement stmt) throws SQLException {
        ResultSet rs = stmt.getGeneratedKeys();
        if(rs.next()){
            long id = rs.getLong(1);
            return id;
        }
        return 0l;
    }

    public List<Review> getReviewByMovieImbId(String imbId) throws SQLException{
        List<Review> reviews = new ArrayList<>();
        try {
            conn = getConnection();
            stmt = conn.prepareStatement("SELECT Review_Id,Description FROM Movie_Has_Review_From_Author WHERE FK_Movie_ImbId = ?");
            stmt.setString(1,imbId);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                Review r = createReview(rs);
                reviews.add(r);
            }
            rs.close();

        } finally {
            if(stmt != null) stmt.close();
            if(conn != null) conn.close();
        }
        return reviews;
    }

    private Review createReview(ResultSet rs) throws SQLException {
        Review r = new Review(rs.getString("Description"));
        r.setId(rs.getLong("Review_Id"));
        return r;
    }
}
