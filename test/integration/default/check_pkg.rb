describe package('nginx') do
  it { should be_installed }
end


describe os.name do
   it { should eq 'ubuntu' }
end
