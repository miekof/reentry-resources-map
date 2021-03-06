describe "page", type: :feature, js: true do

  describe "wizard page navbar" do
    before(:each) { visit '/' }

    it "has a Resources link" do
      expect(find('#navbar ul li:first-child').text).to eq('Resources')
    end

  end

  describe "resources page navbar" do
    before(:each) { visit '/resources' }

    it "has a page title" do
      expect(find('.navbar-brand').text).to eq('Illinois Re-Entry Resources')
    end

    it "has a Download Guide" do
      expect(find('#navbar ul li:nth-child(4)').text).to eq('Download Guide')
    end

    it "has an About" do
      expect(find('#navbar ul li:nth-child(5)').text).to eq('About')
    end

    it "has an Add resource" do
      expect(find('#navbar ul li:nth-child(6)').text).to eq('Add resource')
    end
  end

  describe "map canvas" do
    before(:each) {
      visit '/resources'
      find('.btnViewMode', match: :first).click
    }

    it "has a resources div" do
      expect(page).to have_selector('.resources-count', visible: true)
    end

    it "has an info div" do
      expect(page).to have_selector('.resources-count', visible: true)
    end
  end

end
