<div class="movie_box">
    <style scoped>
        .movie_box{
            display: grid;
            grid-template-columns: max-content 1fr;
            grid-row-gap: 10px;
            grid-column-gap: 20px;
        }
        .movie_field{
            display: contents;
        }
    </style>
    <p class="meta-options movie_field">
        <label for="movie_imdb-id">IMDB-ID</label>
        <input id="movie_imdb-id"
            type="text"
            name="movie_imdb-id"
            value="<?php echo esc_attr( get_post_meta( get_the_ID(), 'movie_imdb-id', true ) ); ?>">
    </p>
    <p class="meta-options movie_field">
        <label for="movie_actors">Actors</label>
        <input id="movie_actors"
            type="text"
            name="movie_actors"
            value="<?php echo esc_attr( get_post_meta( get_the_ID(), 'movie_actors', true ) ); ?>">
    </p>
    <p class="meta-options movie_field">
        <label for="movie_director">Director</label>
        <input id="movie_director"
            type="text"
            name="movie_director"
            value="<?php echo esc_attr( get_post_meta( get_the_ID(), 'movie_director', true ) ); ?>">
    </p>
    <p class="meta-options movie_field">
        <label for="movie_genres">Genres</label>
        <input id="movie_genres"
            type="text"
            name="movie_genres"
            value="<?php echo esc_attr( get_post_meta( get_the_ID(), 'movie_genres', true ) ); ?>">
    </p>
    <p class="meta-options movie_field">
        <label for="movie_budget">Budget</label>
        <input id="movie_budget"
            type="number"
            name="movie_budget"
            value="<?php echo esc_attr( get_post_meta( get_the_ID(), 'movie_budget', true ) ); ?>">
    </p>
</div>
</div>