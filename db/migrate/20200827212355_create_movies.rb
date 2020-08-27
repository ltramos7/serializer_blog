class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :producer
      t.integer :release_year
      t.string :genre
      t.string :rating

      t.timestamps
    end
  end
end
