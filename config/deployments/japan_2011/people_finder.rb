# 
# Sets up globally accessible configuration for the application
# @author E. M. Maximilien
# Copyright (C) IBM Corp., 2011
# License under the MIT license, found here: http://goo.gl/s9uhf
#

require 'yaml'

CREDENTIALS = Yaml.load_file File.dirname(__FILE__) + '/credentials.yml' unless defined? CREDENTIALS

APP_NAME = 'Japan People Finder' unless defined? APP_NAME
DISASTER_COUTRY_NAME = 'Japan' unless defined? DISASTER_COUNTRY_NAME
DISASTER_DATE = 'March 11, 2011' unless defined? DISASTER_DATE

BITLY_URL = 'http://bit.ly/esKvbb' unless defined? BITLY_URL
VERSION_STRING = '1.1.1' unless defined? VERSION_STRING
CANVAS_NAME = 'japan_people_finder' unless defined? CANVAS_NAME

DEFAULT_HOSTNAME_STRING = 'vhost0168.dc1.co.us.compute.ihost.com' unless defined? DEFAULT_HOSTNAME_STRING
DEFAULT_PORT_STRING = '80' unless defined? DEFAULT_PORT_STRING

TWITTER_TAG = 'Japan' unless defined? TWITTER_TAG

TWITTER_OAUTH_INFO = {:consumer_key => CREDENTIALS['production']['twitter']['consumer_key'],
                      :consumer_secret => CREDENTIALS['production']['twitter']['consumer_secret'],
                      :request_token_url => 'http://twitter.com/oauth/request_token',
                      :access_token_url => 'http://twitter.com/oauth/access_token',
                      :authorize_url => 'http://twitter.com/oauth/authorize'} unless defined? TWITTER_OAUTH_INFO

TWITTER_HTTP_INFO = {:username => CREDENTIALS['production']['twitter']['username'], 
                     :password => CREDENTIALS['production']['twitter']['password']} unless defined? TWITTER_HTTP_INFO

TWITTER_OAUTH_YML = 'lib/twitter/oauth.dev.yml' unless defined? TWITTER_OAUTH_YML

BITLY_INFO = {:login => CREDENTIALS['production']['bitly']['login'], 
              :api_key => CREDENTIALS['production']['twitter']['api_key']} unless defined? BITLY_INFO

GOOGLE_MAPS_API_KEY = CREDENTIALS['production']['google_maps']['api_key'] unless defined? GOOGLE_MAPS_API_KEY

GOOGLE_DB_AUTH_KEY = CREDENTIALS['production']['google_db']['auth_key'] unless defined? GOOGLE_DB_AUTH_KEY
GOOGLE_DB_API_URL = CREDENTIALS['production']['google_db']['api_url'] unless defined? GOOGLE_DB_API_URL

DISABLE_TWITTER = true unless defined? DISABLE_TWITTER

SURVIVORS_FEEDBURNER_URL = "http://feeds.feedburner.com/JapanPeopleFinder-SurvivorsAtomFeed" unless defined? SURVIVORS_FEEDBURNER_URL
SURVIVORS_AND_VICTIMS_FEEDBURNER_URL = "http://feeds.feedburner.com/JapanPeopleFinder-SurvivorsAndVictimsUpdatesAtomFeed" unless defined? SURVIVORS_AND_VICTIMS_FEEDBURNER_URL
SURVIVOR_UPDATES_MISSING_FEEDBURNER_URL = "http://feeds.feedburner.com/JapanPeopleFinder-MissingUpdatesAtomFeed" unless defined? SURVIVOR_UPDATES_MISSING_FEEDBURNER_URL
SURVIVOR_UPDATES_OK_FEEDBURNER_URL = "http://feeds.feedburner.com/JapanPeopleFinder-OkUpdatesAtomFeed" unless defined? SURVIVOR_UPDATES_OK_FEEDBURNER_URL
SURVIVOR_UPDATES_INJURED_FEEDBURNER_URL = "http://feeds.feedburner.com/JapanPeopleFinder-InjuredUpdatesAtomFeed" unless defined? SURVIVOR_UPDATES_INJURED_FEEDBURNER_URL
SURVIVOR_UPDATES_OTHER_FEEDBURNER_URL = "http://feeds.feedburner.com/JapanPeopleFinder-OtherUpdatesAtomFeed" unless defined? SURVIVOR_UPDATES_OTHER_FEEDBURNER_URL