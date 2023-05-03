require 'watir'
require 'page-object'
require 'webdrivers'

Before do
  @browser = Watir::Browser.new :chrome
  @browser.window.maximize
end
