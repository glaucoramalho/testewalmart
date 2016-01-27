# define our site's page
module Walmart
  module PageObjects
    module Pages
      class BuyBox < SitePrism::Section
        element :buyButton,"button:nth-child(1)"
      end
      class ProductPage < SitePrism::Page
        section :buyBox,BuyBox,"div.buy-button-wrapper:nth-child(5)"
        element :kartButton,".cart-icon"
      end
    end
  end
end
