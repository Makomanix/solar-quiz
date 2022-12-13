class CreateSolarObjects < ActiveRecord::Migration[6.1]
  def change
    create_table :solar_objects do |t|
      t.string :name
      t.boolean :isPlanet
      t.boolean :isMoon
      t.boolean :isOther

      t.timestamps
    end
  end
end
