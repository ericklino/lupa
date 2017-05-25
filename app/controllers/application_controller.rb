class ApplicationController < ActionController::Base
<<<<<<< HEAD
  include SimpleCaptcha::ControllerHelpers
=======
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
>>>>>>> 06bd80de00265842297bfebf74763c7eea639716
  protect_from_forgery with: :exception
end
