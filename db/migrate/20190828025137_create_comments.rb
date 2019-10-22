class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC'do |t|
      t.text :comment
      t.integer :user_id
      t.integer :article_id
      t.timestamps
    end
  end
end
