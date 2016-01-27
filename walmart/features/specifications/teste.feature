Feature: Insert Product on kart.

Scenario: Search Product.

  Given Access Walmart
  When search for tv
  And tvs retrieved from results
  And tv selected from results equals tv from product page
  And tv from kart equals tv from product page
  Then I Login
