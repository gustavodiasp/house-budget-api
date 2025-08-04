require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { is_expected.to have_many(:user_groups).dependent(:destroy) }
    it { is_expected.to have_many(:groups).through(:user_groups) }
  end
end
