module App
  class Server < Sinatra::Base
  
    set :method_override, true
    enable :sessions
  
    get "/" do
      @session_user = User.find(session[:user_id]) if session[:user_id]
      @topics = Topic.order(posted_at: :desc)
      erb :index
    end

    get "/most_likes" do
      @session_user = User.find(session[:user_id]) if session[:user_id]
      @topics = Topic.order(likes: :desc)      
      erb :index
    end

    get "/most_comments" do
      @session_user = User.find(session[:user_id]) if session[:user_id]
      @topics = Topic.order(comment_count: :desc)      
      erb :index
    end

    get "/login" do
      erb :login
    end

    post "/login" do
      user = User.find_by({username: params[:username]}).try(:authenticate, params[:password])
      if user
        session[:user_id] = user.id
        redirect to "/"
      else
        redirect to "/login"
      end
    end

    get "/users/new" do
      erb :new_user
    end

    post "/users" do
      user = User.new(username: params["username"], password: params["password"], age: params["age"], gender: params["gender"], location: params["location"], avatar: params["avatar"], created_at: DateTime.now)
      if user.save
        session[:user_id] = user.id
        redirect to "/"
      else 
        "Wrong information"
      end
    end

    get "/profile/:id" do
      @session_user = User.find(session[:user_id]) if session[:user_id]
      @user = User.find(params[:id])
      erb :profile
    end

    get "/profile/:id/edit" do
      if session[:user_id].to_s == params[:id]
        @session_user = User.find(session[:user_id])
        @user = User.find(params[:id])
        erb :edit_user
      else
        "#{params[:id].class} ... #{session[:user_id].class}"
        # redirect to "/profile/#{params[:id]}"
      end
    end

    patch "/profile/:id" do
      User.find(params["id"]).update(age: params["age"], gender: params["gender"], location: params["location"], avatar: params["avatar"])
      redirect to "/profile/#{params["id"]}"
    end

    delete "/profile/:id" do
      User.find(params["id"]).destroy
      session[:user_id] = nil
      redirect to "/"
    end

    get "/topic/new" do
      if session[:user_id]
        @session_user = User.find(session[:user_id]) if session[:user_id]
        erb :new_topic
      else
        redirect to "/login"
      end
    end

    post "/topic/new" do
      Topic.create(name: params["name"], content: params["content"], user_id: session[:user_id], posted_at: DateTime.now, likes: 0, comments: 0)
      redirect to "/topic/#{Topic.last.id}"
    end

    get "/topic/:id" do
      @session_user = User.find(session[:user_id]) if session[:user_id]      
      @topic = Topic.find(params["id"])
      @comments = Comment.where(topic_id: params["id"])
      erb :show_topic
    end
    
    get "/topic/:id/edit" do
      if session[:user_id] == Topic.find(params[:id]).user_id
        @session_user = User.find(session[:user_id])
        @topic = Topic.find(params["id"])
        erb :edit_topic
      else
        redirect to "/topic/#{params["id"]}"
      end
    end

    patch "/topic/:id" do
      Topic.find(params["id"]).update(name: params["name"], content: params["content"])
      redirect to "/topic/#{params["id"]}"
    end

    delete "/topic/:id" do
      Topic.find(params["id"]).destroy
      redirect to "/"
    end

    post "/topic/:id/comment" do
      Comment.create(content: params["content"], topic_id: params["id"], user_id: session[:user_id], posted_at: DateTime.now)
      Topic.find(params["id"]).update(comment_count: Topic.find(params["id"]).comment_count+1)
      redirect to "/topic/#{Comment.last.topic_id}"
    end

    get "/comment/edit/:id" do
      redirect to "/" if !session[:user_id]
      @comment = Comment.find(params["id"])
      erb :edit_comment
    end

    patch "/comment/:id" do
      Comment.find(params["id"]).update(content: params["content"])
      redirect to "/topic/#{Comment.find(params["id"]).topic_id}"
    end

    delete "/comment/:id" do
      topic_id = Comment.find(params["id"]).topic_id
      Comment.find(params["id"]).destroy
      Topic.find(params["id"]).update(comment_count: Topic.find(params["id"]).comment_count-1)
      redirect to "/topic/#{topic_id}"
    end

    delete "/logout" do
      session[:user_id] = nil
      redirect to "/"
    end

  end
end