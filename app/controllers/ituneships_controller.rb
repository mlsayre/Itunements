class ItuneshipsController < ApplicationController
  # GET /ituneships
  # GET /ituneships.json
  def index
    @ituneships = Ituneship.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ituneships }
    end
  end

  # GET /ituneships/1
  # GET /ituneships/1.json
  def show
    @ituneship = Ituneship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ituneship }
    end
  end

  # GET /ituneships/new
  # GET /ituneships/new.json
  def new
    @ituneship = Ituneship.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ituneship }
    end
  end

  # GET /ituneships/1/edit
  def edit
    @ituneship = Ituneship.find(params[:id])
  end

  # POST /ituneships
  # POST /ituneships.json
  def create
    @ituneship = Ituneship.new(params[:ituneship])

    respond_to do |format|
      if @ituneship.save
        format.html { redirect_to @ituneship, notice: 'Ituneship was successfully created.' }
        format.json { render json: @ituneship, status: :created, location: @ituneship }
      else
        format.html { render action: "new" }
        format.json { render json: @ituneship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ituneships/1
  # PUT /ituneships/1.json
  def update
    @ituneship = Ituneship.find(params[:id])

    respond_to do |format|
      if @ituneship.update_attributes(params[:ituneship])
        format.html { redirect_to @ituneship, notice: 'Ituneship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ituneship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ituneships/1
  # DELETE /ituneships/1.json
  def destroy
    @ituneship = Ituneship.find(params[:id])
    @ituneship.destroy

    respond_to do |format|
      format.html { redirect_to ituneships_url }
      format.json { head :no_content }
    end
  end
end
