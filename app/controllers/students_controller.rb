class StudentsController < ApplicationController

    def index
       # byebug
      students = Student.all
       render json: students
    end

     def grades
       # byebug
       #students = Student.all.order(grade: :desc)
       students = Student.all.order('grade desc')
       
       render json:students
     end

 def highest_grade
    students = Student.all.order(grade: :desc).first
    render json: students
 end

end
