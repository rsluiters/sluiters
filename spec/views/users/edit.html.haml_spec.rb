require 'rails_helper'

RSpec.describe "users/edit", :type => :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :email => "MyString",
      :password_encrypted => "MyString",
      :salt => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_email[name=?]", "user[email]"

      assert_select "input#user_password_encrypted[name=?]", "user[password_encrypted]"

      assert_select "input#user_salt[name=?]", "user[salt]"
    end
  end
end
