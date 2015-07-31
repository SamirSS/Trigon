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
      return {:city => "Nice"}
    elsif @results[:environment] == "busy" && @results[:preference] == "cool" && @results[:water] == "cat"
      return {:city => "Toulouse"}
    elsif @results[:environment] == "quiet" && @results[:preference] == "warm" && @results[:water] == "nemo"
      return {:city => "Piana"}
    elsif @results[:environment] == "quiet" && @results[:preference] == "warm" && @results[:water] == "cat"
      @perouges
    elsif @results[:environment] == "quiet" && @results[:preference] == "cool" && @results[:water] == "nemo"
      return {:city => "Annecy"}
    elsif @results[:environment] == "quiet" && @results[:preference] == "warm" && @results[:water] == "nemo"
      return {:city => "Bonneval-sur-arc"}
    end
   end
end