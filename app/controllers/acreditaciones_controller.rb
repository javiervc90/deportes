class AcreditacionesController < ApplicationController
  # GET /acreditaciones
  # GET /acreditaciones.json
  def index
    @acreditaciones = Acreditacione.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @acreditaciones }
    end
  end

  # GET /acreditaciones/1
  # GET /acreditaciones/1.json
  def show
    @acreditacione = Acreditacione.find(params[:id])
    @alumnos = Alumno.all

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @acreditacione }
    end
  end

  # GET /acreditaciones/new
  # GET /acreditaciones/new.json
  def new
    @acreditacione = Acreditacione.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @acreditacione }
    end
  end

  # GET /acreditaciones/1/edit
  def edit
    @acreditacione = Acreditacione.find(params[:id])
  end

  # POST /acreditaciones
  # POST /acreditaciones.json
  def create
    @acreditacione = Acreditacione.new(params[:acreditacione])

    respond_to do |format|
      if @acreditacione.save
        format.html { redirect_to @acreditacione, :notice => 'Acreditacione was successfully created.' }
        format.json { render :json => @acreditacione, :status => :created, :location => @acreditacione }
      else
        format.html { render :action => "new" }
        format.json { render :json => @acreditacione.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /acreditaciones/1
  # PUT /acreditaciones/1.json
  def update
    @acreditacione = Acreditacione.find(params[:id])

    respond_to do |format|
      if @acreditacione.update_attributes(params[:acreditacione])
        format.html { redirect_to @acreditacione, :notice => 'Acreditacione was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @acreditacione.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /acreditaciones/1
  # DELETE /acreditaciones/1.json
  def destroy
    @acreditacione = Acreditacione.find(params[:id])
    @acreditacione.destroy

    respond_to do |format|
      format.html { redirect_to acreditaciones_url }
      format.json { head :ok }
    end
  end
end
