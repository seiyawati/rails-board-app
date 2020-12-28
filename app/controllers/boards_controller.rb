class BoardsController < ApplicationController
    before_action :set_target_board, only: %i[show edit update destory]

    def index
        @boards = Board.all
    end

    def new
        # controller内で定義したインスタンス変数はビュー内で参照できる
        @board = Board.new
    end

    def create
        board = Board.create(board_params)
        redirect_to board
    end

    def show
    end

    def edit
    end

    def update
        @board.update(board_params)

        # オブジェクトを指定すると/boards/:idに飛ぶ
        redirect_to @board
    end

    def destory
        @board.delete

        redirect_to boards_path
    end

    private

    def board_params
        params.require(:board).permit(:name, :title, :body)
    end

    def set_target_board
        @board = Board.find(params[:id])
    end
end
