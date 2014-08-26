class ContactShareController < ApplicationController
  def create
    @contact_share = Contact.new(contact_share_params)
    @contact_share.save

    #render text: "Contact created:"
    render json: @contact_share
  end  
  
  def destroy
    @contact_share = Contact.find(params[:id])
    @contact_share.destroy
    render text: "destroyed"
  end
    
  private
  def contact_share_params
    params.require(:contact_share).permit(:contact_share_id, :user_id)
  end
end
