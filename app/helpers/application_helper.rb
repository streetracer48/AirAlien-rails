module ApplicationHelper

    def gravatar_for(user, options = {size:80})

     if user.image 
      "http://graph.facebook.com/#{user.uid}/picture?type=large"
     else
      gravatar_id= Digest::MD5::hexdigest(user.email.downcase)
      size = options[:size]
      gravatar_id = Digest::MD5::hexdigest(user.email).downcase
      "https://www.gravatar.com/avatar/#{gravatar_id}.jpg?d=identical&s=150"
    end
  end
end
