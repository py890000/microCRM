class RolesController < ApplicationController
  authorize_resource
  #load_and_authorize_resource 
  before_filter :find_role, :only  => [:show, :edit, :update, :destroy]
  def index
    @roles = Role.paginate(:page  =>  params[:page])
  end

  # GET /roles/1
  # GET /roles/1.json
  def show


  end

  # GET /roles/new
  # GET /roles/new.json
  def new
    @role = Role.new


  end

  # GET /roles/1/edit
  def edit

  end

  # POST /roles
  # POST /roles.json
  def create
    @role = Role.new(params[:role])

      if @role.save
        redirect_to @role, notice: 'Role was successfully created.'
      else
         render action: "new"
      end

  end

  # PUT /roles/1
  # PUT /roles/1.json
  def update


      if @role.update_attributes(params[:role])
        redirect_to @role, notice: 'Role was successfully updated.'

      else
         render action: "edit"
      end

  end


  def destroy

    @role.destroy
    redirect_to roles_url

  end
  protected
  def find_role
      @role = Role.find(params[:id])
  end
end
