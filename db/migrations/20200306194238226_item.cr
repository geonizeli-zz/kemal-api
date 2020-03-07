class Item < Jennifer::Migration::Base
  def up
    # Postgres requires to create specific enum type
    create_table(:items) do |t|
      t.string :name, {:size => 30}
      t.timestamps
    end
  end

  def down
    drop_table :items
  end
end
