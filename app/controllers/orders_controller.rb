class OrdersController < InheritedResources::Base

  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: "Žádost byla odeslána." }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  def order_params
    params.require(:order).permit(:Jméno, :Příjmení, :Město, :Ulice, :ČP, :PSČ, :Žádost, :Poznámka)
  end
  
end
