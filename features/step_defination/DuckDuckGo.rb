Given("I am on the Google homepage") do
  Google_Test.new.navigate
  #visit 'http://www.google.co.uk'
  sleep 1
  #assert title = "Google"
end

Then(/^I will search for "(.*?)"$/) do |searchText|
  Google_Test.new.Search_text(searchText)
end

Then(/^I can see "(.*?)"$/) do |expectedText|
  Google_Test.new.Verify_text(expectedText)
 expect(page).to have_content(expectedText)
end

Then(/^I will click the about link$/) do
  Google_Test.new.click_about
end