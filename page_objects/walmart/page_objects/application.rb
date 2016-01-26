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

      def searchresults
        @pages[:searchresults] ||= Walmart::PageObjects::Pages::SearchResults.new
      end
      
      def warrantypage
        @pages[:warrantypage] ||= Walmart::PageObjects::Pages::WarrantyPage.new
      end
      
      def productpage
        @pages[:productpage] ||= Walmart::PageObjects::Pages::ProductPage.new
      end
      
      def kartpage
        @pages[:kartpage] ||= Walmart::PageObjects::Pages::KartPage.new
      end

      def loginpage
        @pages[:loginpage] ||= Walmart::PageObjects::Pages::LoginPage.new
      end
    end
  end
end

