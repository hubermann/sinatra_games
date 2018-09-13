module GamesApi
  class App < Sinatra::Base

    get '/' do
      "para crear nuevo ir a /buscaminas/new [Parametros opcioonales GET: width, height, mines]"
    end

    get '/buscaminas/new' do
      #agregar validaciones a enteros
      width   = params[:width]  || 10
      height  = params[:height] || 10
      mines   = params[:mines]  || 5
      game    = Mines.new(width, height, mines)
      game.create_new.to_json
      cols = game.show_cols
      loc = game.show_local
      "ORIG: #{cols} \n COPIA: #{loc}"
    end

  end
end
