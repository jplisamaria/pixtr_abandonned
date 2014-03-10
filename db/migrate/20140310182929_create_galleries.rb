class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :name ##knows this is a column and its type should be string
    end
  end
end
