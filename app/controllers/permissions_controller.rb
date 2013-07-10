class PermissionsController < ApplicationController
  # GET /permissions
  # GET /permissions.json
  #skip_authorization_check :only => [:index]
  authorize_resource

  before_filter :find_permission, :only => [:show, :edit, :update, :destroy]

  def index
    @permissions = Permission.paginate(:page => params[:page])
  end

  # GET /permissions/1
  # GET /permissions/1.json
  def show

  end

  # GET /permissions/new
  # GET /permissions/new.json
  def new
    @permission = Permission.new
  end

  # GET /permissions/1/edit
  def edit

  end

  # POST /permissions
  # POST /permissions.json
  def create
    @permission = Permission.new(params[:permission])


    if @permission.save
      redirect_to @permission, notice: 'Permission was successfully created.'
    else
      render action: "new"
    end

  end

  # PUT /permissions/1
  # PUT /permissions/1.json
  def update
    if @permission.update_attributes(params[:permission])
      redirect_to @permission, notice: 'Permission was successfully updated.'
    else
      render action: "edit"
    end
  end

  # DELETE /permissions/1
  # DELETE /permissions/1.json
  def destroy

    @permission.destroy
    redirect_to permissions_url

  end

  protected
  def find_permission
    @permission = Permission.find(params[:id])
  end


end
