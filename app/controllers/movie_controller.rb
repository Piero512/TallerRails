class MovieController < ApplicationController
    def index
        @movies = Movie.joins(:views ).select('movies.* , views.*')
    end
end
