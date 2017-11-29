class BibsController < ApplicationController
  def index
    @bibs = Bib.all
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
    @bib = Bib.find(params[:id])
  end

  def update
    @bib = Bib.find(params[:id])
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
