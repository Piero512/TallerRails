class Top10Controller < ApplicationController
  def index
     @top10 = Movie.order("ratings").limit(10)
  end
end
