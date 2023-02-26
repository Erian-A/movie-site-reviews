package dev.marcos.movies.models.persistence;

import dev.marcos.movies.models.Movie;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
public class MovieDAO extends BaseDAO{
    private GenreDAO genreDAO = new GenreDAO();
    private BackdropDAO backdropDAO = new BackdropDAO();
    private ReviewDAO reviewDAO = new ReviewDAO();
    private Connection conn = null;
    private PreparedStatement stmt = null;
    public Movie createMovie(ResultSet rs) throws SQLException{
        Movie m = new Movie();
        long movieID = rs.getLong("Movie_id");
        m.setId(movieID);
        m.setImbId(rs.getString("ImbId"));
        m.setTitle(rs.getString("Title"));
        m.setReleaseDate(rs.getDate("Release_Date"));
        m.setTrailerLink(rs.getString("Trailer_Link"));
        m.setPosterLink(rs.getString("Poster_Link"));
        m.setGenres(genreDAO.getGenresByMovieId(movieID));
        m.setBackdrops(backdropDAO.getBackdropsByMovieId(movieID));
        m.setReviews(reviewDAO.getReviewByMovieImbId(m.getImbId()));
        return m;
    }

    public List<Movie> getMovies() throws SQLException{
        List<Movie> movies = new ArrayList<>();

        try {
            conn = getConnection();
            stmt = conn.prepareStatement("SELECT * FROM Movie");
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                Movie m = createMovie(rs);
                movies.add(m);
            }
            rs.close();
        }finally {
            if(stmt != null) stmt.close();
            if(conn != null) conn.close();
        }
        return movies;
    }

    public Movie getMovieById(String imbId) throws SQLException{
        try {
            conn = getConnection();
            stmt = conn.prepareStatement("SELECT * FROM Movie WHERE ImbId = ?");
            stmt.setString(1,imbId);
            ResultSet rs = stmt.executeQuery();
            if(rs.next()){
                Movie m = createMovie(rs);
                rs.close();
                return m;
            }
        } finally {
            if(stmt != null) stmt.close();
            if(conn != null) conn.close();
        }
        return null;
    }
}
