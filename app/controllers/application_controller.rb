class ApplicationController < ActionController::Base
    before_action :authenticate_sign_up!
end
