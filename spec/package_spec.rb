require('rspec')
require('Package')

describe('Package') do
  describe('#volume') do
    it('calculates the volume of a package based on dimensions') do
      new_package = Package.new(4,5,6)
      expect(new_package.volume()).to(eq(120))
    end
  end
end
