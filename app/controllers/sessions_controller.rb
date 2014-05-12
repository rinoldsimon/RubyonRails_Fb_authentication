class SessionsController < ApplicationController
  def create
    user = request.env["omniauth.auth"]
	
#	graph = Koala::Facebook::GraphAPI.new(@access)
#friends = graph.get_connections("user", "friends")
#graph.put_object("user", "feed", :message => "I am writing on my wall!")
	
@image =user["info"]["image"]
@name=user["info"]["name"]
  @access= user["credentials"]["token"]
  @graph = Koala::Facebook::GraphAPI.new(@access)

@graph.put_wall_post("test my fb page with ruby")
#  @rest = Koala::Facebook::RestAPI.new(@access)

#render :text => @graph.get_object("me")
#render :text => @rest.get_object("me")

   #session[:user_id] = user.id
    #redirect_to root_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end