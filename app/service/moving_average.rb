class MovingAverage

  def initialize(args)
    @inflection = args[:inflection] ||= :positive
  end

  def check_inflection
    avg_10 = calculate_average(10)
    avg_21 = calculate_average(21)
    if avg_21 > avg_10
      @inflection = :negative
    else
      @inflection = :positive
    end
  end

  def calculate_average(num)
    most_recent_values = PriceBtc.order(:id, :desc).limit(num).pluck(:price)
    sum_of_recent_values = most_recent_values.sum
    return sum_of_recent_values / num
  end

end
