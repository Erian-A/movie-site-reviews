package dev.marcos.movies.models;

import java.util.Date;
import java.util.List;

public class Movie {
    private Long id;
    private String imbId;
    private String title;
    private Date releaseDate;
    private String trailerLink;
    private String posterLink;
    private List<Genre> genres;
    private List<Backdrop> backdrops;
    private List<Review> reviews;

    public void setId(Long id) {
        this.id = id;
    }

    public void setImbId(String imbId) {
        this.imbId = imbId;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setReleaseDate(Date releaseDate) {
        this.releaseDate = releaseDate;
    }

    public void setTrailerLink(String trailerLink) {
        this.trailerLink = trailerLink;
    }

    public void setPosterLink(String posterLink) {
        this.posterLink = posterLink;
    }

    public void setGenres(List<Genre> genres) {
        this.genres = genres;
    }
    public String getImbId() {
        return imbId;
    }

    public String getTitle() {
        return title;
    }

    public Date getReleaseDate() {
        return releaseDate;
    }

    public String getTrailerLink() {
        return trailerLink;
    }

    public String getPosterLink() {
        return posterLink;
    }

    public void setBackdrops(List<Backdrop> backdrops) {
        this.backdrops = backdrops;
    }

    public void setReviews(List<Review> reviews) {
        this.reviews = reviews;
    }

    public List<Genre> getGenres() {
        return genres;
    }

    public List<Backdrop> getBackdrops() {
        return backdrops;
    }

    public List<Review> getReviews() {
        return reviews;
    }

    @Override
    public String toString() {
        return "Movie{" +
                "id=" + id +
                ", imbId='" + imbId + '\'' +
                ", title='" + title + '\'' +
                ", releaseDate=" + releaseDate +
                ", trailerLink='" + trailerLink + '\'' +
                ", posterLink='" + posterLink + '\'' +
                '}';
    }
}
