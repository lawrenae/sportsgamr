Given /^That the user "(.*?)" has an account$/ do |username|
  @user = User.create!(:name => username, :password => 'xyz')
end

When /^he logs in$/ do
  visit('/login')
  fill_in('User name', :with => @user.name)
  fill_in('Password', :with => @user.password)
  click_button('Log in')
end

Then /^he should see "(.*?)"$/ do |message|
  pending
end