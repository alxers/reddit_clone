module Voter
 extend ActiveSupport::Concern

 def vote
   current_vote = resource.votes.find_by(user_id: current_user.id)
   if params[:data] == 'upvote'
     resource.votes.create(user_id: current_user.id)
   end
   if params[:data] == 'downvote' && current_vote
     current_vote.destroy
   end
   redirect_to :back
 end

end
