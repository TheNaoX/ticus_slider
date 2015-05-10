module Admins
  class BaseController < ActionController::Base
    before_filter :authenticate_admin!
    layout 'admins'
  end
end
