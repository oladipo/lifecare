class PreshipmentAdvicesController < ApplicationController
  # GET /preshipment_advices
  # GET /preshipment_advices.json
  def index
    @preshipment_advices = PreshipmentAdvice.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @preshipment_advices }
    end
  end

  # GET /preshipment_advices/1
  # GET /preshipment_advices/1.json
  def show
    @preshipment_advice = PreshipmentAdvice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @preshipment_advice }
    end
  end

  # GET /preshipment_advices/new
  # GET /preshipment_advices/new.json
  def new
    @preshipment_advice = PreshipmentAdvice.new
    @customers = Customer.find(:all)
    @waybills = Waybill.find(:all)
    @vehicles = Vehicle.find(:all)
    @drivers = Driver.find(:all)
    @locations = Location.find(:all)
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @preshipment_advice }
    end
  end

  # GET /preshipment_advices/1/edit
  def edit
    @preshipment_advice = PreshipmentAdvice.find(params[:id])
  end

  # POST /preshipment_advices
  # POST /preshipment_advices.json
  def create
    @preshipment_advice = PreshipmentAdvice.new(params[:preshipment_advice])

    respond_to do |format|
      if @preshipment_advice.save
        format.html { redirect_to @preshipment_advice, notice: 'Preshipment advice was successfully created.' }
        format.json { render json: @preshipment_advice, status: :created, location: @preshipment_advice }
      else
        format.html { render action: "new" }
        format.json { render json: @preshipment_advice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /preshipment_advices/1
  # PUT /preshipment_advices/1.json
  def update
    @preshipment_advice = PreshipmentAdvice.find(params[:id])

    respond_to do |format|
      if @preshipment_advice.update_attributes(params[:preshipment_advice])
        format.html { redirect_to @preshipment_advice, notice: 'Preshipment advice was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @preshipment_advice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /preshipment_advices/1
  # DELETE /preshipment_advices/1.json
  def destroy
    @preshipment_advice = PreshipmentAdvice.find(params[:id])
    @preshipment_advice.destroy

    respond_to do |format|
      format.html { redirect_to preshipment_advices_url }
      format.json { head :no_content }
    end
  end
end
