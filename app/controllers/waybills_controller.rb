class WaybillsController < ApplicationController
  # GET /waybills
  # GET /waybills.json
  def index
    @waybills = Waybill.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @waybills }
    end
  end

  # GET /waybills/1
  # GET /waybills/1.json
  def show
    @waybill = Waybill.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @waybill }
    end
  end

  # GET /waybills/new
  # GET /waybills/new.json
  def new
    @waybill = Waybill.new
    @locations = Location.find(:all)
    @purchaseorders = PurchaseOrder.find(:all)
    @transporters = Transporter.find(:all)
    @vehicles = Vehicle.find(:all)
    @drivers = Driver.find(:all)
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @waybill }
    end
  end

  # GET /waybills/1/edit
  def edit
    @waybill = Waybill.find(params[:id])
  end

  # POST /waybills
  # POST /waybills.json
  def create
    @waybill = Waybill.new(params[:waybill])

    respond_to do |format|
      if @waybill.save
        format.html { redirect_to @waybill, notice: 'Waybill was successfully created.' }
        format.json { render json: @waybill, status: :created, location: @waybill }
      else
        format.html { render action: "new" }
        format.json { render json: @waybill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /waybills/1
  # PUT /waybills/1.json
  def update
    @waybill = Waybill.find(params[:id])

    respond_to do |format|
      if @waybill.update_attributes(params[:waybill])
        format.html { redirect_to @waybill, notice: 'Waybill was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @waybill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /waybills/1
  # DELETE /waybills/1.json
  def destroy
    @waybill = Waybill.find(params[:id])
    @waybill.destroy

    respond_to do |format|
      format.html { redirect_to waybills_url }
      format.json { head :no_content }
    end
  end
end
