class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :name
      t.integer :age
      t.integer :phn
      t.string :email
      t.boolean :termsandcondition

      t.timestamps
    end
  end
end
