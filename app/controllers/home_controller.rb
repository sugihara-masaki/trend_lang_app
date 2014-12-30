class HomeController < ApplicationController
  def index
    @repositories =
      if search_params[:term].present?
        RepositorySnapshot.with_term(search_params[:term])
      else
        RepositorySnapshot.default_conditions
      end
    @repositories = @repositories.with_language(search_params[:language]) if search_params[:language].present?
  end

  private

  def search_params
    @search_params ||= params[:search].present? ? params[:search].dup : {}
  end
end
