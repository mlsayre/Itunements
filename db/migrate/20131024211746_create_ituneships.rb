class CreateItuneships < ActiveRecord::Migration
  def change
    create_table :ituneships do |t|
      t.integer :band_id
      t.integer :fan_id

      t.timestamps
    end
  end
end
