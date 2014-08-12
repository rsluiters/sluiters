require 'rails_helper'

RSpec.describe "guestbooks/index", :type => :view do
  before(:each) do
    assign(:guestbooks, [
      Guestbook.create!(
        :tenant_id => 1,
        :title => "Title",
        :content => "MyText",
        :status => 2,
        :originator_email => "Originator Email",
        :originator_name => "Originator Name"
      ),
      Guestbook.create!(
        :tenant_id => 1,
        :title => "Title",
        :content => "MyText",
        :status => 2,
        :originator_email => "Originator Email",
        :originator_name => "Originator Name"
      )
    ])
  end

  it "renders a list of guestbooks" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Originator Email".to_s, :count => 2
    assert_select "tr>td", :text => "Originator Name".to_s, :count => 2
  end
end
