require 'rails_helper'

RSpec.describe Medication, type: :model do 
  subject do
    Medication.new({
      name: "drug",
      side_effects: "pain"
    })
  end

  let(:patient) do
    Patient.new({
      first_name: "John",
      last_name: "Brown",
      description: "sick",
      gender: "male",
      blood_type: "O-",
      date_of_birth: 01/01/2012
      })
  end

  it "should have a name" do
    expect(subject.name).to eq('drug')
  end

  it "should NOT have a name" do
    expect(subject.name).not_to eq(nil)
  end

  it "should have a side effect" do
    expect(subject.side_effects).to eq('pain')
  end

  it "should NOT have a side effect" do
    expect(subject.side_effects).not_to eq(nil)
  end

  it "should validate when we have a name" do
    subject.save
    expect(subject.valid?).to eq(true)
  end

  it "should have ability to add patient" do
    subject.patients << patient
    expect(subject.patients.length).to eq(1)
  end

  it {should have_many(:patients)}

  it {should have_many(:patient_medications)}

  
end
