class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/comments' do
    messages = Comment.all
    messages.to_json
    end

    

end
