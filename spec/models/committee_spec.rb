# == Schema Information
#
# Table name: committees
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  slug        :string(255)
#

require 'spec_helper'

describe Committee do
  before { @committee = FactoryGirl.create(:committee) }

  subject { @committee }

  it { should respond_to(:name) }
  it { should respond_to(:description) }
  it { should be_valid }

end
