module Voter
 extend ActiveSupport::Concern

 def vote
   if params[:data] == 'upvote'
     resource.votes.create(user_id: current_user.id)
   end
   if params[:data] == 'downvote'
     Vote.where(user_id: current_user.id).destroy_all
   end
   redirect_to :back
 end

end
