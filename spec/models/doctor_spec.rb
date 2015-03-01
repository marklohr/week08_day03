require 'rails_helper'

RSpec.describe Doctor, type: :model do
subject do
    Doctor.new({
      first_name: "Andy",
      last_name: "Lindeman",
      gender_name: "male",
      specialty: "General Practice",
      biography: "I am a good doc."
    })
  end

  it "should have a first name" do
    doctor = Doctor.new
    doctor.first_name = "Andy"
    expect(doctor.first_name).to eq("Andy")
  end

  it "should have a last name" do
    doctor = Doctor.new
    doctor.last_name = "Lindeman"
    expect(doctor.last_name).to eq("Lindeman")
  end

  it "should NOT have a last name" do
    doctor = Doctor.new
    expect(doctor.last_name).not_to eq("Lindeman")
  end

  it "should NOT have a last name" do
    doctor = Doctor.new
    doctor.last_name = "Lindeman"
    expect(doctor.last_name).not_to eq(nil)
  end

  it "should have a biography" do
    doctor = Doctor.new({
      first_name: "Andy",
      last_name: "Lindeman",
      biography: "I am a good doc."
    })
    expect(doctor.first_name).to eq("Andy")
    expect(doctor.last_name).to eq("Lindeman")
    expect(doctor.biography).to eq("I am a good doc.")
  end


end




    # t.string   "first_name",  limit: 255
    # t.string   "last_name",   limit: 255
    # t.string   "gender_name", limit: 255
    # t.string   "specialty",   limit: 255
    # t.text     "biography",   limit: 65535

