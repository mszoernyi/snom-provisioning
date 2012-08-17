class ConfigController < ApplicationController
  def show
    # TODO: refactor with lamba scope later on
    @phone = Phone.where(:mac => params[:mac]).first
    # phone has no settings yet
    unless @phone
      UnknownPhone.create(:mac_address => params[:mac], :requester_ip => request.remote_ip)
      return head(:not_found)
    end

    render :layout => false, :content_type => "application/xml"
  end
end
