class BlogapiController < ApplicationController

    def index
        render json: Blogapi.all
    end

    def show
        val = Blogapi.find(params[:id])
        render json: val
    end
end
