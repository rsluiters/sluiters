require 'rails_helper'

RSpec.describe "guestbooks/show", :type => :view do
  before(:each) do
    @guestbook = assign(:guestbook, Guestbook.create!(
      :tenant_id => 1,
      :title => "Title",
      :content => "MyText",
      :status => 2,
      :originator_email => "Originator Email",
      :originator_name => "Originator Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Originator Email/)
    expect(rendered).to match(/Originator Name/)
  end
end
