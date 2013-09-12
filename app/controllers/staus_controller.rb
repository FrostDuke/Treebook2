class StausController < ApplicationController
  # GET /staus
  # GET /staus.json
  def index
    @staus = Stau.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @staus }
    end
  end

  # GET /staus/1
  # GET /staus/1.json
  def show
    @stau = Stau.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @stau }
    end
  end

  # GET /staus/new
  # GET /staus/new.json
  def new
    @stau = Stau.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stau }
    end
  end

  # GET /staus/1/edit
  def edit
    @stau = Stau.find(params[:id])
  end

  # POST /staus
  # POST /staus.json
  def create
    @stau = Stau.new(params[:stau])

    respond_to do |format|
      if @stau.save
        format.html { redirect_to @stau, notice: 'Stau was successfully created.' }
        format.json { render json: @stau, status: :created, location: @stau }
      else
        format.html { render action: "new" }
        format.json { render json: @stau.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /staus/1
  # PUT /staus/1.json
  def update
    @stau = Stau.find(params[:id])

    respond_to do |format|
      if @stau.update_attributes(params[:stau])
        format.html { redirect_to @stau, notice: 'Stau was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @stau.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /staus/1
  # DELETE /staus/1.json
  def destroy
    @stau = Stau.find(params[:id])
    @stau.destroy

    respond_to do |format|
      format.html { redirect_to staus_url }
      format.json { head :no_content }
    end
  end
end
