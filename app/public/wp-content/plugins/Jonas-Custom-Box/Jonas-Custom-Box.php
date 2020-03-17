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
function cptui_register_my_cpts_movie()
{

	/**
	 * Post Type: Movies.
	 */

	$labels = [
		"name" => __("Movies", "understrap-child"),
		"singular_name" => __("Movie", "understrap-child"),
		"menu_name" => __("My Movies", "understrap-child"),
		"all_items" => __("All Movies", "understrap-child"),
		"add_new" => __("Add new", "understrap-child"),
		"add_new_item" => __("Add new Movie", "understrap-child"),
		"edit_item" => __("Edit Movie", "understrap-child"),
		"new_item" => __("New Movie", "understrap-child"),
		"view_item" => __("View Movie", "understrap-child"),
		"view_items" => __("View Movies", "understrap-child"),
		"search_items" => __("Search Movies", "understrap-child"),
		"not_found" => __("No Movies found", "understrap-child"),
		"not_found_in_trash" => __("No Movies found in trash", "understrap-child"),
		"parent" => __("Parent Movie:", "understrap-child"),
		"featured_image" => __("Featured image for this Movie", "understrap-child"),
		"set_featured_image" => __("Set featured image for this Movie", "understrap-child"),
		"remove_featured_image" => __("Remove featured image for this Movie", "understrap-child"),
		"use_featured_image" => __("Use as featured image for this Movie", "understrap-child"),
		"archives" => __("Movie archives", "understrap-child"),
		"insert_into_item" => __("Insert into Movie", "understrap-child"),
		"uploaded_to_this_item" => __("Upload to this Movie", "understrap-child"),
		"filter_items_list" => __("Filter Movies list", "understrap-child"),
		"items_list_navigation" => __("Movies list navigation", "understrap-child"),
		"items_list" => __("Movies list", "understrap-child"),
		"attributes" => __("Movies attributes", "understrap-child"),
		"name_admin_bar" => __("Movie", "understrap-child"),
		"item_published" => __("Movie published", "understrap-child"),
		"item_published_privately" => __("Movie published privately.", "understrap-child"),
		"item_reverted_to_draft" => __("Movie reverted to draft.", "understrap-child"),
		"item_scheduled" => __("Movie scheduled", "understrap-child"),
		"item_updated" => __("Movie updated.", "understrap-child"),
		"parent_item_colon" => __("Parent Movie:", "understrap-child"),
	];

	$args = [
		"label" => __("Movies", "understrap-child"),
		"labels" => $labels,
		"description" => "Information about a movie",
		"public" => true,
		"publicly_queryable" => true,
		"show_ui" => true,
		"show_in_rest" => true,
		"rest_base" => "",
		"rest_controller_class" => "WP_REST_Posts_Controller",
		"has_archive" => true,
		"show_in_menu" => true,
		"show_in_nav_menus" => true,
		"delete_with_user" => false,
		"exclude_from_search" => false,
		"capability_type" => "post",
		"map_meta_cap" => true,
		"hierarchical" => false,
		"rewrite" => ["slug" => "movie", "with_front" => true],
		"query_var" => true,
		"supports" => ["title", "editor", "thumbnail"],
	];

	register_post_type("movie", $args);
}

add_action('init', 'cptui_register_my_cpts_movie');


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
			$imdbID = sanitize_text_field($_POST['movie_imdb-id']);

			$json = file_get_contents("https://www.omdbapi.com/?i=$imdbID$apikey");
			$movieInfo = json_decode($json, true);

			update_post_meta($post_id, 'movie_imdb-id', sanitize_text_field($imdbID));

			if (!isset($movieInfo->Error)) {
				foreach ($fields as $fieldKey => $fieldValue) {
					if ($fieldKey != 'movie_imdb-id') {
						update_post_meta($post_id, $fieldKey, sanitize_text_field($movieInfo[$fieldValue]));
					}
				}
				wp_update_post([
					'ID' => $post_id,
					'post_title' => $movieInfo['Title'],
					'post_content' => $movieInfo['Plot'],
				]);
			}
		} else {
			foreach ($fields as $fieldKey => $fieldValue) {
				update_post_meta($post_id, $fieldKey, sanitize_text_field($_POST[$fieldKey]));
			}
		}
		//wp_update_post([
		//	'ID' => $post_id,
		//	'post_title' => $_POST['Title'],
		//	'post_content' => $_POST['Content'],
		//]);
	}
}
add_action('save_post', 'Jonas_save_meta_box');
