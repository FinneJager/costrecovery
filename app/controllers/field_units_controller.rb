class FieldUnitsController < ApplicationController
  # GET /field_units
  # GET /field_units.xml
 

  # GET /field_units/1
  # GET /field_units/1.xml
 # def show
  #  @field_unit = FieldUnit.find(params[:id])

   # respond_to do |format|
    #  format.html # show.html.erb
     # format.xml  { render :xml => @field_unit }
  #  end
 # end

  # GET /field_units/new
  # GET /field_units/new.xml
  def new
    @field_unit = FieldUnit.new
	@timesheet = Incident.find(params[:incident_id]).timesheet

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @field_unit }
    end
  end

  # GET /field_units/1/edit
  def edit
    @field_unit = FieldUnit.find(params[:id])
  end

  # POST /field_units
  # POST /field_units.xml
  def create
    @timesheet = Incident.find(params[:incident_id]).timesheet
	@field_unit = @timesheet.field_units.build(params[:field_unit])

    respond_to do |format|
      if @field_unit.save
        format.html { redirect_to(edit_incident_timesheet_path, :notice => 'Field Unit was successfully created.') }
      else
        format.html { render :new }
      end
    end
  end

  # PUT /field_units/1
  # PUT /field_units/1.xml
  def update
    @field_unit = FieldUnit.find(params[:id])

    respond_to do |format|
      if @field_unit.update_attributes(params[:field_unit])
        format.html { redirect_to(incident_timesheet_path, :notice => 'Field unit was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @field_unit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /field_units/1
  # DELETE /field_units/1.xml
  def destroy
    @field_unit = FieldUnit.find(params[:id])
    @field_unit.destroy

    respond_to do |format|
      format.html { redirect_to(incident_timesheet_path, :notice => 'Field Unit was successfully deleted.') }
      format.xml  { head :ok }
    end
  end
end
