require 'rails_helper'

RSpec.describe HouseholdUser, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:household) }
    it { is_expected.to belong_to(:user) }
  end
end
