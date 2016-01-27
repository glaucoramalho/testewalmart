require 'capybara/cucumber'
require "selenium-webdriver"
require 'site_prism'
require 'httparty'
require 'oj'
Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 20
Capybara.javascript_driver = :webkit
