class TankersController < ApplicationController
  # GET /tankers
  # GET /tankers.xml
 
  # GET /tankers/1
  # GET /tankers/1.xml
#  def show
 #   @tanker = Tanker.find(params[:id])

  #  respond_to do |format|
   #   format.html # show.html.erb
    #  format.xml  { render :xml => @tanker }
   # end
 # end

  # GET /tankers/new
  # GET /tankers/new.xml
  def new
    @tanker = Tanker.new
	@timesheet = Incident.find(params[:incident_id]).timesheet

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tanker }
    end
  end

  # GET /tankers/1/edit
  def edit
    @tanker = Tanker.find(params[:id])
  end

  # POST /tankers
  # POST /tankers.xml
  def create
    @timesheet = Incident.find(params[:incident_id]).timesheet
	@tanker = @timesheet.tankers.build(params[:tanker])

    respond_to do |format|
      if @tanker.save
        format.html { redirect_to(edit_incident_timesheet_path, :notice => 'Tanker was successfully created.') }
      else
        format.html { render :new }
      end
    end
  end

  # PUT /tankers/1
  # PUT /tankers/1.xml
  def update
    @tanker = Tanker.find(params[:id])

    respond_to do |format|
      if @tanker.update_attributes(params[:tanker])
        format.html { redirect_to(incident_timesheet_path, :notice => 'Tanker was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tanker.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tankers/1
  # DELETE /tankers/1.xml
  def destroy
    @tanker = Tanker.find(params[:id])
    @tanker.destroy

    respond_to do |format|
      format.html { redirect_to(incident_timesheet_path, :notice => 'Tanker was successfully deleted.') }
      format.xml  { head :ok }
    end
  end
end
