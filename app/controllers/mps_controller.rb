class MpsController < ApplicationController
  # GET /mps
  # GET /mps.json
  def import

   Mp.import(params[:file])

   redirect_to mps_url, notice: "MPs imported."
    
  end

  def index
    @mps = Mp.find_each
    @constituencies = Constituency.find_each

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mps }
      format.xls # { send_data @equipment.to_csv(col_sep: "\t") }
      format.xlsx # { send_data @equipment.to_csv(col_sep: "\t") }
    end
  end

  # GET /mps/1
  # GET /mps/1.json
  def show
    @mp = Mp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mp }
    end
  end

  # GET /mps/new
  # GET /mps/new.json
  def new
    @mp = Mp.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mp }
    end
  end

  # GET /mps/1/edit
  def edit
    @mp = Mp.find(params[:id])
  end

  # POST /mps
  # POST /mps.json
  def create
    @mp = Mp.new(params[:mp])

    respond_to do |format|
      if @mp.save
        format.html { redirect_to @mp, notice: 'Mp was successfully created.' }
        format.json { render json: @mp, status: :created, location: @mp }
      else
        format.html { render action: "new" }
        format.json { render json: @mp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mps/1
  # PUT /mps/1.json
  def update
    @mp = Mp.find(params[:id])

    respond_to do |format|
      if @mp.update_attributes(params[:mp])
        format.html { redirect_to @mp, notice: 'Mp was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mps/1
  # DELETE /mps/1.json
  def destroy
    @mp = Mp.find(params[:id])
    @mp.destroy

    respond_to do |format|
      format.html { redirect_to mps_url }
      format.json { head :no_content }
    end
  end
end
