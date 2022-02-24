require 'rails_helper'

RSpec.describe User, type: :model do
  
  it "user is valid" do
    user = User.new(
      name:"Joao", 
      email:"joao@teste.com", 
      phone: "12412412412",
      password: "123qwe",
      avatar: fixture_file_upload(Rails.root.join("spec", "support", "test-avatar.png"), "image/png")
    )

    expect(user).to be_valid

  end

  it "user is not valid" do

    user = User.new(
      name:"Joao", 
      email:"joao@teste.com", 
      phone: "12412412412",
      password: "123qwe"
    )

    expect(user).to_not be_valid

  end

  it "user should have a name" do

    user = User.new(
      email:"joao@teste.com", 
      phone: "12412412412",
      password: "123qwe",
      avatar: fixture_file_upload(Rails.root.join("spec", "support", "test-avatar.png"), "image/png")
    )

    expect(user).to_not be_valid

  end

end