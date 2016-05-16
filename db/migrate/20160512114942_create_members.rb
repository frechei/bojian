class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :gender
      t.date :birth_date
      t.string :address
      t.string :parent
      t.string :phone
      t.date :start_date
      t.date :end_date
      t.string :card_category
      t.string :sword
      t.string :national_record
      t.string :provincial_record
      t.boolean :stop_status
      t.string :stop_reason
      t.boolean :active
      t.string :not_active_reason

      t.timestamps null: false
    end
  end
end
