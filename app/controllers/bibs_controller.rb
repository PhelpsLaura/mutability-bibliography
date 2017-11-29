class BibsController < ApplicationController
  def index
    redirect_to bib_path(1)
  end

  def show
    @bib = Bib.find(params[:id])
  end

  def new
    @bib = Bib.new
  end

  def create
    @bib = Bib.new(bib_params)
    if @bib.save
      redirect_to bib_path(@bib)
    else
      render 'new'
    end
  end

  def edit
    @bib = Bib.find(1)
  end

  def update
    @bib = Bib.find(1)
    if @bib.update(bib_params)
      redirect_to bib_path(@bib)
    else
      render 'edit'
    end
  end

  def destroy
    @bib = Bib.find(params[:id])
    @bib.destroy

    redirect_to bibs_path
  end

  private
    def bib_params
      params.require(:bib).permit(:options)
    end
end
