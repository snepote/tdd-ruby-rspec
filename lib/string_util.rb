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