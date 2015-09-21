class User < ActiveRecord::Base

	has_secure_password

	# can add a validation that checks for uniqueness of email, so no repeat emails
end
