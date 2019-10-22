class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.references :user, foreign_key: true
      t.string :name, null: false, default: ''

      t.timestamps
    end
  end
end
