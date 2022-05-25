class ApplicationController < ActionController::Base
  before_action :turbo_frame_request_variant
  before_action :set_ip_address

  private

  def turbo_frame_request_variant
    request.variant = :turbo_frame if turbo_frame_request?
  end

  def set_ip_address
    @ip_address = request.remote_ip
  end
end
