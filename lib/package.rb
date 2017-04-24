class Package
  define_method(:initialize) do |height, width, length|
    @height = height
    @width = width
    @length = length
  end

  define_method(:volume) do
    @height * @width * @length
  end

  define_method(:cost_to_ship) do |weight|
    if weight <= 5
      @height * @width * @length * 1/10
    elsif
      weight > 5
      weight_cost = (weight-5.0) * 1/2
      weight_cost+(@height * @width * @length * 1/10)
    end
  end
end
