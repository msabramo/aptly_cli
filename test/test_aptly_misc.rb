require 'minitest_helper.rb'
require 'minitest/autorun'

require 'aptly_cli'

describe AptlyCli::AptlyMisc do
  it 'must include httparty methods' do
    AptlyCli::AptlyMisc.must_include HTTMultiParty
  end

describe 'API Get graph' do
  let(:misc_api) { AptlyCli::AptlyMisc.new }

  def test_graph_request_for_SVG_returns_200 
    assert_equal ('200'), misc_api.get_graph(extension = 'svg').code.to_s
  end

  def test_graph_request_for_PNG_returns_200
    assert_equal ('200'), misc_api.get_graph(extension = 'png').code.to_s
  end
 end

describe 'API Get Version' do
  let(:misc_api) { AptlyCli::AptlyMisc.new }

  def test_version_returns_valid
    assert_equal ('{"Version"=>"0.9.6"}').to_s, misc_api.get_version().to_s
  end
 end
end
