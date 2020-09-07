class WelcomeController < ApplicationController
  def index
    user = User.find_or_create_by(name: "default")
    render plain: "User #{user.name}; #{Rails.version}/#{RUBY_VERSION}"
  end
end
