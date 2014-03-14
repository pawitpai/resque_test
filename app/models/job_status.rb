class JobStatus < ActiveRecord::Base
	serialize :parameters, Hash
end