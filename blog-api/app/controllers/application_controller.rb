class ApplicationController < ActionController::Base

    def index
        render html: "Hello application index"
    end
end
