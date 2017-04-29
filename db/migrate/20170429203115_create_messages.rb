class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.text :context
      t.datetime :date

      t.timestamps
    end
  end
end
