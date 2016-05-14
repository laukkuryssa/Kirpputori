module ItemsHelper

def custom_word_wrap(text, max_width=10)
return nil if text.blank?
(text.length < max_width) ?
text :
text.scan(/.{1,#{max_width}}/).join(“<wbr>”)
end

end
