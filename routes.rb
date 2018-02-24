class Items < Sinatra::Base
  get "/" do
    erb :home
  end

  get "/dishes/new" do
    erb :new
  end

  post "/dishes" do
    Dish.create(title: params[:title], price: params[:price], description: params[:description])
    redirect "/"
  end

  get "/dishes" do
    @dishes = Dish.all
    erb :dishes
  end

  get "/dishes/:id/edit" do
    @dish = Dish.find(params[:id])
    erb :edit
  end

  get "/dishes/:id/edit" do
    @dish = Dish.find(params[:id])
    erb :edit
  end

  put "/dishes/:id" do
    dish = Dish.find(params[:id])
    dish.update(title: params[:title], price: params[:price], description: params[:description])
    redirect "/dishes"
  end

  delete "/dishes/:id" do
    Dish.find(params[:id]).destroy
    redirect "/dishes"
  end
end