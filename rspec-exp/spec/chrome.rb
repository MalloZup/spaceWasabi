#! /usr/bin/ruby

require "rspec"
require "selenium-webdriver"

# RSPEC:
# official doc : https://relishapp.com/rspec

# SELENIUM calls:
#https://github.com/SeleniumHQ/selenium/wiki/Ruby-Bindings

class Chrome
  def initialize()
    @SERVER = "http://headref-suma3pg.mgr.suse.de/"
    browser = Selenium::WebDriver.for :chrome
    browser.get @SERVER
    p browser.current_url
  end
  def visit
     return 0
  end	  
end

describe Chrome do
## https://github.com/SeleniumHQ/selenium/wiki/Ruby-Bindings
    describe "#visit" do
      client = Chrome.new
      it "returns nothing but ok" do
  	    expect(client.visit).to eql(0)
       end
    end
end
