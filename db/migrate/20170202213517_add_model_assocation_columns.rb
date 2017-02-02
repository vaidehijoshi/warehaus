class AddModelAssocationColumns < ActiveRecord::Migration
  def change
  	create_table :shipments do |t|
    	t.references :warehouse
    	t.references :order
    	t.string :state, default: 'pending', null: false

    	t.timestamps
    end

    create_table :products do |t|
    	t.string :name
    end

    create_table :variants do |t|
    	t.references :product
    	t.string :color
    	t.string :size
    end

    create_table :inventory_items do |t|
    	t.references :variant
    	t.references :warehouse
    	t.integer :quantity
    end

    create_table :orders do |t|
      t.decimal :amount, null: false
      t.string :shipping_address
      t.string :billing_address

      t.timestamps
    end
  end
end
