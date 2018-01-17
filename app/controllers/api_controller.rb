require 'json'

class ApiController < ApplicationController
  protect_from_forgery :except => [:create]  
  def index
    description = {'description' => 'This is todo app Api sample'}
    render :json => description
  end

  def create
    @todo = Todo.new(todo_params)

    if @todo.save
      respond_to do |res_format|
        res_format.json {  render json: @todo, status: :created }
      end
    elsif @todo == nil?
      render :json => { 'Error' => 'Invaild post body' , 'status' => 400}
    end
  end

  def show
    @todo =  Todo.where(id:params[:id])    
    render json:  @todo  
  end
  private
  def todo_params
      ActionController::Parameters.new(:todo.to_s).permit(:content)
  end
end
