require 'spec_helper'

describe "Static Pages" do
  describe "Home Page" do
    it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      # get static_pages_index_path
      # response.status.should be(200)
      visit '/static_pages/home'
      # page.should have_content('Sample App')
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should haver the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => 'Ruby on Rails Tutorial Sample App | Home')
    end
  end

  describe "help pages" do
      it "shoul have the content 'Help'" do
        visit '/static_pages/help'
        # page.should have_content('Help')
        page.should have_selector('h1', :text => 'Help')
      end

      it "should have the title 'Help'" do
        visit '/static_pages/help'
        page.should have_selector('title', :text => 'Ruby on Rails Tutorial Sample App | Help')
      end
  end

  describe "About page" do
    it "should have the content 'About'" do
      visit '/static_pages/about'
      page.should have_content('About')
    end

    it "should have the title 'About'" do
        visit '/static_pages/about'
        page.should have_selector('title', :text => 'Ruby on Rails Tutorial Sample App | About')
    end
  end
end
