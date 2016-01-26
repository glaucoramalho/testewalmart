# define our site's page
module Walmart
  module PageObjects
    module Pages
      class LoginPage < SitePrism::Page
        element :user,"input[id='signinField']"
        element :password,"input[id='password']"
        element :login,"button[id='signinButtonSend']"
      end
    end
  end
end

