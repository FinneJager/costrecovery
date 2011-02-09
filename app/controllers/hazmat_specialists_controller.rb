class HazmatSpecialistsController < ApplicationController
  # GET /hazmat_specialists
  # GET /hazmat_specialists.xml
 

  # GET /hazmat_specialists/1
  # GET /hazmat_specialists/1.xml
 # def show
  #  @hazmat_specialist = HazmatSpecialist.find(params[:id])

   # respond_to do |format|
    #  format.html # show.html.erb
     # format.xml  { render :xml => @hazmat_specialist }
   # end
 # end

  # GET /hazmat_specialists/new
  # GET /hazmat_specialists/new.xml
  def new
    @hazmat_specialist = HazmatSpecialist.new
    @timesheet = Incident.find(params[:incident_id]).timesheet
	
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @hazmat_specialist }
    end
  end

  # GET /hazmat_specialists/1/edit
  def edit
    @hazmat_specialist = HazmatSpecialist.find(params[:id])
  end

  # POST /hazmat_specialists
  # POST /hazmat_specialists.xml
  def create
    @timesheet = Incident.find(params[:incident_id]).timesheet
	@hazmat_specialist = @timesheet.hazmat_specialists.build(params[:hazmat_specialist])

    respond_to do |format|
      if @hazmat_specialist.save
        format.html { redirect_to(edit_incident_timesheet_path, :notice => 'Hazmat Specialist was successfully created.') }
      else
        format.html { render :new }
      end
    end
  end

  # PUT /hazmat_specialists/1
  # PUT /hazmat_specialists/1.xml
  def update
    @hazmat_specialist = HazmatSpecialist.find(params[:id])

    respond_to do |format|
      if @hazmat_specialist.update_attributes(params[:hazmat_specialist])
        format.html { redirect_to(incident_timesheet_path, :notice => 'Hazmat specialist was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @hazmat_specialist.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /hazmat_specialists/1
  # DELETE /hazmat_specialists/1.xml
  def destroy
    @hazmat_specialist = HazmatSpecialist.find(params[:id])
    @hazmat_specialist.destroy

    respond_to do |format|
      format.html { redirect_to(incident_timesheet_path, :notice => 'Hazmat Specialist was successfully deleted.') }
      format.xml  { head :ok }
    end
  end
end
