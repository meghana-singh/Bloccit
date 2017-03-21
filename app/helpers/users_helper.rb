module UsersHelper
   def does_user_have_no_posts? 
       current_user.posts.count == 0 ? true :  false
   end
   def does_user_have_no_comments?
       current_user.comments.count == 0 ? true : false
   end
   
   def does_user_have_no_favorites?
       current_user.favorites.count == 0 ? true : false
   end
end
