class SafetyOfficersController < ApplicationController
  # GET /safety_officers
  # GET /safety_officers.xml
 
  # GET /safety_officers/1
  # GET /safety_officers/1.xml
  #def show
  #  @safety_officer = SafetyOfficer.find(params[:id])

   # respond_to do |format|
    #  format.html # show.html.erb
     # format.xml  { render :xml => @safety_officer }
    #end
 # end

  # GET /safety_officers/new
  # GET /safety_officers/new.xml
  def new
    @safety_officer = SafetyOfficer.new
	@timesheet = Incident.find(params[:incident_id]).timesheet

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @safety_officer }
    end
  end

  # GET /safety_officers/1/edit
  def edit
    @safety_officer = SafetyOfficer.find(params[:id])
  end

  # POST /safety_officers
  # POST /safety_officers.xml
  def create
    @timesheet = Incident.find(params[:incident_id]).timesheet
	@safety_officer = @timesheet.safety_officer.build(params[:safety_officer])

    respond_to do |format|
      if @safety_officer.save
        format.html { redirect_to(edit_incident_timesheet_path, :notice => 'Safety Officer was successfully created.') }
      else
        format.html { render :new }
      end
    end
  end

  # PUT /safety_officers/1
  # PUT /safety_officers/1.xml
  def update
    @safety_officer = SafetyOfficer.find(params[:id])

    respond_to do |format|
      if @safety_officer.update_attributes(params[:safety_officer])
        format.html { redirect_to(incident_timesheet_path, :notice => 'Safety officer was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @safety_officer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /safety_officers/1
  # DELETE /safety_officers/1.xml
  def destroy
    @safety_officer = SafetyOfficer.find(params[:id])
    @safety_officer.destroy

    respond_to do |format|
      format.html { redirect_to(incident_timesheet_path, :notice => 'Safety Officer was successfully deleted.') }
      format.xml  { head :ok }
    end
  end
end
