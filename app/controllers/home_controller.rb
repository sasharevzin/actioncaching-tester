class HomeController < ApplicationController
  include ActionController::Caching

  caches_action :index

  def index
    render json: { time: Time.current }
  end
end
