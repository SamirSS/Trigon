class South_Africa_Travel
  attr_reader = :determine_location
  
  def initialize(params)
    @results = params
  end
  
  def determine_location 
    if @results[:environment] == "busy" && @results[:preference] == "warm" && @results[:water] == "nemo"
      return {:city => "Durban"}
    elsif @results[:environment] == "busy" && @results[:preference] == "warm" && @results[:water] == "cat"
      return {:city => "Pretoria"}
    elsif @results[:environment] == "busy" && @results[:preference] == "cool" && @results[:water] == "nemo"
        return {:city => "Soweto"}
    elsif @results[:environment] == "busy" && @results[:preference] == "cool" && @results[:water] == "cat"
      return {:city => "Johannesburg"}
    elsif @results[:environment] == "quiet" && @results[:preference] == "warm" && @results[:water] == "nemo"
        return {:city => "Oudtshoom"}
    elsif @results[:environment] == "quiet" && @results[:preference] == "warm" && @results[:water] == "cat"
        return {:city => "Paternoster"}
    elsif @results[:environment] == "quiet" && @results[:preference] == "cool" && @results[:water] == "nemo"
      return {:city => "Matjiesfontein"}
    elsif @results[:environment] == "quiet" && @results[:preference] == "warm" && @results[:water] == "nemo"
      return {:city => "Dullstroom"}
    end
   end
end