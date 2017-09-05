require 'minitest/autorun'
require 'selenium-webdriver'


# class HomeControllerTest < ActionController::TestCase
#  test "should get index" do
#    get :index
#    assert_response :success
#  end


  class DriverTest <MiniTest::Test

    def setup
      #define driver for firefox webdriver
      @driver=Selenium::WebDriver.for(:firefox)
      #maximize the window
      @driver.manage.window.maximize
      #navigate to the test site
      @driver.navigate.to "http:\\localhost:3000"
    end

    def test_navigate
      wait = Selenium::WebDriver::Wait.new(:timeout=>10)
      e = @driver.find_element(:xpath,"/html/body/div[1]/h3").text
      assert e.include?("The universe is the totality")
    end

    def test_modal
      wait = Selenium::WebDriver::Wait.new(:timeout=>10)

    end

    def teardown
      #quit the driver
      @driver.quit
    end
  end

