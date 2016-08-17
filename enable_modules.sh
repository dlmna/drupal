#!/bin/bash

# required to 1) export 2) import content
drush -y en defaultcontent
drush -y en default_content

drush -y en config_translation

drush -y en features
drush -y en features_ui

drush -y en appff_bundles
drush -y en appff_languages
drush -y en appff_core
drush -y en appff_site
drush -y en appff_user
drush -y en appff_language

drush -y en appff_api
drush -y en appff_accomodation
drush -y en appff_advisory_place
drush -y en appff_article
drush -y en appff_topic
drush -y en appff_menu

# import features from code to instance (db)
drush -y features-import-all

# import default content from appff_content via install script
drush -y pm-uninstall appff_content
drush -y en appff_content

# update database entities
drush -y entity-updates
