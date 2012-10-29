class FireChiefsController < ApplicationController
    
  # GET /fire_chiefs/1
  # GET /fire_chiefs/1.xml
  #def show
  #  @fire_chief = FireChief.find(params[:id])

    #respond_to do |format|
     # format.html # show.hml.erb
#      format.xml  { render :xml => @fire_chief }
 #   end
#  end

  # GET /fire_chiefs/new
  # GET /fire_chiefs/new.xml
  def new
    @fire_chief = FireChief.new
	@timesheet = Incident.find(params[:incident_id]).timesheet

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @fire_chief }
    end
  end

  # GET /fire_chiefs/1/edit
  def edit
	@fire_chief = FireChief.find(params[:id])
  end

  # POST /fire_chiefs
  # POST /fire_chiefs.xml
   def create
    # @new_command_officer = CommandOfficer.new(params[:command_officer])
	@timesheet = Incident.find(params[:incident_id]).timesheet
    @fire_chief = @timesheet.fire_chief.build(params[:fire_chief])
    
	respond_to do |format|
		if @fire_chief.save
            format.html { redirect_to(edit_incident_timesheet_path, :notice => 'Fire Chief was successfully created.') }
		else
			format.html { render :new }
		end
	end
  end

  # PUT /fire_chiefs/1
  # PUT /fire_chiefs/1.xml
  def update
    @fire_chief = FireChief.find(params[:id])

    respond_to do |format|
      if @fire_chief.update_attributes(params[:fire_chief])
        format.html { redirect_to(incident_timesheet_path, :notice => 'Fire chief was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @fire_chief.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /fire_chiefs/1
  # DELETE /fire_chiefs/1.xml
  def destroy
    @fire_chief = FireChief.find(params[:id])
    @fire_chief.destroy

    respond_to do |format|
      format.html { redirect_to(incident_timesheet_path, :notice => 'Fire Chief was successfully deleted.') }
    end
  end
end
