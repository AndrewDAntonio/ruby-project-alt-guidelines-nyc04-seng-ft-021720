class Boxguide < ActiveRecord::Migration[5.2]
  def change
    create_table :boxguide do |t|
      t.integer :service_id
      t.integer :show_id
    end
  end
end
