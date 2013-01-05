class ApplicationController < ActionController::Base
  protect_from_forgery
  # Note: SessionsHelper added to include signin and related methods
  # All helpers are included in _views_ by default, but need to be added to controllers
  include SessionsHelper 
end
