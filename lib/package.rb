class Package
  define_method(:initialize) do |height, width, length|
    @height = height
    @width = width
    @length = length
  end

  define_method(:volume) do
    @height * @width * @length
  end
end
