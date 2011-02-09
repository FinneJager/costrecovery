class EmergencySupportsController < ApplicationController
  # GET /emergency_supports
  # GET /emergency_supports.xml
  
  # GET /emergency_supports/1
  # GET /emergency_supports/1.xml
  #def show
   # @emergency_support = EmergencySupport.find(params[:id])

   # respond_to do |format|
   #   format.html # show.html.erb
   #   format.xml  { render :xml => @emergency_support }
   # end
 # end

  # GET /emergency_supports/new
  # GET /emergency_supports/new.xml
  def new
    @emergency_support = EmergencySupport.new
	@timesheet = Incident.find(params[:incident_id]).timesheet

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @emergency_support }
    end
  end

  # GET /emergency_supports/1/edit
  def edit
    @emergency_support = EmergencySupport.find(params[:id])
  end

  # POST /emergency_supports
  # POST /emergency_supports.xml
  def create
   @timesheet = Incident.find(params[:incident_id]).timesheet
   @emergency_support = @timesheet.emergency_supports.build(params[:emergency_support])

    respond_to do |format|
      if @emergency_support.save
        format.html { redirect_to(edit_incident_timesheet_path, :notice => 'Emergency Support was successfully created.') }
      else
        format.html { render :new }
      end
    end
  end

  # PUT /emergency_supports/1
  # PUT /emergency_supports/1.xml
  def update
    @emergency_support = EmergencySupport.find(params[:id])

    respond_to do |format|
      if @emergency_support.update_attributes(params[:emergency_support])
        format.html { redirect_to(incident_timesheet_path, :notice => 'Emergency support was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @emergency_support.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /emergency_supports/1
  # DELETE /emergency_supports/1.xml
  def destroy
    @emergency_support = EmergencySupport.find(params[:id])
    @emergency_support.destroy

    respond_to do |format|
      format.html { redirect_to(incident_timesheet_path, :notice => 'Emergency Support was successfully deleted.') }
      format.xml  { head :ok }
    end
  end
end
