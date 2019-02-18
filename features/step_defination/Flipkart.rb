Given(/^I will visit Flipkart URL$/) do
  Flipkart_test.new.navigate()
  #visit 'http://www.flipkart.com'
  #sleep 1
end

Then(/^I will check title of the page should be "(.*?)"$/) do |expexctedtitle|
  Flipkart_test.new.validate_title(expexctedtitle)
  #expect(page.title).to have_content(expexctedtitle)
end

Then(/^I will enter username "(.*?)" And password as "(.*?)"$/) do |username, password|
  Flipkart_test.new.enter_user(username , password)
  #first('._2zrpKA').set(username)
end


Then(/^I will Enter password "(.*?)"$/) do |password|
  Flipkart_test.new.enter_password(password)
  #find(:xpath,"//input[@type='password']").send_keys(password)
end


When(/^I will click "Login"$/) do
  Flipkart_test.new.click_login
  #find(:xpath, "//div[@class='_1avdGP']//button[@type='submit']").click
end

Then(/^Verify the user is "(.*?)" or not$/) do |name|
  Flipkart_test.new.verify_user(name)
  #expect(find(:xpath, "//div[contains(text(),'Kumar Avinash')]").text).to have_content(name)
  #first('_2aUbKa').text == name
end

