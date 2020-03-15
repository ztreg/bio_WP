<?php

/**
 * Plugin Name: Jonas Custom Box
 * Plugin URI: https://metabox.io
 * Description: A simple plugin for custom fields.
 * Version: 1.0
 * Author: Meta Box
 * Author URI: https://metabox.io
 * License: GPL2
 */


/**
 * $id	Meta box ID
 * $title	Title of the meta box.
 * $callback	The function that fills the box with the desired content. The function should echo its output.
 * $screen	The screen or screens on which to show the box (such as a post type, link, or comment).
 * $context	The context within the screen where the boxes should display. Post edit screen contexts include normal, side, and advanced. Default value: advanced.
 * $priority	The priority within the context where the boxes should show (high, low). Default value: high.
 * $callback_args	Data that should be set as the $args property of the box array (which is the second parameter passed to your callback). Default value: null.
 *  */
//add_meta_box( $id, $title, $callback, $screen, $context, $priority, $callback_args);

function Jonas_register_meta_boxes()
{
    add_meta_box('movie-1', __(' Custom Jonas Box-Field', 'movie'), 'Jonas_display_callback', 'movie');
}
add_action('add_meta_boxes', 'Jonas_register_meta_boxes');

/**
 * Meta box display callback.
 *
 * @param WP_Post $post Current post object.
 * Allt här inne printas ut
 * Printar ut ett formulär from form.php
 */
function Jonas_display_callback($post)
{
    include plugin_dir_path(__FILE__) . './form.php';
}


function Jonas_save_meta_box($post_id)
{

    //if (defined('DOING_AUTOSAVE') && DOING_AUTOSAVE) return;
    //if ($parent_id = wp_is_post_revision($post_id)) {
    //    $post_id = $parent_id;
    //}

    $fields = [
        'movie_imdb-id' => '',
        'movie_poster' => 'Poster',
        'movie_actors' => 'Actors',
        'movie_director' => 'Director',
        'movie_released' => 'Released',
        'movie_writer' => 'Writer',
        'movie_genres' => 'Genre',
        'movie_boxoffice' => 'BoxOffice',
    ];

    /**
     * Loop through all of our box-fields. If it's the ID. Then take that value and make a request to the api
     * Add variables needed to make the request.
     */

    if (array_key_exists('movie_imdb-id', $_POST)) {
        if (!empty($_POST['movie_imdb-id'])) {
            $apikey = '&apikey=c99cd65f';
            $imdbID = $_POST['movie_imdb-id'];

            $json = file_get_contents("https://www.omdbapi.com/?i=$imdbID$apikey");
            $movieInfo = json_decode($json, true);
            update_post_meta($post_id, 'movie_imdb-id', sanitize_text_field($imdbID));
            if (!isset($movieInfo->Error)) {
                foreach ($fields as $fieldKey => $fieldValue) {
                    if ($fieldKey != 'movie_imdb-id') {
                        update_post_meta($post_id, $fieldKey, $movieInfo[$fieldValue]);
                    }
                }
                wp_update_post([
                    'ID' => $post_id,
                    'post_title' => $movieInfo['Title'],
                    'post_content' => $movieInfo['Plot'],
                ]);
            }
        }
    }
}
add_action('save_post', 'Jonas_save_meta_box');
