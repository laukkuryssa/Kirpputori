module CommentsHelper

def wrap(length = 80, character = $/)
		scan(/.{#{length}}|.+/).map { |x| x.strip }.join(character)
	end

end
