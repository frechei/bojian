class PotentionalMembersController < ApplicationController
	before_action :set_potentional_member, only: [:show, :edit, :update, :destroy]

	def index
		@potentional_members = PotentionalMember.all
	end

	def show
		
	end

	def new
		@potentional_member = PotentionalMember.new
	end

	def create
		@potentional_member = PotentionalMember.new(potentional_members_params)
		if @potentional_member.save
			flash[:notice] = "潜在会员成功创建！"
			redirect_to potentional_members_path
		else
			flash.now[:alert] = "潜在会员创建失败！"
			render 'new'
		end

	end

	def edit
	end

	def update
		@potentional_member = PotentionalMember.update(potentional_members_params)
		if @potentional_member.save
			flash[:notice] = "潜在会员成功更新！"
			redirect_to @potentional_member
		else
			flash.now[:alert] = "潜在会员更新失败！"
			render 'edit'
		end
	end

	def destroy
		@potentional_member.destroy
		redirect_to potentional_members_path
	end

	def search
		
	end

	private
		def potentional_members_params
			params.require(:potentional_member).permit(:name, :gender, :phone, :age)
		end

		def set_potentional_member
			@potentional_member = PotentionalMember.find(params[:id])
		end
end
