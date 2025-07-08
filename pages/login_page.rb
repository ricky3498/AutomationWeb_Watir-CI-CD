class LoginPage
  def initialize(browser)
    @browser = browser
  end

  def visit
    @browser.goto 'https://the-internet.herokuapp.com/login'
  end

  def login(username, password)
    @browser.text_field(id: 'username').set username
    @browser.text_field(id: 'password').set password
    @browser.button(text: 'Login').click
  end

  def success_message
    @browser.div(id: 'flash').text
  end
end
