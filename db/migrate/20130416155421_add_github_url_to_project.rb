class AddGithubUrlToProject < ActiveRecord::Migration
  def change
    add_column :projects, :github_url, :string
    rename_column :projects, :out_url, :home_url
  end
end
