class ApplicationController < ActionController::Base

    # Shorthand method for rendering a view
    #   +options+
    #       +controller+ - the name of the controller that we are rendering for, default to controller_name
    #       +action+ - the name of the action we are rendering for, default to action_name
    # The above two option match to the directory/file names for a view as per rails convention 
    def respond(options = {})
        options[:controller] ||= controller_name
        options[:action] ||= action_name

        respond_to do |format|
            format.html {render "/#{options[:controller_name]}/#{action_name}.html.erb"}
            format.js {render "/#{options[:controller_name]}/#{action_name}.js.erb"}
        end
    end
end
