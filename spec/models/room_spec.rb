require 'rails_helper'

describe Room do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_uniqueness_of(:name).scoped_to(:convention_id) }
  it { is_expected.to validate_length_of(:name).is_at_most(40) }
  it { is_expected.to allow_value('Windsor').for(:name).with_message('Alphanumeric characters (and spaces) only.') }
  it { is_expected.to belong_to :convention }
  it { is_expected.to have_many :events }
end
