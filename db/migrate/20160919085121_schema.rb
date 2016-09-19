class Schema < ActiveRecord::Migration[5.0]
  def change
    create_table :shippers do |t|
      t.string :name
      t.string :handle
      t.string :contact
      t.string :telephone
      t.string :fax
      t.string :location
      t.string :broker_mc
      t.string :carrier_mc
      t.string :dot_number

      t.timestamps
    end    
  end
end
