class VotesController < ApplicationController
    before_action :set_current_user

    def create
      @vote = current_user.votes.new(article_id: params[:article_id])
  
      if @vote.save
        redirect_to root_path, notice: 'You voted a Article.'
      else
        redirect_to root_path, alert: 'You cannot vote this Article.'
      end
    end
  
    def destroy
      vote = Vote.find_by(id: params[:id], user: current_user, article_id: params[:article_id])
      if vote
        vote.destroy
        redirect_to root_path, notice: 'You disvoted a post.'
      else
        redirect_to root_path, alert: 'You cannot disvote post that you did not vote before.'
      end
    end
  end
  