require 'date_stamp'

describe DateStamp do

  it 'creates date stamp' do
    expect(DateStamp.date).not_to be_empty
  end
end
