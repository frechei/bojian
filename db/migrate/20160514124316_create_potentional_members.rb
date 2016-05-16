class CreatePotentionalMembers < ActiveRecord::Migration
  def change
    create_table :potentional_members do |t|
      t.string :name
      t.string :gender
      t.string :phone
      t.string :age

      t.timestamps null: false
    end
  end
end
