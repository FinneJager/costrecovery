class HazmatUnitsController < ApplicationController
  # GET /hazmat_units
  # GET /hazmat_units.xml
  

  # GET /hazmat_units/1
  # GET /hazmat_units/1.xml
#  def show
 #   @hazmat_unit = HazmatUnit.find(params[:id])

  #  respond_to do |format|
   #   format.html # show.html.erb
    #  format.xml  { render :xml => @hazmat_unit }
   # end
 # end

  # GET /hazmat_units/new
  # GET /hazmat_units/new.xml
  def new
    @hazmat_unit = HazmatUnit.new
	@timesheet = Incident.find(params[:incident_id]).timesheet

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @hazmat_unit }
    end
  end

  # GET /hazmat_units/1/edit
  def edit
    @hazmat_unit = HazmatUnit.find(params[:id])
  end

  # POST /hazmat_units
  # POST /hazmat_units.xml
  def create
    @timesheet = Incident.find(params[:incident_id]).timesheet
	@hazmat_unit = @timesheet.hazmat_units.build(params[:hazmat_unit])

    respond_to do |format|
      if @hazmat_unit.save
        format.html { redirect_to(edit_incident_timesheet_path, :notice => 'Hazmat Unit was successfully created.') }
      else
        format.html { render :new }
      end
    end
  end

  # PUT /hazmat_units/1
  # PUT /hazmat_units/1.xml
  def update
    @hazmat_unit = HazmatUnit.find(params[:id])

    respond_to do |format|
      if @hazmat_unit.update_attributes(params[:hazmat_unit])
        format.html { redirect_to(incident_timesheet_path, :notice => 'Hazmat unit was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @hazmat_unit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /hazmat_units/1
  # DELETE /hazmat_units/1.xml
  def destroy
    @hazmat_unit = HazmatUnit.find(params[:id])
    @hazmat_unit.destroy

    respond_to do |format|
      format.html { redirect_to(incident_timesheet_path, :notice => 'Hazmat Unit was successfully deleted.') }
      format.xml  { head :ok }
    end
  end
end
