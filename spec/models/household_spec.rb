require 'rails_helper'

RSpec.describe Household, type: :model do
  describe 'associations' do
    it { is_expected.to have_many(:household_users) }
    it { is_expected.to have_many(:users).through(:household_users) }
    it { is_expected.to have_many(:financial_events) }
  end
end
