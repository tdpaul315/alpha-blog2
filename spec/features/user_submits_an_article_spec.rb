require 'rails_helper'


RSpec.feature "user submits an article" do
    scenario "user sees the submitted article" do
        article_title = "I love pizza"
        article_description = "I really really love pizza!!!"
        article_link = "http://localhost:3000/articles/1"

        visit '/'
        click_on "Create Article"

        fill_in "article title", with: article_title
        fill_in "article description", with: article_description
        click_on "Create Article"

        expect(page).to have_link article_title, href: article_link
    end 
end 