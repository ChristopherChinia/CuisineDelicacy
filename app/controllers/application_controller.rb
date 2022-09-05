class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/comments' do
    messages = Comment.all
    messages.to_json
    end

    post '/comments' do
      post_message = Message.create(
        feedback: params[:feedback],
        author: params[:author],
        created_at: params[:created_at],
        updated_at: params[:updated_at]
      )
      post_message.to_json
    end

end
