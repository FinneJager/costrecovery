class CommandOfficersController < ApplicationController
before_filter :authenticate

  # GET /command_officers/1
  # GET /command_officers/1.xml
  #def show
   # @command_officer = Incident.find(params[:incident_id]).timesheet.command_officer

    #respond_to do |format|
     # format.html # show.html.erb
      #format.xml  { render :xml => @command_officer }
    #end
 # end

  # GET /command_officers/new
  # GET /command_officers/new.xml
  def new
    @command_officer = CommandOfficer.new
	@timesheet = Incident.find(params[:incident_id]).timesheet
	
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /command_officers/1/edit
  def edit
    @command_officer = CommandOfficer.find(params[:id])
  end

  # POST /command_officers
  # POST /command_officers.xml
 def create
    # @new_command_officer = CommandOfficer.new(params[:command_officer])
	@timesheet = Incident.find(params[:incident_id]).timesheet
    @command_officer = @timesheet.command_officer.build(params[:command_officer])
    
	respond_to do |format|
		if @command_officer.save
            format.html { redirect_to(edit_incident_timesheet_path, :notice => 'Command officer was successfully created.') }
		else
			flash[:error] = "What happened?"
			format.html { render :new }
		end
	end
  end

  # PUT /command_officers/1
  # PUT /command_officers/1.xml
  def update
    @command_officer = CommandOfficer.find(params[:id])

    respond_to do |format|
      if @command_officer.update_attributes(params[:command_officer])
        format.html { redirect_to(incident_timesheet_path, :notice => 'Command officer was successfully updated.') }
      else
        format.html { render :action => "edit" }
     end
    end
  end

  # DELETE /command_officers/1
  # DELETE /command_officers/1.xml
  def destroy
    @command_officer = CommandOfficer.find(params[:id])
    @command_officer.destroy

    respond_to do |format|
      format.html { redirect_to(incident_timesheet_path, :notice => 'Command officer was successfully deleted.') }
    end
  end
end
