class MovingAverage

  def initialize(args)
    @inflection = args[:inflection] ||= :positive
  end

  def check_inflection(model)
    avg_10 = calculate_average(10, model)
    avg_21 = calculate_average(21, model)
    if avg_21 > avg_10
      @inflection = :negative
    else
      @inflection = :positive
    end
  end

  def calculate_average(num, model)
    most_recent_values = model.order(:id, :desc).limit(num).pluck(:spot)
    sum_of_recent_values = most_recent_values.sum
    return sum_of_recent_values / num
  end

end
