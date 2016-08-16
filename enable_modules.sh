#!/bin/bash

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

drush -y features-import-all

drush -y en defaultcontent
drush -y en appff_content
