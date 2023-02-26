package dev.marcos.movies.services;
import dev.marcos.movies.models.Movie;
import dev.marcos.movies.models.persistence.MovieDAO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
public class MovieService {
    private MovieDAO movieDAO = new MovieDAO();
    public List<Movie> allMovies(){
        try {
            List<Movie> movies = movieDAO.getMovies();
            return movies;
        } catch (SQLException e) {
            e.printStackTrace();
            return new ArrayList<Movie>();
        }
    }
    public Movie singleMovie(String id){
        try {
            Movie m = movieDAO.getMovieById(id);
            return m;
        }catch (SQLException e){
            e.printStackTrace();
            return null;
        }
    }
    public static void main(String[] args) {
        List<Movie> movies = new MovieService().allMovies();
        System.out.println(movies.size());
    }
}
