require 'rails_helper'

RSpec.describe Shipment, type: :model do
  it { should belong_to(:order) }
  it { should validate_presence_of(:state) }

  context "#assign_warehouse" do
  	let!(:warehouse) { FactoryGirl.create(:warehouse) }
  	let!(:warehouse_with_inventory) { FactoryGirl.create(:warehouse_with_inventory) }
  	let!(:product) { FactoryGirl.create(:product) }
  	let!(:variant) { FactoryGirl.create(:variant) }

  	let(:order) { FactoryGirl.create(:order) }
  	let(:shipment) { order.shipments.first }

  	before(:each) do
  		warehouse_with_inventory.variants << variant
  	end
  	
  	it "finds the warehouse with the highest inventory of line items" do
  		expect(shipment.warehouse).to eq(nil)

  		shipment.assign_warehouse
  		shipment.reload

  		expect(shipment.warehouse).to eq(warehouse_with_inventory)
  	end
  end
end
