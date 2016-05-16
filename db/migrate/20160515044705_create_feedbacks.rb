class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.string :invite_time
      t.string :status
      t.string :person_in_charge
      t.references :potentional_member, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
