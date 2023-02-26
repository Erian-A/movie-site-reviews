package dev.marcos.movies.models.persistence;

import dev.marcos.movies.models.Backdrop;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BackdropDAO extends BaseDAO{
    public Backdrop createBackdrop(ResultSet rs) throws SQLException {
        Backdrop b = new Backdrop();
        b.setId(rs.getLong("Backdrop_Id"));
        b.setLink(rs.getString("Backdrop_Link"));

        return b;
    }

    public List<Backdrop> getBackdropsByMovieId(long id) throws SQLException{
        List<Backdrop> backdrops = new ArrayList<>();
        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = getConnection();
            stmt = conn.prepareStatement("SELECT Backdrop_Id,Backdrop_Link FROM Backdrop WHERE FK_Movie_Id = ?");

            stmt.setLong(1,id);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                Backdrop b = createBackdrop(rs);
                backdrops.add(b);
            }
            rs.close();
        }finally {
            if(stmt != null) stmt.close();
            if(conn != null) conn.close();
        }
        return backdrops;
    }
}
