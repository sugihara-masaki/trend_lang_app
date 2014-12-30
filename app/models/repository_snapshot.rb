class RepositorySnapshot < ActiveRecord::Base
  validates :name, presence: true
  validates :html_url, presence: true
  validates :stargazers_count, presence: true
  validates :language, presence: true
  validates :create_date, presence: true

  scope :with_term, -> (term) { where('create_date > ?', Date.today - 1.send(term.to_sym)) }
  scope :with_language, -> (language) { where(language: language) }
  scope :default_conditions, -> { where('create_date > ?', Date.today - 1.week) }
end
