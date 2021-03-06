module ApplicationHelper
    def full_title(page_title = '')
        base_title = "CS 232 Ruby on Rails Development @ CCSF"
        base_title = "Ruby on Rails Tutorial Sample App"
        if page_title.empty?
            base_title
        else
            page_title + " | " + base_title
        end
    end
end
