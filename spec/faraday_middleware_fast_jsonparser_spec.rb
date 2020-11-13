# frozen_string_literal: true

require "faraday_middleware_fast_jsonparser"
require "json"

describe FaradayMiddleware::FastJsonparser do
  let(:response) { {a: 1, b: 2} }
  let(:json) { response.to_json }

  subject { connection.get("/url").body }

  context "when NO option is provided" do
    let(:connection) do
      Faraday.new do |conn|
        conn.use(FaradayMiddleware::FastJsonparser)
        conn.adapter(:test) do |a|
          a.get("/url") { [200, {}, json] }
        end
      end
    end

    it "uses 'parse' with no option" do
      expect(::FastJsonparser).to receive(:parse).with(json, {}).and_call_original

      subject
    end

    it { is_expected.to eq(response) }
  end

  context "when options are provided" do
    let(:options) { { symbolize_keys: false } }

    let(:connection) do
      Faraday.new do |conn|
        conn.use(FaradayMiddleware::FastJsonparser, parser_options: options)
        conn.adapter(:test) do |a|
          a.get("/url") { [200, {}, json] }
        end
      end
    end

    it "uses 'parse' with the options" do
      expect(::FastJsonparser).to receive(:parse).with(json, options).and_call_original

      subject
    end

    it { is_expected.to eq({"a" => 1, "b" => 2}) }
  end
end
