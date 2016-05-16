class SearchsController < ApplicationController
	def index
    @members = Member.search(params[:search])
    @potentional_members = PotentionalMember.search(params[:search])
  end
end
