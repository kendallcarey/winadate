require 'rails_helper'

RSpec.describe Woman, :type => :model do

    it {should validate_presence_of :name}
    it {should validate_presence_of :email}
    it {should validate_uniqueness_of :email}

  it "creates a new woman" do
    expect{
      Woman.create(name:"Stacy", email:"SexyStacy@hello.com")
      }.to change{Woman.all.count}.by 1
    end

  end
