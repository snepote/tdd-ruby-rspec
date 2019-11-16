require_relative '../../lib/string_util.rb'

puts StringUtil.palindrome?("123")

RSpec.describe StringUtil do
    describe '#palindrome?' do
        context 'with the palindrome phrase:' do
            ["racecar", "12321", "A man, a plan, a canal, Panama!"].each do |phrase|
                context phrase do
                    it { expect(StringUtil.palindrome?(phrase)).to be true }
                end
            end
        end

        context 'with non palindrome phrase:' do
            ["hola", "1234", " #$ "].each do |phrase|
                context phrase do
                    it { expect(StringUtil.palindrome?(phrase)).to be false }
                end
            end
        end

        context 'with empty string or nil:' do
            ["", nil].each do |phrase|
                context phrase do
                    it { expect(StringUtil.palindrome?(phrase)).to be false }
                end
            end
        end

        context 'with non utf-8 characters' do
            # context "ama€\xA0ma" do
            #     let(:s) { "ama€\xA0ma" }
            #     it { expect(palindrome).to be true }
            # end
        end
    end
end
