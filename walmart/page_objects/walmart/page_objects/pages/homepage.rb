# define our site's page
module Walmart
  module PageObjects
    module Pages
      class Header < SitePrism::Section
        element :search_field, "input[id='suggestion-search']"
        element :search_button, "button[class='search-icon']"
      end 
      class HomePage < SitePrism::Page
        set_url "http://www.walmart.com.br"
        section :header,Header,"#site-topbar"
      end
    end
  end
end
