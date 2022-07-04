# frozen_string_literal: true

module ApplicationHelper
  APP_NAME = 'mini-app'

  def formatted_title(title = nil)
    return APP_NAME if title.nil?

    "#{APP_NAME} - #{title}"
  end

  def signed_in?
    return false if cookies[:current_user].nil?

    true
  end

  def current_user
    return nil if cookies[:current_user].nil?

    cookies.encrypted[:current_user]
  end

  def current_user_id
    return nil if cookies[:current_user].nil?

    JSON.parse(cookies.encrypted[:current_user])[0]
  end

  def current_user_email
    return nil if cookies[:current_user].nil?

    JSON.parse(cookies.encrypted[:current_user])[1]
  end
end
