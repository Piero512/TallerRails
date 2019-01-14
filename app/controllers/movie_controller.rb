class MovieController < ApplicationController
    def index
        @movies = View.joins(:user, :movie).select('movies.title , users.username , views.rating').distinct
    end
end
