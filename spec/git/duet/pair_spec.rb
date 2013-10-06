require 'git/duet/pair'
require 'spec_helper'

describe Git::Duet::Pair do
  subject { described_class.new authors }

  describe '#set' do
    it 'sets up the pair names' do
      expect(subject).to receive(:set_pair_name) { pair_name }
      expect(subject).to receive(:set_pair_email) { pair_email }

      expect(subject.set).to eq 'David Billskog and Teo Ljungberg <dev+billskog+teo@mynewsdesk.com>'
    end
  end
end