class ApplicationController < Sinatra::Base
  register Sinatra::CrossOrigin

  configure do
    enable :cross_origin
    set :allow_origin, "*" 
    set :allow_methods, [:get, :post, :patch, :delete, :options] # allows these HTTP verbs
    set :expose_headers, ['Content-Type']
  end

  options "*" do
    response.headers["Allow"] = "HEAD,GET,PUT,POST,DELETE,OPTIONS"
    response.headers["Access-Control-Allow-Headers"] = "X-Requested-With, X-HTTP-Method-Override, Content-Type, Cache-Control, Accept"
    200
  end


  get "/dogs" do
    Dog.all.to_json 
  end

  post '/dogs' do
    dog = Dog.create(strong_params)
    dog.to_json 
  end

  patch "/dogs/:id" do
    dog = Dog.find(params[:id])
    dog.update(strong_params)
    dog.to_json
  end

  delete "/dogs/:id" do
    dog = Dog.find(params[:id])
    dog.update(strong_params)
    dog.to_json
  end


  private
  def strong_params
    params.slice(:name, :age)
  end



end
