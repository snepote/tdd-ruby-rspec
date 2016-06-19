require 'spec_helper.rb'
require_relative '../../service/quicksort.rb'

RSpec.describe Quicksort do
    describe '#sort?' do
        context 'with [1,2,4,5,3]' do
            it { expect(Quicksort.sort [5,3,4,1,2] ).to eql [1,2,3,4,5] }
        end
    end
end