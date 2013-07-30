get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/userinfo' do
  github_name = params[:name]
  user_dump = Octokit.user(github_name)
  @user = User.new
  @user.username = params[:name]
  @user.name = user_dump.name
  @user.company = user_dump.company
  @user.email = user_dump.email
  @user.url = user_dump.url
  @user.followers = user_dump.followers
  @user.repos = user_dump.public_repos
  @user.github_id = user_dump.id
  @user.gravtar_id = user_dump.gravatar_id.to_s
  erb :profile
end

