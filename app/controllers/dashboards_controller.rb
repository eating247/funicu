class DashboardsController < ApplicationController
  def index
    @messages = Message.all
  end
end
