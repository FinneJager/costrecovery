class FireFightersController < ApplicationController
 
  # GET /fire_fighters/1
  # GET /fire_fighters/1.xml
  #def show
   # @fire_fighter = FireFighter.find(params[:id])

   # respond_to do |format|
   #   format.html # show.html.erb
   #   format.xml  { render :xml => @fire_fighter }
   # end
  #end

  # GET /fire_fighters/new
  # GET /fire_fighters/new.xml
  def new
    @fire_fighter = FireFighter.new
	@timesheet = Incident.find(params[:incident_id]).timesheet

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @fire_fighter }
    end
  end

  # GET /fire_fighters/1/edit
  def edit
    @fire_fighter = FireFighter.find(params[:id])
 end

  # POST /fire_fighters
  # POST /fire_fighters.xml
  def create
    @timesheet = Incident.find(params[:incident_id]).timesheet
	@fire_fighter = @timesheet.fire_fighters.build(params[:fire_fighter])

    respond_to do |format|
      if @fire_fighter.save
        format.html { redirect_to(edit_incident_timesheet_path, :notice => 'Fire Fighter was successfully created.') }
      else
        format.html { render :new }
      end
    end
  end

  # PUT /fire_fighters/1
  # PUT /fire_fighters/1.xml
  def update
    @fire_fighter = FireFighter.find(params[:id])

    respond_to do |format|
      if @fire_fighter.update_attributes(params[:fire_fighter])
        format.html { redirect_to(incident_timesheet_path, :notice => 'Fire fighter was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @fire_fighter.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /fire_fighters/1
  # DELETE /fire_fighters/1.xml
  def destroy
    @fire_fighter = FireFighter.find(params[:id])
    @fire_fighter.destroy

    respond_to do |format|
      format.html { redirect_to(incident_timesheet_path, :notice => 'Fire Fighter was successfully deleted.') }
    end
  end
end
