require 'rspec'

Then(/^I see page with text (.*)$/) do |text|
  text = text.to_s.downcase
  expect(@driver.find_element(:tag_name => 'body').text.to_s.downcase).to include(text)
end

When(/^user open contacts$/) do
  @driver.find_element(:css, "HEADER#oneHeader>DIV.bBottom>DIV.slds-context-bar.oneGlobalNav>DIV.slds-context-bar__secondary.navCenter>NAV.slds-grid.slds-has-flexi-truncate.oneAppNavBar>UL.slds-grid.slds-has-flexi-truncate>LI.slds-context-bar__item.slds-shrink-none.oneAppNavBarItem>A.slds-context-bar__label-action[title='Contacts']").click
  sleep(5)
end

Given(/^user login to salesforce with (.*) and (.*)$/) do |username, password|
  @driver.navigate.to 'https://login.salesforce.com/'
  @driver.find_element(:css, 'INPUT#username').send_keys username
  @driver.find_element(:css, 'INPUT#password').send_keys password
  @driver.find_element(:css, 'INPUT#Login').click
  sleep(5)
  @driver.find_element(:css, "FORM#editPage>P.small>A[href='/home/home.jsp']").click
  sleep(10)
end