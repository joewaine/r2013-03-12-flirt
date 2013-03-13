class SubscribersController < ApplicationController
  def new
    @subscriber = Subscriber.new
  end
  def create
      subscriber = Subscriber.create(params[:subscriber])
  end
end
