require 'rails_helper'

RSpec.describe "guestbooks/edit", :type => :view do
  before(:each) do
    @guestbook = assign(:guestbook, Guestbook.create!(
      :tenant_id => 1,
      :title => "MyString",
      :content => "MyText",
      :status => 1,
      :originator_email => "MyString",
      :originator_name => "MyString"
    ))
  end

  it "renders the edit guestbook form" do
    render

    assert_select "form[action=?][method=?]", guestbook_path(@guestbook), "post" do

      assert_select "input#guestbook_tenant_id[name=?]", "guestbook[tenant_id]"

      assert_select "input#guestbook_title[name=?]", "guestbook[title]"

      assert_select "textarea#guestbook_content[name=?]", "guestbook[content]"

      assert_select "input#guestbook_status[name=?]", "guestbook[status]"

      assert_select "input#guestbook_originator_email[name=?]", "guestbook[originator_email]"

      assert_select "input#guestbook_originator_name[name=?]", "guestbook[originator_name]"
    end
  end
end
