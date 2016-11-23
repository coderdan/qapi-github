require 'spec_helper'

RSpec.describe Qapi::Github do
  it 'has a version number' do
    expect(Qapi::Github::VERSION).not_to be nil
  end
end
