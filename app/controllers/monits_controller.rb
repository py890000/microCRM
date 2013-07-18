class MonitsController < ApplicationController
  # GET /monits
  # GET /monits.json
  def index
    @monits = Monit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @monits }
    end
  end

  # GET /monits/1
  # GET /monits/1.json
  def show
    @monit = Monit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @monit }
    end
  end

  # GET /monits/new
  # GET /monits/new.json
  def new
    @monit = Monit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @monit }
    end
  end

  # GET /monits/1/edit
  def edit
    @monit = Monit.find(params[:id])
  end

  # POST /monits
  # POST /monits.json
  def create
    @monit = Monit.new(params[:monit])

    respond_to do |format|
      if @monit.save
        format.html { redirect_to @monit, notice: 'Monit was successfully created.' }
        format.json { render json: @monit, status: :created, location: @monit }
      else
        format.html { render action: "new" }
        format.json { render json: @monit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /monits/1
  # PUT /monits/1.json
  def update
    @monit = Monit.find(params[:id])

    respond_to do |format|
      if @monit.update_attributes(params[:monit])
        format.html { redirect_to @monit, notice: 'Monit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @monit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monits/1
  # DELETE /monits/1.json
  def destroy
    @monit = Monit.find(params[:id])
    @monit.destroy

    respond_to do |format|
      format.html { redirect_to monits_url }
      format.json { head :no_content }
    end
  end
end
