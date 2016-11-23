require 'spec_helper'

RSpec.describe Qapi::Github::User do
  subject { described_class.new(double(:connection)) }
  it { is_expected.to provide_attribute(:login) }
  it { is_expected.to provide_attribute(:login) }
  it { is_expected.to provide_attribute(:login) }
  it { is_expected.to provide_attribute(:login) }
  it { is_expected.to provide_attribute(:login) }
  it { is_expected.to provide_attribute(:login) }
  it { is_expected.to provide_attribute(:login) }
end
