class LinksController < ApplicationController
  def create
  end

  def show
    @link = Link.last
  end

end
