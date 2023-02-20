class Api::V1::BaseController < ActionController::API
  before_action :set_host_url

  def set_host_url
    $hostname ||= request.base_url
  end

  def pagination_data(data, per_page)
    options = Hash.new
    options[:meta] = {
      pagination: {
        current_page: data.current_page,
        next_page: data.next_page,
        prev_page: data.prev_page,
        total_pages: data.total_pages,
        total_count: data.total_count,
        current_count: data.count,
        per_page: per_page
      }
    }
    options
  end



end