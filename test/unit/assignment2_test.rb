require 'test_helper'

class Assignment2Test < Test::Unit::TestCase


	def new_asset(attributes = {})
   		attributes[:name] ||= 'Asset'
    		attributes[:description] ||= 'New Asset'
    		attributes[:serial] ||= 'af4wt'
    		attributes[:location] ||= '220'
    		assignment2 = Assignment2.new(attributes)
    		assignment2.valid? # run validations
    		assignment2
	end


	def 	test_require_name

    		assert new_asset(:name => '').errors.on(:name)

  	end

	def 	test_require_description
    		assert new_asset(:description => '').errors.on(:description)
  	end

	def 	test_require_serial
    		assert new_asset(:serial => '').errors.on(:serial)
  	end

	def 	test_require_location
    		assert new_asset(:location => '').errors.on(:location)
  	end

	def	test_validates_presence_of_photo
		assert new_asset(:photo => '').errors.on(:photo_file_name)
	end

	def test_require_photo_format
		assert new_asset(:photo_content_type => 'text').errors.on(:photo_content_type)
	end
		



end
