require 'selenium-webdriver'

Before do
  caps = Selenium::WebDriver::Remote::Capabilities.chrome('chromeOptions' => {'args' => [ '--user-data-dir=C:\Users\QAAuto\AppData\Local\Google\Chrome\User Data' ]})
  @driver = Selenium::WebDriver.for :chrome, desired_capabilities: caps
  @driver.manage.timeouts.script_timeout = 120
end

After do|scenario|
  image_name = Time.now.to_f.to_s + '.png'
  @driver.save_screenshot(image_name)
  embed image_name, 'image/png', scenario.name
  @driver.quit
end