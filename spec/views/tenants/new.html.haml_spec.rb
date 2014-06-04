require 'rails_helper'

RSpec.describe "tenants/new", :type => :view do
  before(:each) do
    assign(:tenant, Tenant.new(
      :name => "MyString"
    ))
  end

  it "renders new tenant form" do
    render

    assert_select "form[action=?][method=?]", tenants_path, "post" do

      assert_select "input#tenant_name[name=?]", "tenant[name]"
    end
  end
end
