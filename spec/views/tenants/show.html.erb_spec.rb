require 'rails_helper'

RSpec.describe "tenants/show", :type => :view do
  before(:each) do
    @tenant = assign(:tenant, Tenant.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
