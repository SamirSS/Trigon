class France_Travel
  attr_reader = :determine_location
  
  def initialize(params)
    @results = params
    @paris = {:city => "Paris"}
    @perouges = {:city => "Perouges"}
  end
  
  def determine_location 
    if @results[:environment] == "busy" && @results[:preference] == "warm" && @results[:water] == "nemo"
      return {:city => "Marseille"}
    elsif @results[:environment] == "busy" && @results[:preference] == "warm" && @results[:water] == "cat"
      @paris
    elsif @results[:environment] == "busy" && @results[:preference] == "cool" && @results[:water] == "nemo"
      @paris
    elsif @results[:environment] == "busy" && @results[:preference] == "cool" && @results[:water] == "cat"
      return {:city => "Lyon"}
    elsif @results[:environment] == "quiet" && @results[:preference] == "warm" && @results[:water] == "nemo"
      @perouges
    elsif @results[:environment] == "quiet" && @results[:preference] == "warm" && @results[:water] == "cat"
      @perouges
    elsif @results[:environment] == "quiet" && @results[:preference] == "cool" && @results[:water] == "nemo"
      return {:city => "Annecy"}
    elsif @results[:environment] == "quiet" && @results[:preference] == "warm" && @results[:water] == "nemo"
      return {:city => "Saint Veran"}
    end
   end
end