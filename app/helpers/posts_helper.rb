module PostsHelper
   def user_is_authorized_for_post?(post)
        current_user && (current_user == post.user || current_user.admin?)
   end
   
   def is_user_mod_or_admin_or_owner_of_post?(post)
        current_user && (current_user == post.user || current_user.moderator? || current_user.admin?)
   end
   
end
