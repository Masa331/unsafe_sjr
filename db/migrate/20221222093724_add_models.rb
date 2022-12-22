class AddModels < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
    end
    create_table :notes do |t|
      t.belongs_to :user
      t.string :title
      t.text :body
    end
  end
end
