# define search results
module Walmart
  module PageObjects
    module Pages
      class ShelfTracking < SitePrism::Section
        elements :products,"ul.shelf-itens li.shelf-item"
      end
      class SearchResults < SitePrism::Page
        section :shelftracking,ShelfTracking,".shelf-tracking"
      end
    end
  end
end
