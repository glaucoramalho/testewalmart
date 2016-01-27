# file: page_objects/walmart/page_objects/application.rb
#
module Walmart
  module PageObjects
    class Application
      def initialize
        @pages = {}
        @sections = {}
      end

      def home
        @pages[:home] ||= Walmart::PageObjects::Pages::HomePage.new
      end

      def sign_in
        @pages[:searchresults] ||= Walmart::PageObjects::Pages::SearchResults.new
      end

      def header
        @sections[:header] ||= Walmart::PageObjects::Sections::Header.new
      end
    end
  end
end

