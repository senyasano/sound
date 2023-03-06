class SearchesController < ApplicationController
  def search
    @facilities = Facility.looks(params[:search], params[:word])
    p @facilities
  end


  private
  def search_params
    params.require(:search).permit(:word, :seach)
  end
end
