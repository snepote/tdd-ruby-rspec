require 'spec_helper.rb'
require_relative '../../service/quicksort.rb'

RSpec.describe Quicksort do
    describe '#sort?' do
        context 'with [5,3,4,1,2]' do
            it { expect(Quicksort.sort [5,3,4,1,2] ).to eql [1,2,3,4,5] }
        end
        letter_list = %w(c d a e b)
        context "with #{letter_list}" do
            it { expect(Quicksort.sort letter_list ).to eql %w(a b c d e) }
        end
    end
end