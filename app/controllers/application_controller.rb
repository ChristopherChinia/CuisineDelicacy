class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/comments' do
    messages = Comment.all
    messages.to_json
    end

    post '/comments' do
      post_comment = Comment.create(
        feedback: params[:feedback],
        author: params[:author],
        food: params[:food],
        created_at: params[:created_at],
        updated_at: params[:updated_at]
      )
      post_comment.to_json
    end

    patch '/comments/:id' do
      patch_comment = Comment.find(params[:id])
      patch_comment.update(
        feedback: params[:feedback]
      )
      patch_comment.to_json
    end

    delete '/comments/:id' do
      delete_comment = Comment.find(params[:id])
      delete_comment.destroy
      delete_comment.to_json
    end

end
