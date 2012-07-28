Given /^a logged in user$/ do
  @user = User.create!(:username => "Austin", :password => "xyz")
  login(@user.username, @user.password)
end

When /^he visits the dashboard$/ do
  visit "/home"
end

Then /^he should see be able to see his current account balance$/ do
  page.find_by_id("account_balance")
end