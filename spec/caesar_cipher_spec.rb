require './lib/caesar_cipher.rb'

describe 'caesar_cipher' do
  it 'shifts lowercase letters' do
    expect(caesar_cipher('this string', 1)).to eql('uijt tusjoh')
  end
  it 'shifts lowercase letters' do
    expect(caesar_cipher('This String', 1)).to eql('Uijt Tusjoh')
  end
  it 'does not shift numbers' do
    expect(caesar_cipher('this 1 string', 1)).to eql('uijt 1 tusjoh')
  end
  it 'does not shift punctuation' do
    expect(caesar_cipher('this, string!', 1)).to eql('uijt, tusjoh!')
  end
end