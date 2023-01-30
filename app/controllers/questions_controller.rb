class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    # if @question.save
    #   redirect_to questions_path
    # else
    #   render :new
    # end
    respond_to do |format|
      if @question.save
        format.html { redirect_to questions_path, notice: "Question was successfully created." }
        format.json { render :show, status: :created, location: questions_path }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      redirect_to questions_path
    else
      render :edit
    end
  end

  def chapters
    @target = params[:target]
    @chapters = Chapter.where(curriculum_id: params[:curriculum_id])
    respond_to do |format|
      format.turbo_stream
    end
  end

  def lists
    p params[:hoge_id]
    p params[:fuga_id]
    @lists = [SecureRandom.hex(8), SecureRandom.hex(8), SecureRandom.hex(8)]
  end

  private

  def question_params
    params.require(:question).permit(:title, :content, :chapter_id)
  end
end
