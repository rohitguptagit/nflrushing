class RushingStatsController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    @rushing_stats = RushingStat.order(sort_column + " " + sort_direction)
  end

  private

  def sort_column
    RushingStat.column_names.include?(params[:sort]) ? params[:sort] : "player"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
