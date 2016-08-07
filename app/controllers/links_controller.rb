class LinksController < ApplicationController
  def new
    @link = Link.new
  end

  def create
    redirect_to :root
  end
end
