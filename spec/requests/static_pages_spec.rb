require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_content('Sample App')
      #response.status.should be(200)
    end
    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "| Home")
    end
  end
  
  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title',
                        :text => "| Help")
    end
  end
  
  describe "About page" do
    it "should have the content ('About')" do
      visit '/static_pages/about'
      page.should have_content('About')
    end
    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title',
                        :text => "| About")
    end
  end
end
