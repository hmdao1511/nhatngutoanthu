class ApplicationController < ActionController::Base

    # If the user edit the URL to make it invalid on purpose
    # the user will be redirected to the home page  
    def invalid_url 
        redirect_to root_path 
    end
end
