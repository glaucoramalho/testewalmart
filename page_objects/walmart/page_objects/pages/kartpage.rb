# define our site's page
module Walmart
  module PageObjects
    module Pages
      class KartPage < SitePrism::Page
        element :linkDescription,".link-description"
        element :login,"#topbar-login-link"
      end
    end
  end
end
