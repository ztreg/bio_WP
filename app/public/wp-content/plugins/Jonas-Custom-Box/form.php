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
        <label for="movie_poster">Poster</label>
        <input id="movie_poster"
            type="text"
            name="movie_poster"
            value="<?php echo esc_attr( get_post_meta( get_the_ID(), 'movie_poster', true ) ); ?>">
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
        <label for="movie_writer">Writer</label>
        <input id="movie_writer"
            type="text"
            name="movie_writer"
            value="<?php echo esc_attr( get_post_meta( get_the_ID(), 'movie_writer', true ) ); ?>">
    </p>
    <p class="meta-options movie_field">
        <label for="movie_released">Movie released</label>
        <input id="movie_released"
            type="text"
            name="movie_released"
            value="<?php echo esc_attr( get_post_meta( get_the_ID(), 'movie_released', true ) ); ?>">
    </p>
    <p class="meta-options movie_field">
        <label for="movie_genres">Genres</label>
        <input id="movie_genres"
            type="text"
            name="movie_genres"
            value="<?php echo esc_attr( get_post_meta( get_the_ID(), 'movie_genres', true ) ); ?>">
    </p>
    <p class="meta-options movie_field">
        <label for="movie_boxoffice">Boxoffice</label>
        <input id="movie_boxoffice"
            type="text"
            name="movie_boxoffice"
            value="<?php echo esc_attr( get_post_meta( get_the_ID(), 'movie_boxoffice', true ) ); ?>">
    </p>
</div>
</div>