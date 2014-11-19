class ContactsController < ActionController::Base

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
        return render :js => "swal('You are awesome!', 'Thanks for getting in touch. I'll do my best to reply in less than 24 hrs.', 'success')"
    else
      return render :js => "sweetAlert('Oops...', 'Something went wrong! Please try again. If problem persist, please send me an email to #{ENV['CONTACT_EMAIL']}', 'error')"

    end
  end

end
