class SubjectController < ApplicationController
  layout false

  def index
    @subjects = Subject.sorted
  end

  def show
    @subjects = Subject.find(params[:id])
  end

  def new
  end

  def edit
  end

  def delete
  end

end
