require_relative '../pages/login_page'
require_relative 'spec_helper'

describe 'Login Test' do
  it 'permite loguearse con credenciales válidas' do
    login_page = LoginPage.new(@browser)
    login_page.visit
    login_page.login('tomsmith', 'SuperSecretPassword!')
    expect(login_page.success_message).to include('You logged into a secure area!')
  end
end
