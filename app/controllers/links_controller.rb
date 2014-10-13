class LinksController < ApplicationController
  def show
  end
  
  def new
    @link = Link.new
  end
  
  def create
    @link = Link.create(link_params)
  end
  
  
  private
    def link_params
      params.require(:link).permit(:url,:title)
    end
end
