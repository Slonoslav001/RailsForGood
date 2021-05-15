class ClientsController < InheritedResources::Base

  private

    def client_params
      params.require(:client).permit(:Jméno, :Příjmení, :Město, :Ulice, :ČP, :PSČ, :Poznámka)
    end

end
