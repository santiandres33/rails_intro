class WelcomeController < ApplicationController
  def home
    if current_user
      client = Octokit::Client.new(:access_token => current_user.oauth_token)
      @repos = client.repos.map { |r| r.name }
    end
  end
end
