class UsersController < ApplicationController 

def index

  matching_users = User.all
  @list_of_users = matching_users.order({:username =>:asc})
  
render({:template=>"user_templates/index.html.erb"})

end

def show
  url_username = params.fetch("path_username")
  matching_usernames = User.where({:username=>url_username})
  @the_user=matching_usernames.at(0)

  #if the_user==nil
  #  redirect_to("/")
#else
  render ({:template=>"user_templates/show.html.erb"})
  #end

end

def new_registration_form

  render({:template=>"user_templates/signup_form.html.erb"})

end

def create

  user=User.new
  user.username=params.fetch("input_username")
  user.password = params.fetch("input_password")
  user.password_confirmation = params.fetch("input_password_confirmation")

  save_status=user.save

  if save_status==true
    #line below adds cookies

  session.store(:user_id, user.id)

    redirect_to("/users/#{user.username}", {:notice=>"Welcome, " + user.username + "!"})
        
  else
    redirect_to("/user_sign_up", {:alert=> user.errors.full_messages.to_sentence})
  end
end

def toast_cookies
reset_session

redirect_to("/", {:notice=>"Bye, come back soon!"})

end

def sign_in_form
  render({:template=>"user_templates/signin_form.html.erb"})

end

#AUTHENTICATE

##Order : sign up (new_registration_form), sign out (toast_cookies), sign in (sign_in_form) followed by (authenticate)
def authenticate
  #Steps
    # Parameters: {"input_username"=>"Potato", "input_password"=>"[FILTERED]"}
  #get the username from params
  un=params.fetch("input_username")

  #get the password from params
  pw=params.fetch("input_password")
  
  #look up the record from the db matching username. will have either zero or one record in it
  user = User.where({:username=>un}).at(0)

  #if there's no record, redirect back to sign in form
  if user == nil
    redirect_to("/user_sign_in", {:alert =>"Sorry we don't recognise you!"})
  
  else  
  #if there is a record check password matches . Doesn't return true/false it returns the record. But any non-nil/non-false is True
  if user.authenticate(pw)
 #if pw matches (ie returns true), set the cookie
    session.store(:user_id, user.id)
 
    #redirect to homepage
    redirect_to("/", {:notice=>"Welcome back, "+ user.username+ "!"})

   #if not, redirect back to sign in form
  else
    redirect_to("/user_sign_in", :alert=>"Wrong password")
  end

  end

end


end
