class CvSectionsController < ApplicationController
  # GET /cv_sections
  # GET /cv_sections.json
  def index
    @cv_sections = CvSection.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cv_sections }
    end
  end

  # GET /cv_sections/1
  # GET /cv_sections/1.json
  def show
    @cv_section = CvSection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cv_section }
    end
  end

  # GET /cv_sections/new
  # GET /cv_sections/new.json
  def new
    @cv_section = CvSection.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cv_section }
    end
  end

  # GET /cv_sections/1/edit
  def edit
    @cv_section = CvSection.find(params[:id])
  end

  # POST /cv_sections
  # POST /cv_sections.json
  def create
    @cv_section = CvSection.new(params[:cv_section])

    respond_to do |format|
      if @cv_section.save
        format.html { redirect_to @cv_section, notice: 'Cv section was successfully created.' }
        format.json { render json: @cv_section, status: :created, location: @cv_section }
      else
        format.html { render action: "new" }
        format.json { render json: @cv_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cv_sections/1
  # PUT /cv_sections/1.json
  def update
    @cv_section = CvSection.find(params[:id])

    respond_to do |format|
      if @cv_section.update_attributes(params[:cv_section])
        format.html { redirect_to @cv_section, notice: 'Cv section was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cv_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cv_sections/1
  # DELETE /cv_sections/1.json
  def destroy
    @cv_section = CvSection.find(params[:id])
    @cv_section.destroy

    respond_to do |format|
      format.html { redirect_to cv_sections_url }
      format.json { head :no_content }
    end
  end
end
