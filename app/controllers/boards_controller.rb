class BoardsController < ApplicationController
    def index
        @boards = Board.all
    end

    def new
        # controller内で定義したインスタンス変数はビュー内で参照できる
        @board = Board.new
    end

    def create
        Board.create(board_params)
    end

    def show
        @board = Board.find(params[:id])
    end

    private

    def board_params
        params.require(:board).permit(:name, :title, :body)
    end
end
