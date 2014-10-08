require 'rails_helper'
require 'pry'

RSpec.describe User, :type => :model do
  it 'should create a user' do
    @name = "user_#{SecureRandom.uuid}"
    @user = User.create(
      name: @name,
      email: "#{@name}@example.com",
      password: "foobar",
      password_confirmation: "foobar"
    )

    expect(User.all.size).to be > 0
    expect(User.where(name: @name).size).to eq 1
  end
end
