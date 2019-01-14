class Top10Controller < ApplicationController
  def index
    @top10 = View.joins(:movie).select('movies.title , views.rating').order("views.rating DESC").limit(10)
  end
end
