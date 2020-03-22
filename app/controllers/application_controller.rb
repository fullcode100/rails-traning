class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  layout 'admin_lte_2'

end
