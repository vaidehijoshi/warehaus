require 'rails_helper'

RSpec.describe Warehouse, type: :model do
  it { should validate_presence_of(:city) }
  it { should validate_presence_of(:state) }
  it { should validate_presence_of(:country) }
  it { should validate_presence_of(:zipcode) }
end
