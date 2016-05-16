class MembersController < ApplicationController
	def index
		@members = Member.where(active: false)
	end

	def new
		@member = Member.new
	end

	def create
		@member = Member.new(member_params)
		if @member.save
			flash[:notice] = "会员创建成功！"
			redirect_to root_path
		else
			flash.now[:alert] = "创建失败！"
			render 'new'
		end
	end

	def show
		@member = Member.find(params[:id])
	end

	def edit
		@member = Member.find(params[:id])
	end

	def update
		@member = Member.find(params[:id])

		if (@member.update(member_params))
			flash[:notice] = "更改成功！"
			redirect_to @member
		else
			flash.now[:alert] = "更改失败！"
			render 'edit'
		end
	end

	def remind
		@members = Member.where(end_date: (Date.today-7)..(Date.today+7)).where(active: false)
	end

	def lost
		@members = Member.where(active: true)
	end

	private 
		def member_params
			params.require(:member).permit(:name, :gender, :birth_date, 
				:address, :parent, :phone, :start_date, :end_date, :card_category,
				:sword, :national_record, :provincial_record, :stop_status,
				:stop_reason, :active, :not_active_reason)
		end
end
