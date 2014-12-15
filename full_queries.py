import sys
import csv
with open('/home/ivana/Documents/scrape.csv') as csvfile:
     reader = csv.DictReader(csvfile)
     graph_no = 10
     vote_no = 10
     id = 1025
     asset_id = 110
     asset_id2 = 50
     for row in reader:

        print(row['course-full'])
        title = row['course-full']
        course_full = row['course-full']
        courde_code = row['courde-code']
        course_title = row['course-title']
        course_href = row['course-href']


        print " insert into feed_free_votes_domande (id, nome) values (", graph_no, ", \'", course_title , "\');"
        #graph_no = graph_no + 1 

        print "INSERT INTO feed_free_votes_risposte (id, nome, colore, domanda) values (" , vote_no , ", \'Workload\', \'#9ead1b\'," , graph_no , "), (" , vote_no + 1 ,", \'Grade\', \'#758619\', " , graph_no , "), (" , vote_no + 2 , ", \'Interesting\',\'#a0f822\'," , graph_no , ");"
        vote_no = vote_no + 3

        print "insert into feed_modules (id,title,note,content,ordering,position," +\
                "checked_out," +\
                "checked_out_time," +\
                "publish_up," +\
                "publish_down," +\
                "published," +\
                "module," +\
                "access," +\
                "showtitle," +\
                "params," +\
                "client_id," +\
                "language) values " +\
                "(" ,id , ", \'" , course_title , "\', '', '', '1', 'left', '474', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_freevotes', '1', '0', '{\"domanda\":\"" , graph_no , "\",\"range_da\":\"0\",\"range_a\":\"5\",\"img_vuoto\":\"modules\\/mod_freevotes\\/images\\/vuoto.png\",\"img_pieno\":\"modules\\/mod_freevotes\\/images\\/pieno.png\",\"modifica_voti\":\"1\",\"aggiungi_risposte\":\"0\",\"view_graph\":\"1\",\"type_graph\":\"pie\",\"label\":\"1\",\"legend\":\"0\",\"height_modulo\":\"250\",\"width_wait\":\"200\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"Baseline-YJsground\"}\', \'0\', \'*\');"

        graph_no = graph_no + 1
	asset_id = asset_id + 1

        print "insert into feed_content(id," +\
        "asset_id," +\
        "title," +\
        "alias," +\
        "introtext," +\
        "`fulltext`," +\
        "state," +\
        "catid," +\
        "created," +\
        "created_by," +\
        "created_by_alias," +\
        "modified," +\
        "modified_by," +\
        "checked_out," +\
        "checked_out_time," +\
        "publish_up," +\
        "publish_down," +\
        "images," +\
        "urls," +\
        "attribs," +\
        "version," +\
        "ordering," +\
        "metakey," +\
        "metadesc," +\
        "access," +\
        "hits," +\
        "metadata," +\
        "featured," +\
        "language," +\
        "xreference) " +\
        "values(\'" , id , "\', " , asset_id2, ", \'" , title , "\', '" , courde_code + '-' + str(id), "','<table style=\"height: 50px;\" width=\"969\" cellpadding=\"10\"><tbody><tr><td style=\"text-align: left; vertical-align: top; padding: 2;\" rowspan=\"2\" width=\"530\">{modules [" , id , " | xhtml]}</td><td style=\"text-align: left; vertical-align: top; padding: 2;\" rowspan=\"2\" width=\"439\"><p>Course code : ",courde_code , "</p><br><p>Course title : ",course_title , "</p><br><p> Course link : <a href=\"",course_href,"\">",course_href, "</a> </p></td></tr></tbody></table><p>{jcomments on}</p>', '', '1', '9', '2011-01-05 00:00:01', '474', 'Joomla', '2014-12-13 15:19:56', '474', '0', '0000-00-00 00:00:00', '2012-01-05 16:55:36', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', '42', '5', '', '', '1', '182', '{\"robots\":\"\",\"author\":\
\"\",\"rights\":\"\",\"xreference\":\"\"}', '0', '*', '');"

        id = id + 1
	asset_id2 = asset_id2 + 1

