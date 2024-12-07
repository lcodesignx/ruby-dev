RSpec.describe 'one' do
  it 'one more' do
    words = %w[bigger better more improved advantageous]
    exactly_one = words.one? { |word| word == 'more' }
    expect(exactly_one).to eq(true)
  end

  it 'not even one ring' do
    ornaments = %w[bracelet anklet earring]
    exactly_one_ring = ornaments.one? { |ornament| ornament == 'ring' }
    expect(exactly_one_ring).to eq(false)
  end

  it 'not just one ring' do
    ornaments = %w[bracelet ring ring anklet earring]
    exactly_one_ring = ornaments.one? { |ornament| ornament == 'ring' }
    expect(exactly_one_ring).to eq(false)
  end

  it 'one time' do
    words = %w[morning time evening noon dusk dawn]
    exactly_one_time = words.one? { |word| word == 'time' }
    expect(exactly_one_time).to eq(true)
  end

  it 'one double digit number' do
    numbers = [8, 2, 10, 333, 9, 101]
    exactly_one_double_digit = numbers.one? { |number| number.to_s.size == 2 }
    expect(exactly_one_double_digit).to eq(true)
  end

  it 'not even one number' do
    numbers = [3, 20, 81, 10, 391, 32]
    exactly_one_even_number = numbers.one?(&:even?)
    expect(exactly_one_even_number).to eq(false)
  end
end
