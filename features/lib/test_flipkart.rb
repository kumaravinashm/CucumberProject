require 'capybara/dsl'
require 'rspec'

class Flipkart_test

  include Capybara::DSL
  include RSpec::Matchers

  def navigate
    visit 'http://www.flipkart.com'
    #hello
    sleep 1
  end

  def validate_title(expexctedtitle)
    #assertEquals( page.title, expexctedtitle)
    print page.title + "Avinash"
    expect(page.title).to include expexctedtitle
    #expect(page.title).to have_attributes(expexctedtitle)
  end

  def enter_user(username , password)
    if find(:xpath,"/html/body/div[2]/div/div/div/div/div[2]/div/form/div[2]/button/span") == true
      first('._2zrpKA').set(username)
      find(:xpath, "//div[@class='_1avdGP']//button[@type='submit']").click
      find(:xpath,"//input[@type='password']").send_keys(password)
      find(:xpath, "//div[@class='_1avdGP']//button[@type='submit']").click

    else
      first('._2zrpKA').set(username)
      #find(:xpath, "//div[@class='_1avdGP']//button[@type='submit']").click
      find(:xpath,"//input[@type='password']").send_keys(password)
    end
  end

  def click_login()
    find(:xpath, "//div[@class='_1avdGP']//button[@type='submit']").click
  end

  def verify_user(name)
    expect(find(:xpath, "//div[contains(text(),'Kumar Avinash')]").text).to include name
    #expect(find(:xpath, "//div[contains(text(),'Kumar Avinash')]").text).to have_content(name)
  end
end
