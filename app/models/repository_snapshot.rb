class RepositorySnapshot < ActiveRecord::Base
  validates :name, presence: true
  validates :html_url, presence: true
  validates :stargazers_count, presence: true
  validates :language, presence: true
  validates :create_date, presence: true
end
