class ApplicationController < ActionController::Base
  include Pundit::Authorization  
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  before_action :turbo_frame_request_variant
  before_action :set_ip_address

  private

  def turbo_frame_request_variant
    request.variant = :turbo_frame if turbo_frame_request?
  end

  def set_ip_address
    @ip_address = request.remote_ip
  end

  # If a non-authorized user tries to do something they shouldn't, send them
  # back to the root path
  def user_not_authorized
    redirect_back(fallback_location: root_path)
  end
end
