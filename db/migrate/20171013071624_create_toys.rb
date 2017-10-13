class CreateToys < ActiveRecord::Migration[5.1]
  def change
    create_table :toys do |t|
      t.string     :name
      t.text       :description
      t.string     :state, default: 'draft'
      t.timestamps
    end
  end
end
