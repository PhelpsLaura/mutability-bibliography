module BibsHelper


    #/x tells Ruby to ignore whitespace between regex tokens.
    #/i makes the regex match case insensitive.
  def get_partials
    @bib = Bib.find(params[:id])
    arr = @bib.options.scan(/hello|world/ix)
    return arr
  end
end
