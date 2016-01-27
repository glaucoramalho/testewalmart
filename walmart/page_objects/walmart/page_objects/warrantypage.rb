# define our site's page
module Walmart
  module PageObjects
    module Pages
      class WarrantyPage < SitePrism::Page
        element :continue,"button[id='navegaCarrinho']"
      end
    end
  end
end
