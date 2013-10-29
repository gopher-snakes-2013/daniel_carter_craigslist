require 'spec_helper'

describe User do
  it "should be able to write to a DB a name, email, and password" do
    user = User.create!(name: "Carter", email: "Carter@dbc.com", password: "dolphins")
    found_user = User.last

    expect(found_user.name).to eql("Carter")
  end
end