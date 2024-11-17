RSpec.describe 'Any test' do
  it 'has at least one zero' do
    numbers = [2, 0, 9, 3, 0, 1]
    has_zero = numbers.any?(&:zero?)
    expect(has_zero).to eq(true)
  end

  it 'does not have zeroes' do
    numbers = [3, 1, 3, 2, 4, 9, 8]
    has_zero = numbers.any?(&:zero?)
    expect(has_zero).to eq(false)
  end

  it 'has at least one alice' do
    names = %w[Bill Bob Burton Alice Brandon]
    has_alice = names.any? { |name| name == 'Alice' }
    expect(has_alice).to eq(true)
  end

  it 'no alices' do
    names = %w[Chuck Charlene Cory Chris Carl]
    has_alice = names.any? { |name| name == 'Alice' }
    expect(has_alice).to eq(false)
  end

  it 'has a multi word phrase' do
    phrases = ['Sure!', 'OK.', 'I have no idea.', 'Really?Whatever.']
    multi_word_phrase = phrases.any? { |phrase| phrase.split.length > 1 }
    expect(multi_word_phrase).to eq(true)
  end

  it 'no monkeys' do
    animals = %w[elephant hippo jaguar python]
    has_monkeys = animals.any? { |animal| animal == 'monkey' }
    expect(has_monkeys).to eq(false)
  end

  it 'no multiples of five' do
    numbers = [3, 1, 3, 2, 4, 9, 8]
    multiples_of_5 = numbers.any? { |number| (number % 5).zero? }
    expect(multiples_of_5).to eq(false)
  end
end
