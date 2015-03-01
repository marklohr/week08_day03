require 'rails_helper'


RSpec.describe Patient, type: :model  do
  subject do
    Patient.new({
      first_name: "John",
      last_name: "Brown",
      description: "sick",
      gender: "male",
      blood_type: "O-",
      date_of_birth: 01/01/2001
    })
  end

  let(:nurse) do
    Nurse.new({
      nurse_name: "Dave"
      })
  end

  let(:medication) do
    Medication.new({
      name: "drug",
      side_effects: "pain"
    })
  end

  it "should have a first_name" do
  expect(subject.first_name).to eq('John')

  end

  it "should NOT have a first_name" do
    expect(subject.first_name).not_to eq(nil)
  end

  it "should have a last_name" do
    expect(subject.last_name).to eq('Brown')
  end

  it "should NOT have a last_name" do
    expect(subject.last_name).not_to eq(nil)
  end

  it "should have a description" do
    expect(subject.description).to eq('sick')
  end

  it "should NOT have a description" do
    expect(subject.description).not_to eq(nil)
  end

  it "should have a gender" do
    expect(subject.gender).to eq('male')
  end

  it "should NOT have a gender" do
    expect(subject.gender).not_to  eq(nil)
  end


  it "should have a blood type" do
    expect(subject.blood_type).to eq('O-')
  end

  it "should NOT have a blood type" do
    expect(subject.blood_type).not_to eq(nil)
  end

  it "should have a date_of_birth" do
    expect(subject.date_of_birth).to eq(01/01/2001)
  end

  it "should NOT have a date_of_birth" do
    expect(subject.date_of_birth).not_to eq(nil)
  end

  it "should validate when we have a first name" do
    expect(subject.errors).not_to include(:first_name)
  end

  it "should validate when we do NOT have a first name" do
    patient1 = Patient.new
    patient1.save
    expect(patient1.errors).to include(:first_name)
  end

  it "should validate when we have a last_name" do
    expect(subject.errors).not_to include(:last_name)
  end

  it "should validate when we do NOT have a last_name" do
    patient1 = Patient.new
    patient1.save
    expect(patient1.errors).to include(:last_name)
  end

  it "should validate when we have a description" do
    expect(subject.errors).not_to include(:description)
  end

  it "should validate when we do NOT have a description" do
    patient1 = Patient.new
    patient1.save
    expect(patient1.errors).to include(:description)
  end

  it "should validate when we have a gender" do
    expect(subject.errors).not_to include(:gender)
  end

  it "should validate when we do NOT have a gender" do
    patient1 = Patient.new
    patient1.save
    expect(patient1.errors).to include(:gender)
  end

  it "should validate when we have a blood_type" do
    expect(subject.errors).not_to include(:blood_type)
  end

  it "should validate when we do NOT have a blood_type" do
    patient1 = Patient.new
    patient1.save
    expect(patient1.errors).to include(:blood_type)
  end

  # it "should start in the state of waiting_room" do
  #   expect(subject.current_state.events.keys).to eq([
  #     :to_doctor,
  #     :to_xray,
  #     :to_surgery,
  #     :leave
  #   ])
  # end

  # it "should be able to transfer to 3 states from doctor_checkup" do
  #   subject.save
  #   subject.to_doctor!
  #   expect(subject.current_state.events.keys).to eq([
  #     :to_xray,
  #     :to_surgery,
  #     :to_pay_bill
  #   ])
  # end

  # it "should be able to transfer to 3 states from xray" do
  #   subject.save
  #   subject.to_doctor!
  #   subject.to_xray!
  #   expect(subject.current_state.events.keys).to eq([
  #     :to_doctor,
  #     :to_surgery,
  #     :to_pay_bill
  #    ])
  # end

  # it "should be able to transfer to 3 states from surgery" do
  #   subject.save
  #   subject.to_doctor!
  #   subject.to_xray!
  #   subject.to_surgery!
  #   expect(subject.current_state.events.keys).to eq([
  #     :to_doctor,
  #     :to_xray,
  #     :to_pay_bill
  #    ])
  # end

  # it "should be able to transfer to 1 state from pay_bill" do
  #   subject.save
  #   subject.to_doctor!
  #   subject.to_pay_bill!
  #   expect(subject.current_state.events.keys).to eq([
  #     :leave
  #   ])
  # end

  # it "should be able to transfer to 1 state from left" do
  #   subject.save
  #   subject.to_doctor!
  #   subject.to_pay_bill!
  #   subject.leave!
  #   expect(subject.current_state.events.keys).to eq([
  #     :wait
  #   ])
  # end

  it "should have ability to add medications" do
    subject.medications << medication
    expect(subject.medications.length).to eq(1)
  end

  it {should belong_to(:doctor)}

  it {should have_many(:patient_medications)}

  it {should have_many(:medications)}

  it {should have_many(:nurses)}



end
