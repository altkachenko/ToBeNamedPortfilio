class HomeController < ApplicationController

    def index
        respond_to do |format|
            format.html {render "/home/index.html.erb"}
        end
    end

end
