class IncidentsController < ApplicationController
	
  before_filter :authenticate
    
  # GET /incidents
  # GET /incidents.xml
  def index
    if current_user.admin == "yes"
	
	#  if params[:user][:id]
	#  @incidents = Incident.where("user_id = ?", params[:user][:id])
	#  @users = User.all
	#  else	  
	 @incidents = Incident.all(:order => 'created_at DESC')
	@users = User.all
#	end
	
	else
	@incidents = current_user.incidents
  end
  
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @incidents }
    end
  end

  # GET /incidents/1
  # GET /incidents/1.xml
  def show
    @incident = Incident.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @incident }
    end
  end

  # GET /incidents/new
  # GET /incidents/new.xml
  def new
    @incident = Incident.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @incident }
    end
  end

  # GET /incidents/1/edit
  def edit
    @incident = Incident.find(params[:id])
  end
  
  def changestatus
    @incident = Incident.find(params[:id])
  end

  # POST /incidents
  # POST /incidents.xml
  def create
    @incident = current_user.incidents.new(params[:incident])
	@incident.status = "Received"
	
    respond_to do |format|
      if @incident.save
	  @incident.create_timesheet()
	  @incident.create_mat_list()
		  
	  @name = User.find(@incident.user_id).profile.name
	  Notifier.send_notice(@name).deliver
	  	  
	  format.html { redirect_to edit_incident_timesheet_path(@incident), :notice => "The Incident has been saved! Now please fill in the timesheet by adding personnel and materials below." }
	    else
        format.html { render :action => "new" }
        format.xml  { render :xml => @incident.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /incidents/1
  # PUT /incidents/1.xml
  def update
    @incident = Incident.find(params[:id])

    respond_to do |format|
      if @incident.update_attributes(params[:incident])
        format.html { redirect_to(@incident) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @incident.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /incidents/1
  # DELETE /incidents/1.xml
  def destroy
    if current_user.admin == "yes"
	@incident = Incident.find(params[:id])
	else
    @incident = current_user.incidents.find(params[:id])
	end
	
    @incident.destroy

    respond_to do |format|
      format.html { redirect_to(incidents_url) }
      format.xml  { head :ok }
    end
  end
  
 end
