require 'spec_helper'

RSpec.describe "Project with configuration" do
  before(:all) do
    run_app_generator
  end

  describe "README.md" do
    subject { load_file "README.md" }

    it { is_expected.to match(/Requirements/)}
  end

  describe ".gitignore" do
    subject { load_file ".gitignore" }

    it { is_expected.to be_truthy }
  end

  describe "Gemfile" do
    subject { load_file "Gemfile" }

    it { is_expected.to match(/rubygems\.org/) }
  end
end
