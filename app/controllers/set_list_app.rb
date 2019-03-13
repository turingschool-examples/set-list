class SetList < Sinatra::Base
  get '/' do
    erb :welcome
  end

  get "/songs" do
    @songs = Song.all
    erb :"songs/index"
  end

  get "/songs/new" do
    erb :"songs/new"
  end

  post "/songs" do
    Song.create(title: params[:song][:title],
                length: params[:song][:length],
                play_count: params[:song][:play_count])
    redirect '/songs'
  end

  get "/songs/:id" do
    @song = Song.find(params["id"])
    erb :"songs/show"
  end
end
