class CommentsController < ApplicationController

    before_filter do
        @entry = WeightEntry.find_by_id(params[:weight_entry_id])
    end
    
    def create
        @entry.comments.create(params[:comment])
        redirect_to entry
    end
    
    def destroy
        comment = Comment.find_by_id(params[:id])
        comment.destroy
        redirect_to @entry
    end
end
