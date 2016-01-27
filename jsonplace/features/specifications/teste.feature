Feature: API testing using JSONPlaceHolder website and HTTParty
Scenario: Retrieve posts.
Given I get all existent posts
Then the response code is 200

Given I get a post by ID
Then post is not null

Given I get a post by inexistent ID
Then an error is returned

Scenario: Create new post.
Given I create a new post
Then the post is successfully created

Scenario: Delete a post.
Given I delete an existent post
Then the post is successfully deleted

Given I delete an inexistent post
Then an error is returned

Scenario: Modify a post.
Given I modify a post
Then the post is modified
