require 'rails_helper'

RSpec.describe Shipment, type: :model do
  it { should belong_to(:warehouse) }
  it { should belong_to(:order) }
  it { should validate_presence_of(:state) }
end
