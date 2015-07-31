class US_Travel
  attr_reader = :determine_location
  
  def initialize(params)
    @results = params
  end
  
  def determine_location 
    if @results[:environment] == "busy" && @results[:preference] == "warm" && @results[:water] == "nemo"
      return {:city => "Orlando"}
    elsif @results[:environment] == "busy" && @results[:preference] == "warm" && @results[:water] == "cat"
      return {:city => "Phoenix"}
    elsif @results[:environment] == "busy" && @results[:preference] == "cool" && @results[:water] == "nemo"
      return {:city => "Boston"}
    elsif @results[:environment] == "busy" && @results[:preference] == "cool" && @results[:water] == "cat"
      return {:city => "Denver"}
    elsif @results[:environment] == "quiet" && @results[:preference] == "warm" && @results[:water] == "nemo"
      return {:city => "Tacoma"}
    elsif @results[:environment] == "quiet" && @results[:preference] == "warm" && @results[:water] == "cat"
      return {:city => "Rialto"}
    elsif @results[:environment] == "quiet" && @results[:preference] == "cool" && @results[:water] == "nemo"
      return {:city => "Castine"}
    elsif @results[:environment] == "quiet" && @results[:preference] == "cool" && @results[:water] == "cat"
      return {:city => "Fairbanks"}
    end
   end
end