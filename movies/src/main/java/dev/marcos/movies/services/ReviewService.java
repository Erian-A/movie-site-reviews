package dev.marcos.movies.services;

import dev.marcos.movies.models.Review;
import dev.marcos.movies.models.persistence.ReviewDAO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ReviewService {
    ReviewDAO reviewDAO = new ReviewDAO();
    public Review createReview(long authorId, String imdbId, String description){
        Review review = new Review(description);
        try {
            reviewDAO.save(authorId,imdbId,review);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return review;
    }

    public List<Review> getReviewByMovieImbId(String imbId){
        try {
            return reviewDAO.getReviewByMovieImbId(imbId);
        }catch (SQLException e){
            e.printStackTrace();
        }
        return new ArrayList<>();
    }
}
