RSpec.describe 'group by' do
  it 'groups words by length' do
    words = %w[sue alice steve sally adam fort tops dog cat]
    grouped = words.group_by(&:length)
    expected = {  3=>['sue', 'dog', 'cat'], 4=>['adam', 'fort', 'tops'], 5=>['alice', 'steve', 'sally'] }
    expect(grouped).to eq(expected)
  end

  it 'group by odd and even' do
    numbers = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
    odd_and_even = numbers.group_by { |number| number % 2 }
    expected = { 1 => [1, 1, 3, 5, 13, 21, 55], 0 => [2, 8, 34] }
    expect(odd_and_even).to eq(expected)
  end

  it 'group by first letter' do
    words = %w[ant axis albatross bolt badge butter car cdr column]
    words_by_first_letter = words.group_by { |word| word[0] }
    expected = { "a"=>["ant", "axis", "albatross"], "b"=>["bolt", "badge", "butter"], "c"=>["car", "cdr", "column"] }
    expect(words_by_first_letter).to eq(expected)
  end

  it 'group by uniqueness' do
    words = ["one", "two", "one", "TWO", "three", "one", "three", "three", "three"]
    grouped = words.group_by(&:downcase)
    expected = {"one"=>["one", "one", "one"], "two"=>["two", "TWO"], "three"=>["three", "three", "three", "three"]}
    expect(grouped).to eq(expected)
  end

  it 'grouped by number of zeroes' do
    numbers = [1, 3, 500, 200, 4000, 3000, 10000, 90, 20, 500000]
    grouped = numbers.group_by { |number| number.to_s.count("0") }
    expected = {0=>[1, 3], 2=>[500, 200], 3=>[4000, 3000], 4=>[10000], 1=>[90, 20], 5=>[500000]}
    expect(grouped).to eq(expected)
  end

  it 'grouped by order of magnitude' do
    numbers = [1, 3, 503, 239, 4938, 3932, 19982, 93, 21, 501787]
    grouped = numbers.group_by { |num| num.to_s.length }
    expected = {1=>[1, 3], 2=>[93, 21], 3=>[503, 239], 4=>[4938, 3932], 5=>[19982], 6=>[501787]}
    expect(grouped).to eq(expected)
  end
end
