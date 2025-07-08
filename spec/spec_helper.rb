require 'watir'
require 'webdrivers'
require 'rspec_html_formatter'

RSpec.configure do |config|
  config.before(:each) do
    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument('--headless')
    options.add_argument('--no-sandbox')
    options.add_argument('--disable-dev-shm-usage')
    @browser = Watir::Browser.new :chrome, options: options
    @browser.window.resize_to(1920, 1080)
  end

  config.after(:each) do
    @browser.quit
  end
end
