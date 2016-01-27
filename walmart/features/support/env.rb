require 'capybara/cucumber'
require "selenium-webdriver"
require 'site_prism'
require_relative '../../page_objects/all_page_objects.rb'

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 20
Capybara.javascript_driver = :webkit
