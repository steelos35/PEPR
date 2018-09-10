class StudentsController < ApiController
    before_action :require_login, except: [ :index, :show ]

    def index
        students = Student.all
        render json: { students: students }
    end
    
    def show
        Student = Student.find(params[:id])
        render json: { student: student }
    end

    def create
        student = Student.new(student_params)
        student.user = current_user
        if student.save
            render json: {
                message: 'ok'
                student: student
            }
        else
            render json: { message: "could not create student" }
        end
    end


    private
    def student_params
        params.require(:student).permit(:teachername, :studentname, :grade, :unit)
        )
end
