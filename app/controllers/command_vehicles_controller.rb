class CommandVehiclesController < ApplicationController
  # GET /command_vehicles
  # GET /command_vehicles.xml
  
  # GET /command_vehicles/1
  # GET /command_vehicles/1.xml
 # def show
  #  @command_vehicle = CommandVehicle.find(params[:id])

   # respond_to do |format|
    #  format.html # show.html.erb
     # format.xml  { render :xml => @command_vehicle }
    #end
 # end

  # GET /command_vehicles/new
  # GET /command_vehicles/new.xml
  def new
    @command_vehicle = CommandVehicle.new
	@timesheet = Incident.find(params[:incident_id]).timesheet

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @command_vehicle }
    end
  end

  # GET /command_vehicles/1/edit
  def edit
    @command_vehicle = CommandVehicle.find(params[:id])
  end

  # POST /command_vehicles
  # POST /command_vehicles.xml
  def create
    @timesheet = Incident.find(params[:incident_id]).timesheet
	@command_vehicle = @timesheet.command_vehicles.build(params[:command_vehicle])

    respond_to do |format|
      if @command_vehicle.save
        format.html { redirect_to(edit_incident_timesheet_path, :notice => 'Command Vehicle was successfully created.') }
      else
        flash[:error] = "What happened?"
		format.html { render :new }
      end
    end
  end

  # PUT /command_vehicles/1
  # PUT /command_vehicles/1.xml
  def update
    @command_vehicle = CommandVehicle.find(params[:id])

    respond_to do |format|
      if @command_vehicle.update_attributes(params[:command_vehicle])
        format.html { redirect_to(incident_timesheet_path, :notice => 'Command vehicle was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @command_vehicle.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /command_vehicles/1
  # DELETE /command_vehicles/1.xml
  def destroy
    @command_vehicle = CommandVehicle.find(params[:id])
    @command_vehicle.destroy

    respond_to do |format|
      format.html { redirect_to(incident_timesheet_path, :notice => 'Command Vehicle was successfully deleted.') }
      format.xml  { head :ok }
    end
  end
end
