require 'test_helper'
require 'base64'
require 'core_ext/string'

describe "string_extensions" do
  it "can guess reasonably if a string is base64" do
    sample_string = "so many cloud platforms"
    enc_string = Base64.encode64(sample_string)
    assert enc_string.resembles_base64?
  end
end
