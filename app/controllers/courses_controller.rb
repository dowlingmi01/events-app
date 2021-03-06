class CoursesController < ApplicationController
  before_action :set_course, only: [ :show, :edit, :update, :destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  skip_after_action :verify_authorized

  # before_action :authorize_owner!, only: [:edit, :update, :destroy]
  # GET /courses or /courses.json
  def index
    if params[:query].present?
      @courses = Course.search(params[:query])
    else
      @courses = Course.order(created_at: :desc)      
    end
  end

  # GET /courses/1 or /courses/1.json
  def show
  end

  # GET /courses/new
  def new
    @course = Course.new
  end

  # GET /courses/1/edit
  def edit
    authorize @course
  end

  # POST /courses or /courses.json
  def create
    @course = Course.new(course_params)

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: "Course was successfully created." }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courses/1 or /courses/1.json
  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course, notice: "Course was successfully updated." }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1 or /courses/1.json
  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url, notice: "Course was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_course
      @course = Course.friendly.find(params[:id])

      rescue ActiveRecord::RecordNotFound
        flash[:alert] #= "The page you requested does not exist"
        redirect_to events_path

    end

    # Only allow a list of trusted parameters through.
    def course_params
      params.require(:course).permit(:title, :description, :text, :short_description)
    end
end
