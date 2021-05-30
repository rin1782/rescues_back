class CreateDogs < ActiveRecord::Migration[6.1]
  def change
    create_table :dogs do |t|
      t.integer :rescue_id
      t.string :name
      t.string :description
      t.string :img_url

      t.timestamps
    end
  end
end
