module LoginSteps
  def login(username, password)
    visit('/')
    fill_in('User name', :with => username)
    fill_in('Password', :with => password)
    click_button('Log in')
  end
end
