class ApplicationController < ActionController::Base
  before_action :authenticate_librarian!
  layout 'admin_lte_2'

end
