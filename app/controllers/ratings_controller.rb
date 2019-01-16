class RatingsController < ApplicationController
  def index
    @movies = View.joins(:user, :movie).select('movies.title , users.username , views.rating').distinct
  end
  def new
    @lista_pelis = Movie.all()
    @lista_users = User.all()
    @vista = View.new
  end
  
  def create
    @vista = View.new(view_params)
    if @vista.save
      redirect_to "/ratings/"
    end
  end


  def view_params
    params.permit(:user_id, :movie_id,:rating)
  end

  def show
    @rating = View.joins(:user,:movie).select("movies.title ,movies.created_at, users.username, views.rating").find(params[:id])
  end
end
  