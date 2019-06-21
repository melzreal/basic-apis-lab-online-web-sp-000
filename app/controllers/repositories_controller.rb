class RepositoriesController < ApplicationController

  def search
     @resp = Faraday.get'https://api.github.com/search/repositories?q=tetris?&client_id=3321637f8b0641b4a2f2&client_secret=fb5bb0472511aa0ce0f6a2b85b6cc754a68e824f'
    # do |req|
    #       req.params['q'] = params[:query]
    #       # req.params['client_id'] = ENV['GIT_CLIENT_ID']
    #       # req.params['client_secret'] = ENV['GIT_CLIENT_SECRET']
    #
    #     end


        render 'search'
  end

  def github_search

  end
end
