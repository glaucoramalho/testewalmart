Given(/^Access Walmart$/)do
  @app.home.load
end

When(/^search for tv$/)do
  @app.home.header.search_field.set 'tv'
  @app.home.header.search_button.click
end

And(/^tvs retrieved from results$/)do
  expect @app.searchresults.shelftracking.has_products?
end

And(/^tv selected from results equals tv from product page$/)do
  @total = @app.searchresults.shelftracking.products.size
  @selectedProduct = @app.searchresults.shelftracking.products.at(rand(@total))
  @selectedProductId = @selectedProduct['data-productid']
  @selectedProduct.click
  @cartProductId = @app.productpage.buyBox.buyButton['data-product']
  expect(@selectedProductId == @cartProductId)
end

And(/^tv from kart equals tv from product page$/)do
  @app.productpage.buyBox.buyButton.click
  @app.warrantypage.continue.click
  @app.productpage.kartButton.click
  @kartPageLink = @app.kartpage.linkDescription['href']
  expect(@kartPageLink).to have_text(@cartProductId) 
end

Then(/^I Login$/)do
  @app.kartpage.login.click
  within_frame 'iframeLogin' do
    @app.loginpage.user.set ENV['USER']
    @app.loginpage.password.set ENV['PASSWORD']
    @app.loginpage.login.click
  end
end
