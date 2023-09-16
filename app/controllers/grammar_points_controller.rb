class GrammarPointsController < ApplicationController
  before_action :authenticate_user!, except: %i[index show citation more_examples ]
  before_action :authorize_admin, only: %i[ edit update destroy ]
  before_action :set_grammar_point, only: %i[ show edit update destroy citation more_examples ]

  # GET /grammar_points or /grammar_points.json
  def index
    @grammar_points = GrammarPoint.all
  end

  # GET /grammar_points/1 or /grammar_points/1.json
  def show
  end

  # GET /grammar_points/new
  def new
    if current_user.admin?
      @grammar_point = GrammarPoint.new
    end
  end

  # GET /grammar_points/1/edit
  def edit
    if current_user.admin?

    end
  end

  # POST /grammar_points or /grammar_points.json
  def create
    @grammar_point = GrammarPoint.new(grammar_point_params)

    respond_to do |format|
      if @grammar_point.save
        format.html { redirect_to grammar_point_url(@grammar_point), notice: "Grammar point was successfully created." }
        format.json { render :show, status: :created, location: @grammar_point }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @grammar_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grammar_points/1 or /grammar_points/1.json
  def update
    respond_to do |format|
      if @grammar_point.update(grammar_point_params)
        format.html { redirect_to grammar_point_url(@grammar_point), notice: "Grammar point was successfully updated." }
        format.json { render :show, status: :ok, location: @grammar_point }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @grammar_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grammar_points/1 or /grammar_points/1.json
  def destroy
    @grammar_point.destroy

    respond_to do |format|
      format.html { redirect_to grammar_points_url, notice: "Grammar point was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def citation
  end

  def more_examples
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grammar_point
      @grammar_point = GrammarPoint.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      redirect_to grammar_points_path
    end

    # Only allow a list of trusted parameters through.
    def grammar_point_params
      params.require(:grammar_point).permit(:grammar_point_japanese, :grammar_point_brief_translation, :jlpt_level, :highlight_example, :highlight_example_translation, :caution_text, :caution_examples, :structure_text, :about_grammar, :about_grammar_example_one, :about_grammar_example_one_translation, :about_grammar_example_two, :about_grammar_example_two_translation, :about_grammar_example_three, :about_grammar_example_three_translation, :bonus_example_one, :bonus_example_one_translation, :bonus_example_two, :bonus_example_two_translation, :bonus_example_three, :bonus_example_three_translation, :resources_titles, :resources_urls)
    end

    # only admins can edit update and destroy the grammar point
    def authorize_admin 
      return unless !current_user.admin?
      redirect_to grammar_points_path, alert: 'Admins only!'
    end
end
