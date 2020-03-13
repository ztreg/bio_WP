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
    if (defined('DOING_AUTOSAVE') && DOING_AUTOSAVE) return;
    if ($parent_id = wp_is_post_revision($post_id)) {
        $post_id = $parent_id;
    }
    $fields = [
        'movie_imdb-id',
        'movie_actors',
        'movie_director',
        'movie_genres',
        'movie_budget',
    ];



    foreach ($fields as $field) {
        if ($field == 'movie_imdb-id') {
            $json = file_get_contents('http://www.omdbapi.com/tt0068646');
            $movieInfo = json_decode($json);
     
            update_post_meta($post_id, $field, sanitize_text_field($_POST[$field] . count($movieInfo)));
        } else {
            foreach ($movieInfo as $movieRow) {
                if (array_key_exists($field, $_POST)) {
                    update_post_meta($post_id, $field, sanitize_text_field($_POST[$field] . 'hej' . $movieRow));
                    //update_post_meta( $post_id, $field, sanitize_text_field( $_POST[$field] ) );
                }
            }
        }
    }
}
add_action('save_post', 'Jonas_save_meta_box');
