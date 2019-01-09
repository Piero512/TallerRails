class Top10Controller < ApplicationController
  def index
     @top10 = Movie.order("rating DESC").limit(10)
  end
end
