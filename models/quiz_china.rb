class China_Travel
  attr_reader = :determine_location
  
  def initialize(params)
    @results = params
  end
  
  def determine_location 
    if @results[:environment] == "busy" && @results[:preference] == "warm" && @results[:water] == "nemo"
      return {:city => "Shanghai"}
    elsif @results[:environment] == "busy" && @results[:preference] == "warm" && @results[:water] == "cat"
      return {:city => "Beijing"}
    elsif @results[:environment] == "busy" && @results[:preference] == "cool" && @results[:water] == "nemo"
      return {:city => "Tianjin"}
    elsif @results[:environment] == "busy" && @results[:preference] == "cool" && @results[:water] == "cat"
      return {:city => "Wuxi"}
    elsif @results[:environment] == "quiet" && @results[:preference] == "warm" && @results[:water] == "nemo"
      return {:city => "Tongling"}
    elsif @results[:environment] == "quiet" && @results[:preference] == "warm" && @results[:water] == "cat"
      return {:city => "Manzhouli"}
    elsif @results[:environment] == "quiet" && @results[:preference] == "cool" && @results[:water] == "nemo"
      return {:city => "Dunhuang"}
    elsif @results[:environment] == "quiet" && @results[:preference] == "warm" && @results[:water] == "nemo"
      return {:city => "Dali"}
    end
  end
end