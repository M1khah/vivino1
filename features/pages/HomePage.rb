class Homepage
  include PageObject

    text_field(:search_box, name: "q")
    div(:search_results, id: "search")


    def visit_vivino_site
      @browser.goto 'https://www.vivino.com'
    end

    def enter_search_keyword(search_key)
      self.search_box = search_key
    end

    def click_search_button
      text_field.click
    end

    def search_results_present?(search_key)
      search_results.include?(search_key)
    end

    def close
      @browser.close
    end
end
