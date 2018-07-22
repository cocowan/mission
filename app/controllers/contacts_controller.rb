class ContactsController < ApplicationController

    def index
        @contacts = Contact.all.order(created_at: 'desc')
    end

    def new
        @contact = Contact.new
    end

    def confirm
        @contact = Contact.new(contact_params)

        if @contact.valid?
            render :confirm
        else
            render :new
        end
    end

    def create

        if params[:back]
            @contact = Contact.new(contact_params)
            render :new
        else
            @contact = Contact.create(contact_params)

            redirect_to action: 'thankyou'
        end
    end

    def thankyou
    end

    def contact_params
        params.require(:contact).permit(:name, :email, :contact_type, :content)
    end

end
