require 'rails_helper'

RSpec.describe FinancialEvent, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:group) }
  end
end
