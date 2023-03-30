require 'spec_helper'
require_relative '../caesar_cipher'

RSpec.describe 'caesar_cipher' do
  describe 'DGiven a message and shift amount' do
    it 'Return the encrypted message with uppercase letters' do
      expect(caesar_cipher('MIDDLE OUTZ', 9)).to eq('VRMMUN XDCI')
    end
    it 'Return the encrypted message with positive shift' do
      expect(caesar_cipher('What a string!', 5)).to eq('Bmfy f xywnsl!')
    end
    it 'Return the encrypted message with negative shift' do
      expect(caesar_cipher('What a string!', -5)).to eq('Rcvo v nomdib!')
    end
    it 'Return the encrypted message without shift' do
      expect(caesar_cipher('D3q4', 0)).to eq('D3q4')
    end
    it 'Return the encrypted message with characters in between' do
      expect(caesar_cipher('www.abc.xy', 87)).to eq('fff.jkl.gh')
    end
    it 'Return the encrypted message with numbers in between' do
      expect(caesar_cipher('159357lcfd', 98)).to eq('159357fwzx')
    end
    it 'Return the encrypted message with spaces in between' do
      expect(caesar_cipher('middle Outz', 9)).to eq('vrmmun Xdci')
    end
  end
end
