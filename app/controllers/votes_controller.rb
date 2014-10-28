class VotesController < ApplicationController
  before_filter :authenticate_user!, only: [:create]
  def create
    @vote = current_user.votes.create(vote_params)
    redirect_to :back
  end
  
  
  private
    def vote_params
      params.require(:vote).permit(:up,:link_id)
    end
end
