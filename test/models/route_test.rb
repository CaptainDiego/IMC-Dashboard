require 'rails_helper'

Rspec.describe Route do
  let(:route) { Route.new(from: 'Antwerp', to: 'Montreal') }

  describe 'Getters' do
    it 'has an origin port' do
      expect(route.from).to eq 'Antwerp'
    end
  end
end
