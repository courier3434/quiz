class CreateEpisodes < ActiveRecord::Migration[5.2]
  def change
    create_table :episodes do |t|
      t.string :episode_name
      t.string :airdate
      t.timestamps
    end
  end
end
