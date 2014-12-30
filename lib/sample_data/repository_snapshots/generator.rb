require 'csv'
require 'singleton'

module SampleData
  module RepositorySnapshots
    class Generator
      include Singleton
      CSV_FILE_PATH = Rails.root.join('db', 'csvs', 'repository_snapshots.csv').to_s

      def generate
        RepositorySnapshot.import(
          repository_snapshots
        )
      end

      def repository_snapshots
        objs = []
        CSV.foreach(CSV_FILE_PATH, 'r') do |data|
          objs << RepositorySnapshot.new(
            id: data[0].to_i,
            name: data[1],
            html_url: data[2],
            stargazers_count: data[3].to_i,
            language: data[4],
            create_date: data[5]
          )
        end
        objs
      end
    end
  end
end
