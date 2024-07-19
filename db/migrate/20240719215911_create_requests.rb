class CreateRequests < ActiveRecord::Migration[7.1]
  def change
    create_table :requests do |t|
      t.string :name
      t.date :birthdate
      t.text :reason
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
