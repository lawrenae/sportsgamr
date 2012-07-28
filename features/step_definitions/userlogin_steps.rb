include LoginSteps

Given /^That the user "(.*?)" has an account$/ do |username|
  @user = User.create!(:username => username, :password => "xyz")
end

When /^he logs in$/ do
  login(@user.username, @user.password)
end

Then /^he should see "(.*?)"$/ do |message|
  page.should have_content message
end