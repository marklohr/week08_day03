require 'rails_helper'

RSpec.describe Nurse, type: :model do 

 it {should belong_to(:nurseable)}

end