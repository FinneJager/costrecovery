class EnginesController < ApplicationController
  # GET /engines
  # GET /engines.xml
 
  # GET /engines/1
  # GET /engines/1.xml
  #def show
  #  @engine = Engine.find(params[:id])

   # respond_to do |format|
     # format.html # show.html.erb
    #  format.xml  { render :xml => @engine }
   # end
 # end

  # GET /engines/new
  # GET /engines/new.xml
  def new
    @engine = Engine.new
	@timesheet = Incident.find(params[:incident_id]).timesheet

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @engine }
    end
  end

  # GET /engines/1/edit
  def edit
    @engine = Engine.find(params[:id])
  end

  # POST /engines
  # POST /engines.xml
  def create
    @timesheet = Incident.find(params[:incident_id]).timesheet
	@engine = @timesheet.engines.build(params[:engine])

    respond_to do |format|
      if @engine.save
        format.html { redirect_to(edit_incident_timesheet_path, :notice => 'Engine was successfully created.') }
      else
        format.html { render :new }
      end
    end
  end

  # PUT /engines/1
  # PUT /engines/1.xml
  def update
    @engine = Engine.find(params[:id])

    respond_to do |format|
      if @engine.update_attributes(params[:engine])
        format.html { redirect_to(incident_timesheet_path, :notice => 'Engine was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @engine.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /engines/1
  # DELETE /engines/1.xml
  def destroy
    @engine = Engine.find(params[:id])
    @engine.destroy

    respond_to do |format|
      format.html { redirect_to(incident_timesheet_path, :notice => 'Engine was successfully deleted.') }
      format.xml  { head :ok }
    end
  end
end
