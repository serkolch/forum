module App
  class Server < Sinatra::Base
  
    set :method_override, true
    enable :sessions
  
    get "/" do
      @topics = Topic.all
      erb :index
    end

    get "/login" do
      "Hello World"
    end

    post "/login" do
      "Hello World"
    end

    get "/signup" do
      "Hello World"
    end

    post "/signup" do
      "Hello World"
    end

    get "/topic/:id" do
      "Hello World"
    end
    
    get "/topic/new" do
      "Hello World"
    end

    get "/topic/:id/comment/new" do
      "Hello World"
    end

    post "/topic/:id/comment" do
      "Hello World"
    end

    delete "/logout" do
      "Hello World"
    end

  end
end