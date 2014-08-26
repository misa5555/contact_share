class ContactsController < ApplicationController
  
  def create
    @contact = Contact.new(contact_params)
    @contact.save

    #render text: "Contact created:"
    render json: @contact
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    render text: "destroyed"
  end

  def index
    render json: Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
    render json: @contact
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update(contact_params)
      render json: @contact
    else
      render(
        json: @contact.errors.full_messages, status: :unprocessable_entity
      )
    end
  end


  private
  def contact_params
    params.require(:contact).permit(:name, :email, :user_id)
  end

end
