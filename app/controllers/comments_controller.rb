class CommentsController < ApplicationController
  
  def index

  end

  def show

  end

  def new

  end

  def create
     @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to customer_url(@comment.customer_id)
    else
      @customer = Customer.find(@comment.customer_id)
      @comment = @comment
      @comments = @customer.comments
      render template: "customers/show"
      #redirect_to customer_url(@comment.customer_id), flash: {error: @comment.errors.full_messages}
    end
  end

  def edit

  end

  def update

  end

  def destroy
    @comment = Comment.find(params[:id])
    customer_id = @comment.customer_id
    @comment.destroy
    redirect_to customer_url(customer_id)
  end
  
  private
  
  def comment_params
    params.require(:comment).permit(:body, :customer_id)
  end
end
