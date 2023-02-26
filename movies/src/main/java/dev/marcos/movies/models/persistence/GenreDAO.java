package dev.marcos.movies.models.persistence;

import dev.marcos.movies.models.Genre;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class GenreDAO extends BaseDAO{
    Connection conn = null;
    PreparedStatement stmt = null;


    public Genre createGenre(ResultSet rs) throws SQLException {
        Genre g = new Genre();
        g.setId(rs.getLong("Genre_id"));
        g.setType(rs.getString("Type"));
        return g;
    }

    public List<Genre> getGenresByMovieId(long id) throws SQLException{
        List<Genre> genres = new ArrayList<>();

        try {
            conn = getConnection();
            stmt = conn.prepareStatement("SELECT g.Genre_id,g.Type FROM Movie m JOIN Movie_Has_Genre mg ON m.Movie_Id=mg.FK_Movie_Id JOIN Genre g ON g.Genre_id=mg.FK_Genre_Id WHERE m.Movie_Id= ?");
            stmt.setLong(1,id);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                Genre m = createGenre(rs);
                genres.add(m);
            }
            rs.close();
        }finally {
            if(stmt != null) stmt.close();
            if(conn != null) conn.close();
        }
        return genres;
    }

}
