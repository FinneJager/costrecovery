class PumpersController < ApplicationController
  # GET /pumpers
  # GET /pumpers.xml
 
  # GET /pumpers/1
  # GET /pumpers/1.xml
 # def show
  #  @pumper = Pumper.find(params[:id])

   # respond_to do |format|
     # format.html # show.html.erb
    #  format.xml  { render :xml => @pumper }
   # end
 # end

  # GET /pumpers/new
  # GET /pumpers/new.xml
  def new
    @pumper = Pumper.new
	@timesheet = Incident.find(params[:incident_id]).timesheet

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pumper }
    end
  end

  # GET /pumpers/1/edit
  def edit
    @pumper = Pumper.find(params[:id])
  end

  # POST /pumpers
  # POST /pumpers.xml
  def create
    @timesheet = Incident.find(params[:incident_id]).timesheet
	@pumper = @timesheet.pumpers.build(params[:pumper])

    respond_to do |format|
      if @pumper.save
        format.html { redirect_to(edit_incident_timesheet_path, :notice => 'Pumper was successfully created.') }
      else
        format.html { render :new }
      end
    end
  end

  # PUT /pumpers/1
  # PUT /pumpers/1.xml
  def update
    @pumper = Pumper.find(params[:id])

    respond_to do |format|
      if @pumper.update_attributes(params[:pumper])
        format.html { redirect_to(incident_timesheet_path, :notice => 'Pumper was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pumper.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pumpers/1
  # DELETE /pumpers/1.xml
  def destroy
    @pumper = Pumper.find(params[:id])
    @pumper.destroy

    respond_to do |format|
      format.html { redirect_to(incident_timesheet_path, :notice => 'Pumper was successfully deleted.') }
      format.xml  { head :ok }
    end
  end
end
