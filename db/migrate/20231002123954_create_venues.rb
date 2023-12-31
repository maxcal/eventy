class CreateVenues < ActiveRecord::Migration[7.0]
  def change
    create_table :venues do |t|
      t.text :content
      t.belongs_to :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
