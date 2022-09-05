class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :author
      t.string :food
      t.string :feedback
      t.timestamp :created_at
      t.timestamp :updated_at
    end
  end
end
