%w(/ /ideas).each do |path|
  get path do
    @ideas = Idea.all
    erb :'ideas/index' # maps this url to a listing of all ideas
  end
end
