require 'spec_helper.rb'

class StringUtil
    def self.palindrome?(s)
        if s.nil?
            false
        else
            # letters = s.select(&:valid_encoding?).join
            letters = s.downcase.scan(/\w/)
            if letters.empty?
                false
            else
                letters == letters.reverse
            end
        end
    end
end

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