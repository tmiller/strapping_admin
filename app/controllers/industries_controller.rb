class IndustriesController < ApplicationController
  # GET /industries
  # GET /industries.json
  def index
    @industries = Industry.page(params[:page]).per(10)
  end

  # GET /industries/1
  # GET /industries/1.json
  def show
    @industry = Industry.find(params[:id])
  end

  # GET /industries/new
  # GET /industries/new.json
  def new
    @industry = Industry.new
  end

  # GET /industries/1/edit
  def edit
    @industry = Industry.find(params[:id])
  end

  # POST /industries
  # POST /industries.json
  def create
    @industry = Industry.new(params[:industry])

    if @industry.save
      redirect_to @industry, notice: 'Industry was successfully created.'
    else
      render action: "new"
    end
  end

  # PUT /industries/1
  # PUT /industries/1.json
  def update
    @industry = Industry.find(params[:id])

    if @industry.update_attributes(params[:industry])
      redirect_to @industry, notice: 'Industry was successfully updated.'
    else
      render action: "edit"
    end
  end

  # DELETE /industries/1
  # DELETE /industries/1.json
  def destroy
    @industry = Industry.find(params[:id])
    @industry.destroy
    redirect_to industries_url
  end
end
