class CreateWarehouses < ActiveRecord::Migration
  def change
    create_table :warehouses do |t|
    	t.string :city
    	t.string :state
    	t.string :zipcode
    	t.string :country
    end
  end
end
