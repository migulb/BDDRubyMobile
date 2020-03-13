require 'capybara'
require 'capybara/cucumber'
#require 'selenium-webdriver'
require 'site_prism'
require 'appium_console'
require 'appium_lib'

def caps
    { caps: {
      deviceName: "emulator-5554",
      platformName: "Android",

      appPackage: "com.Advantage.aShopping",
      appActivity: "com.Advantage.aShopping.SplashActivity",
      newCommandTimeout: "3600",
    } }
    end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object