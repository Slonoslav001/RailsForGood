class OrdersController < InheritedResources::Base

  def create
    @order = Order.new(order_params)
    @volunteer = Volunteer.find()

    respond_to do |format|
      if @order.save
        MagicLinkMailer.with(volunteer: @volunteer).magic_link.deliver_later
        format.html { redirect_to @order, notice: "Žádost byla odeslána." }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end


  private

    def order_params
      params.require(:order).permit(:Jméno, :Příjmení, :Město, :Ulice, :ČP, :PSČ, :Žádost, :Poznámka)
    end
end
