require 'spec_helper'

# run the tests in me from bash/Terminal using:
# $ bundle exec rspec spec/requests/static_pages_spec.rb --drb

# run the tests in me from Sublime Text 2 using Command+Shift+R to run one test
# use Command+Shift+T to run all tests in this file
# use Command+Shift+E to run the "last" test, i.e., the previously run test

# tests for Home page ported to terse style leveraging spec/support/utilities.rb

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path } 

    it { should have_selector('h1',    text: 'iThomas') }
    it { should have_selector('title', text: full_title('')) }
  end

  describe "Help page" do

    it "should have the h1 'Help'" do
      visit help_path
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
      visit help_path
      page.should have_selector('title',
                        :text => "iThomas | Help")
    end
  end

  describe "About page" do

    it "should have the h1 'About Us'" do
      visit about_path
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
      visit about_path
      page.should have_selector('title',
                    :text => "iThomas | About Us")
    end
  end

describe "Contact page" do

    it "should have the h1 'Contact Us'" do
      visit contact_path
      page.should have_selector('h1', :text => 'Contact Us')
    end

    it "should have the title 'Contact Us'" do
      visit contact_path
      page.should have_selector('title',
                    :text => "iThomas | Contact Us")
    end
  end

end