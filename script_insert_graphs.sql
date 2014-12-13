insert into feed_free_votes_domande (id, nome) values (5, 'graph3');
INSERT INTO feed_free_votes_risposte (id, nome, colore, domanda) values (9, 'Workload', '#9ead1b', 5), ('10', 'Grade', '#758619', '5'), ('11', 'Interesting','#a0f822', '5');


insert into feed_modules (id,asset_id,title,note,content,ordering,position,
checked_out,
checked_out_time,
publish_up,
publish_down,
published,
module,
access,
showtitle,
params,
client_id,
language) values (1025,99, 'freevotes - all3', '', '', '6', 'position-7', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_freevotes', '1', '1', '{\"domanda\":\"5\",\"range_da\":\"0\",\"range_a\":\"5\",\"img_vuoto\":\"modules\\/mod_freevotes\\/images\\/vuoto.png\",\"img_pieno\":\"modules\\/mod_freevotes\\/images\\/pieno.png\",\"modifica_voti\":\"0\",\"aggiungi_risposte\":\"0\",\"view_graph\":\"1\",\"type_graph\":\"column\",\"label\":\"0\",\"legend\":\"0\",\"height_modulo\":\"250\",\"width_wait\":\"200\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"Beez3-beezDivision\"}', '0', '*');


change -> id, title, 
v tova smenqme domainda : ID (id na feed_free_votes_domande.id)
'{\"domanda\":\"5\",\"range_da\":\"0\",\"range_a\":\"5\",\"img_vuoto\":\"modules\\/mod_freevotes\\/images\\/vuoto.png\",\"img_pieno\":\"modules\\/mod_freevotes\\/images\\/pieno.png\",\"modifica_voti\":\"0\",\"aggiungi_risposte\":\"0\",\"view_graph\":\"1\",\"type_graph\":\"column\",\"label\":\"0\",\"legend\":\"0\",\"height_modulo\":\"250\",\"width_wait\":\"200\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"Beez3-beezDivision\"}'

===========================================

insert into feed_content(id,
asset_id,
title,
alias,
introtext,
`fulltext`,
state,
catid,
created,
created_by,
created_by_alias,
modified,
modified_by,
checked_out,
checked_out_time,
publish_up,
publish_down,
images,
urls,
attribs,
version,
ordering,
metakey,
metadesc,
access,
hits,
metadata,
featured,
language,
xreference) values('1025', '38', 'Business information systems-1025', 'welcome-to-your-blog-1025', '<p>This is a sample blog posting.</p>\r\n<p>If you log in to the site (the Author Login link is on the very bottom of this page) you will be able to edit it and all of the other existing articles. You will also be able to create a new article and make other changes to the site.</p>\r\n<p>As you add and modify articles you will see how your site changes and also how you can customise it in various ways.</p>\r\n<p>Go ahead, you can\'t break it.</p>\r\n<p> </p>\r\n<p>{module [1025]}</p>\r\n<p>{jcomments on}</p>\r\n<p> </p>', '', '1', '9', '2011-01-05 00:00:01', '474', 'Joomla', '2014-12-13 15:19:56', '474', '0', '0000-00-00 00:00:00', '2012-01-05 16:55:36', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', '42', '5', '', '', '1', '182', '{\"robots\":\"\",\"author\":\
"\",\"rights\":\"\",\"xreference\":\"\"}', '0', '*', '');

promenqme - id, title+id, alias+id - vsichko drugo moje da e ednakvo

