class CreateMemberships < ActiveRecord::Migration[5.0]
  def change
    create_table :memberships do |t|
      t.references :course, foreign_key: true
      t.references :user, foreign_key: true
      t.string :kind

      t.timestamps
    end
  end
end
