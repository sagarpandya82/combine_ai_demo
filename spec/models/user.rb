require 'rails_helper'

RSpec.describe "User", type: :system do
  before(:all) do
    @user_a = create(:user)
  end

  it 'user_a has valid email' do
    expect(@user_a.email).not_to eq "random@example.com"
  end
end
