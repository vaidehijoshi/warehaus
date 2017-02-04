require 'rails_helper'

RSpec.describe InventoryItem, type: :model do
  it { should belong_to(:variant) }
  it { should belong_to(:warehouse) }
end
