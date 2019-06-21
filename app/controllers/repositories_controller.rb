class RepositoriesController < ApplicationController

  def search
    @resp = Faraday.get'https://api.github.com/search/repositories' do |req|
          req.params['q'] = params[:query]
          req.params['client_id'] = ENV['GIT_CLIENT_ID']
          req.params['client_secret'] = ENV['GIT_CLIENT_SECRET']

        end


        render 'search'
  end

  def github_search
    
  end
end
