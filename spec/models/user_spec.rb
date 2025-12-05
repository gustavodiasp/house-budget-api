require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { is_expected.to have_many(:household_users) }
    it { is_expected.to have_many(:households).through(:household_users) }
  end
end
