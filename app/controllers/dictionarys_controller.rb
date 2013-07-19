class DictionarysController < ApplicationController
  before_filter :find_role, :only => [:show, :edit, :update, :destroy]
  def index
   @dictionarys = Dictionary.paginate(:page => params[:page])
  end
  def show
  end
  def new
    @dictionary = Dictionary.new
  end  
  def create
    @dictionary = Dictionary.new(params[:dictionary])
    @dictionary.save
    render action: "index"
  end
  
end
