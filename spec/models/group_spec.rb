require 'rails_helper'

RSpec.describe Group, type: :model do

  describe 'associations' do
    it { is_expected.to have_many(:user_groups).dependent(:destroy) }
    it { is_expected.to have_many(:users).through(:user_groups) }
    it { is_expected.to have_many(:financial_events).dependent(:destroy) }
  end
end
