require 'rails_helper'

RSpec.describe Variant, type: :model do
	it { should belong_to(:product) }
  it { should validate_presence_of(:color) }
  it { should validate_presence_of(:size) }
end
