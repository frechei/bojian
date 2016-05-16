class FeedbacksController < ApplicationController
	def create
		@potentional_member = PotentionalMember.find(params[:potentional_member_id])
		@feedback = @potentional_member.feedbacks.build(feedback_params)
		if @feedback.save
			respond_to do |format|
				format.html { redirect_to potentional_members_path }
				format.js
			end
		else
			flash[:alert] = "回访创建失败！"
			redirect_to potentional_members_path
		end


	end

	private
		def feedback_params
			params.require(:feedback).permit(:invite_time, :status, :person_in_charge)
		end
end
