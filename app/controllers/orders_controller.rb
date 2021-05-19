class OrdersController < InheritedResources::Base

  private

    def order_params
      params.require(:order).permit(:Jméno, :Příjmení, :Město, :Ulice, :ČP, :PSČ, :Žádost, :Poznámka)
    end

end
