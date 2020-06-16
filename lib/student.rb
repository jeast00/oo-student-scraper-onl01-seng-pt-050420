require 'pry'

class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  def initialize(student_hash)
<<<<<<< HEAD
    student_hash.map do |key, value|
      self.send(("#{key}="), value)
      @@all << self
    end
  end

  def self.create_from_collection(students_array)
    students_array.map do |student_hash|
=======
    student_hash.each do |key, value|
      self.send(("#{key}="), value)
      @@all << self
    end
    binding.pry
  end

  def self.create_from_collection(students_array)
    students_array.each do |student_hash|
>>>>>>> a020d0f38e59d62cacf10d86f629df3b5eab299c
      self.new(student_hash)
    end
  end

  def add_student_attributes(attributes_hash)
<<<<<<< HEAD
    attributes_hash.map do |attribute, value|
=======
    attributes_hash.each do |attribute, value|
>>>>>>> a020d0f38e59d62cacf10d86f629df3b5eab299c
      self.send(("#{attribute}="), value)
    end
  end

  def self.all
    @@all
  end

end
