require "#{File.join(File.dirname(__FILE__),'..','spec_helper.rb')}"

describe 'lsb' do

  let(:title) { 'lsb' }
  let(:node) { 'rspec.example42.com' }
  let(:facts) { { :ipaddress => '10.42.42.42' , :operatingsystem => 'RedHat'} }

  describe 'Test minimal installation' do
    it { should contain_package('lsb').with_ensure('present') }
  end

  describe 'Test installation of a specific version' do
    let(:params) { {:version => '1.0.42' } }
    it { should contain_package('lsb').with_ensure('1.0.42') }
  end

  describe 'Test decommissioning - absent' do
    let(:params) { {:absent => true } }
    it 'should remove Package[lsb]' do should contain_package('lsb').with_ensure('absent') end 
  end

  describe 'Test noops mode' do
    let(:params) { {:noops => true} }
    it { should contain_package('lsb').with_noop('true') }
  end

  describe 'Test customizations - custom class' do
    let(:params) { {:my_class => "lsb::spec" } }
    it { should contain_file('lsb.conf').with_content(/rspec.example42.com/) }
  end

end
