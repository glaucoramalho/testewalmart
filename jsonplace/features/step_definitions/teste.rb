Given(/^I get all existent posts$/) do
  @response = HTTParty.get(@jsonplaceURL)
end

Then(/^the response code is 200$/) do
  expect(@response.code).to be(200)
end

Given(/^I get a post by ID$/) do
  @response = HTTParty.get(@jsonplaceURL)
  parsed = JSON.parse(@response.body)
  randomPost = rand(parsed.size-1)
  @response = HTTParty.get(@jsonplaceURL,:query => {:id => randomPost})
end

Then(/^post is not null$/) do
  expect(@response.code).to be(200)
end

Given(/^I get a post by inexistent ID$/) do
  @response = HTTParty.get(@jsonplaceURL,:query => {:id =>'aaaa' })
end

Then(/^an error is returned$/) do
  expect(@response.code).to be(404)
end

Given(/^I create a new post$/) do
  myBody = { body: 'Testes do Walmart' }
  myTitle = { title: 'Walmart' }
  myId = { userId: 1 }	
  @response = HTTParty.post(@jsonplaceURL, :title => myTitle, :body => myBody, :userId => myId)
end

Then(/^the post is successfully created$/) do
  # 201 = Created
  expect(@response.code).to be(201)
end

Given(/^I delete an existent post$/) do
  @response=HTTParty.delete(@jsonplaceURL+"/10")
end

Then(/^the post is successfully deleted$/) do
  expect(@response.code).to be(200)
end

Given(/^I delete an inexistent post$/) do
  @response=HTTParty.delete(@jsonplaceURL+"/10000")
end

Then(/^a 404 error is returned$/)do
  expect(@response.code).to be(404)
end

Given(/^I modify a post$/) do
  myTitle = { title: 'Walmart' }
  myId = { userId: 1 }
  postId = { id: 1 }
  @response = HTTParty.put(@jsonplaceURL+"/1", :title => myTitle, :userId => myId)
end

Then(/^the post is modified$/) do
  expect(@response.code).to be(200)
end
