class ConfigController < ApplicationController
  def show
    # TODO: refactor with lamba scope later on
    @phone = Phone.where(:mac => params[:mac]).first
    return head(:not_found) unless @phone

    render :layout => false, :content_type => "application/xml"
  end
end
