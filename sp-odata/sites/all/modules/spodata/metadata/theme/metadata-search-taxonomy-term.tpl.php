<?php

/**
 * @file
 * Custom theme implementation to display a term.
 *
 * Available variables:
 * - $name: the (sanitized) name of the term.
 * - $content: An array of items for the content of the term (fields and
 *   description). Use render($content) to print them all, or print a subset
 *   such as render($content['field_example']). Use
 *   hide($content['field_example']) to temporarily suppress the printing of a
 *   given element.
 * - $term_url: Direct url of the current term.
 * - $term_name: Name of the current term.
 * - $classes: String of classes that can be used to style contextually through
 *   CSS. It can be manipulated through the variable $classes_array from
 *   preprocess functions. The default values can be one or more of the following:
 *   - taxonomy-term: The current template type, i.e., "theming hook".
 *   - vocabulary-[vocabulary-name]: The vocabulary to which the term belongs to.
 *     For example, if the term is a "Tag" it would result in "vocabulary-tag".
 *
 * Other variables:
 * - $term: Full term object. Contains data that may not be safe.
 * - $view_mode: View mode, e.g. 'full', 'teaser'...
 * - $page: Flag for the full page state.
 * - $classes_array: Array of html class attribute values. It is flattened
 *   into a string within the variable $classes.
 * - $zebra: Outputs either "even" or "odd". Useful for zebra striping in
 *   teaser listings.
 * - $id: Position of the term. Increments each time it's output.
 * - $is_front: Flags true when presented in the front page.
 * - $logged_in: Flags true when the current user is a logged-in member.
 * - $is_admin: Flags true when the current user is an administrator.
 *
 * @see template_preprocess()
 * @see template_preprocess_taxonomy_term()
 * @see template_process()
 */
$base_url = '?q=taxonomy/term/';
$title = t('Click per aggiungere il tag ai filtri');
$themed_separator_img = theme_image(
		array(
				'path' => drupal_get_path('module', 'metadata') . '/img/tags-separator.png',
				'alt' => t('child tag'),
				'attributes' => '',
		));

if(isset($terms) && count($terms)>0)
{ ?>
<div class="taxonomy-result-term">
	
	<?php 
// 		$first = true;
		foreach($terms as $term) :
			$tid = $term['taxonomy_term']->tid;
			$tname = $term['taxonomy_term']->name;
			$voc = str_replace('_', '-', $term['taxonomy_term']->vocabulary_machine_name);
		?>	
			<span>
				<a title="<?php echo $title;?>" rel="nofollow" class="action-filter" data-input="<?php echo $tid; ?>" 
						data-vocabulary="<?php echo $voc; ?>" href="<?php echo $base_url . $tid; ?>"> 
					<?php echo $tname; ?>
				</a>
			</span>
	<?php 
		endforeach;
	?>
</div>
<?php 
}
