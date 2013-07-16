class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |w|
      w.string :word
    end
  end
end
