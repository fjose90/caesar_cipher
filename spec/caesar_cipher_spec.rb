require_relative '../lib/caesar_cipher'

RSpec.describe '#caesar_cipher' do
  describe 'when given a message and a shift amount' do
    it 'returns encrypted uppercase letters' do
      expect(caesar_cipher('MIDDLE OUTZ', 9)).to eq('VRMMUN XDCI')
    end

    it 'returns encrypted message with positive shift' do
      expect(caesar_cipher('What a string!', 5)).to eq('Bmfy f xywnsl!')
    end

    it 'supports negative shifts' do
      expect(caesar_cipher('What a string!', -5)).to eq('Rcvo v nomdib!')
    end

    it 'returns the same message with zero shift' do
      expect(caesar_cipher('D3q4', 0)).to eq('D3q4')
    end

    it 'normalizes large shifts' do
      expect(caesar_cipher('www.abc.xy', 87)).to eq('fff.jkl.gh')
    end

    it 'ignores numbers' do
      expect(caesar_cipher('159357lcfd', 98)).to eq('159357fwzx')
    end

    it 'preserves case and spaces' do
      expect(caesar_cipher('middle Outz', 9)).to eq('vrmmun Xdci')
    end
  end
end
