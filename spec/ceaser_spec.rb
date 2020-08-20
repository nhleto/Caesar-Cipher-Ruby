# frozen_string_literal :true

require './lib/ceaser.rb'

describe Ceezer do
  describe '#cipher' do
    it 'rotates string by one' do
      ciph = Ceezer.new
      expect(ciph.cipher('a', 1)).to eql('b')
    end

    it 'rotates a word by one' do
      ciph = Ceezer.new
      expect(ciph.cipher('hello', 1)).to eql('ifmmp')
    end

    it 'rotates past z and wraps back to a' do
      ciph = Ceezer.new
      expect(ciph.cipher('z', 1)).to eql('a')
    end

    it 'can rotate more than one place' do
      expect(Ceezer.new.cipher('a', 5)).to eql('f')
    end
  end
end
