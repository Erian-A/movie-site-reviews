package dev.marcos.movies.controllers;

import java.util.List;

import dev.marcos.movies.services.MovieService;
import dev.marcos.movies.models.Movie;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/movies")
public class MovieController {
    private MovieService movieService;
    public MovieController(){
        this.movieService = new MovieService();
    }
    @GetMapping
    public ResponseEntity<List<Movie>> allMovies(){
        return new ResponseEntity<List<Movie>>(movieService.allMovies(), HttpStatus.OK);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Movie> singleMovie(@PathVariable String id){
        return new ResponseEntity<Movie>(movieService.singleMovie(id),HttpStatus.OK);
    }
}
