class CreateGcs < ActiveRecord::Migration
  def change
    create_table :gcs do |t|

      t.timestamps null: false
    end
  end
end
