# frozen_string_literal: true

module ApplicationHelper
  def device_type
    agent = request.user_agent
    return 'tablet' if /(tablet|ipad)|(android(?!.*mobile))/i.match?(agent)
    return 'mobile' if /Mobile/.match?(agent)

    'desktop'
  end

  def desktop?
    device_type == 'desktop'
  end
end
