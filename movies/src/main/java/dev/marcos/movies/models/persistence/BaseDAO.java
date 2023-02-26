package dev.marcos.movies.models.persistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BaseDAO {
    public BaseDAO() {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        }catch (ClassNotFoundException e){
            e.printStackTrace();
        }
    }
    protected Connection getConnection() throws SQLException{

        final String MYSQL_HOST = System.getenv("MYSQL_DB_HOST");
        final String MYSQL_DB = System.getenv("MYSQL_DB_NAME");
        final String MYSQL_USER = System.getenv("MYSQL_DB_USER");
        final String MYSQL_PASSWORD = System.getenv("MYSQL_DB_PASSWORD");
        String url = "jdbc:mysql://"+MYSQL_HOST+"/"+MYSQL_DB;
//        Connection conn = DriverManager.getConnection(url,MYSQL_USER,MYSQL_PASSWORD);

        System.out.println(System.getenv().toString());
        url = "jdbc:mysql://localhost/movies_api";
        Connection conn = DriverManager.getConnection(url,"marcos","aurelio");
        return conn;
    }

    public static void main(String[] args) throws SQLException {
        BaseDAO db = new BaseDAO();

        Connection conn = db.getConnection();
        System.out.println(conn);
    }
}
