class VotesController < ApplicationController
  before_filter :authenticate_user!, only: [:create]
  def create
    @vote = current_user.votes.where(link_id: vote_params["link_id"].to_i).first || current_user.votes.create(vote_params)
    @vote.update_attributes(up: vote_params["up"])
    redirect_to :back
  end
  
  
  private
    def vote_params
      params.require(:vote).permit(:up,:link_id)
    end
end
