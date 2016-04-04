class CommentsController < ApplicationController
      before_action :require_user, only: [:create, :update,:destroy]
    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comments.create(comment_params)
         @comment.user_id = current_user.id
        if @comment.save
      flash[:success] = "Comment was created successfully!"
      redirect_to article_path(@article)
      else
       flash[:danger] = "Error creating comment: #{@comment.errors.full_messages}"
      redirect_to(@comment.article)
        end
    end

     def destroy
     @comment = Comment.find(params[:id])
     @comment.destroy
     flash[:danger] = "Article was successfully deleted"
 
    redirect_to(@comment.article)
     end
    private
    def comment_params
        params.require(:comment).permit(:commenter, :body)
    end
end
