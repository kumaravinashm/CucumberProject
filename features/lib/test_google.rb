require 'capybara/dsl'
require 'rspec'

class Google_Test

  include Capybara::DSL
  include RSpec::Matchers

  def navigate
    visit 'http://www.google.co.uk'
    sleep 1
  end

  def Search_text(searchText)
    fill_in 'q' , with: searchText
  end

  def Verify_text(expectedText)
    sleep 3
    expect(page.text).to include expectedText
  end

  def click_about
    find(:xpath, "//a[contains(text(),'Images')]").click
  end
end