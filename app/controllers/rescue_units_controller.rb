class RescueUnitsController < ApplicationController
  # GET /rescue_units
  # GET /rescue_units.xml
  

  # GET /rescue_units/1
  # GET /rescue_units/1.xml
 # def show
  #  @rescue_unit = RescueUnit.find(params[:id])

   # respond_to do |format|
    #  format.html # show.html.erb
     # format.xml  { render :xml => @rescue_unit }
   # end
 # end

  # GET /rescue_units/new
  # GET /rescue_units/new.xml
  def new
    @rescue_unit = RescueUnit.new
    @timesheet = Incident.find(params[:incident_id]).timesheet
	
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @rescue_unit }
    end
  end

  # GET /rescue_units/1/edit
  def edit
    @rescue_unit = RescueUnit.find(params[:id])
  end

  # POST /rescue_units
  # POST /rescue_units.xml
  def create
    @timesheet = Incident.find(params[:incident_id]).timesheet
	@rescue_unit = @timesheet.rescue_units.build(params[:rescue_unit])

    respond_to do |format|
      if @rescue_unit.save
        format.html { redirect_to(edit_incident_timesheet_path, :notice => 'Rescue Unit was successfully created.') }
      else
        format.html { render :new }
      end
    end
  end

  # PUT /rescue_units/1
  # PUT /rescue_units/1.xml
  def update
    @rescue_unit = RescueUnit.find(params[:id])

    respond_to do |format|
      if @rescue_unit.update_attributes(params[:rescue_unit])
        format.html { redirect_to(incident_timesheet_path, :notice => 'Rescue unit was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @rescue_unit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /rescue_units/1
  # DELETE /rescue_units/1.xml
  def destroy
    @rescue_unit = RescueUnit.find(params[:id])
    @rescue_unit.destroy

    respond_to do |format|
      format.html { redirect_to(incident_timesheet_path, :notice => 'Rescue Unit was successfully deleted.') }
      format.xml  { head :ok }
    end
  end
end
