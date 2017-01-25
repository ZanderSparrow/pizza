class CreateBubbles < ActiveRecord::Migration
  def change
    create_table :bubbles do |t|
      t.string :url
      t.string :keys
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
