class AddSlugToSpeakers < ActiveRecord::Migration
  def change
    add_column :speakers, :slug, :string
  end
end
