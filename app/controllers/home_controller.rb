class HomeController < ApplicationController
    def GOD
      @games = Game.all
    end
    
    def Genre
      @games = Game.all
    end
    
    def index
    if user_signed_in?
    @games = Game.all
    else
    redirect_to '/users/sign_in'
    end
    end
    
    def today_create
      
    end
    
    def today_new
      @game = Game.new
      @game.title = params[:game_title]
      @game.save
      redirect_to "/home/index"
    end
    
    def games_create

    end

    def games_new
      @game = Game.new
        @game.title = params[:game_title]
        @game.content = params[:game_content]
        @game.user = current_user
      uploader = CruduploaderUploader.new
      fileup = params[:input_img]
      uploader.store!(fileup)
      @game.image_url = uploader
        if @game.save
      redirect_to "/home/cmt"
        else
      render :text => @post.errors.messages[:title].first
        end
    end
    
    def cmt
      @games = Game.page params[:page]
      @games = Game.all
    end
    
    def show
      @game = Game.find(params[:game_id])
    end
    
    def edit
      @game = Game.find(params[:game_id])
    end
        
    def update
      @game=Game.find(params[:game_id])
      @game.title=params[:game_title]
      @game.content=params[:game_content]
      @game.save
      redirect_to "/home/show/#{@game.id}"
    end
    
    def destroy
      @game = Game.find(params[:game_id])
      @game.destroy
      redirect_to root_path
    end
    
     def comment
      @comments = Comment.page params[:page]
      comment = Comment.new
      comment.content = params[:comment_id]
      comment.game_id = params[:comment_hidden]
      comment.user = current_user
      comment.save
      redirect_to "/home/show/#{comment.game.id}"
     end
  
    def comment_delete
        comment = Comment.find(params[:comment_id])
        comment.destroy
        redirect_to "/home/show/#{comment.game.id}"
    end
end
