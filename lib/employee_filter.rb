
# for help look at... http://www.foragoodstrftime.com/

class EmployeeFilter

  def initialize(var1)
    @employees = var1
  end

  def started_before_2006

    @employees.select do |hash|  #select says: if true then return the item... select lets you choose things

      hash[:start_date] < Date.new(2006, 1, 1)

    end
  end

  def all_with_start_date
    @employees.map do |hash|   #hash lets you choose things and change them
      "#{hash[:first_name]} #{hash[:last_name]} (#{hash[:title]}) - #{hash[:start_date].month}/#{hash[:start_date].day}/#{hash[:start_date].year}"
    end
  end




end #class end

