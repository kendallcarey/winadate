require 'rails_helper'

RSpec.describe WomenController, :type => :controller do

  it "can create a woman" do
    expect{
    post :create, woman:{name:"Stacy", email:"SexyStacy@hello.com", password:"stacyissexy"}
    }.to change{Woman.all.count}.by 1
  end

end
