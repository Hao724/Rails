class ScheduledatesController < ApplicationController
  def index
      @scheduledates = Scheduledate.all
  end

  def new
      @scheduledate = Scheduledate.new
  end

  def create
      @scheduledate = Scheduledate.new(params.require(:scheduledate).permit(:title, :start, :end_date, :check, :memo))
      if @scheduledate.save
        flash[:notice] = "予定を新規登録しました"
        redirect_to "/scheduledates/index"
      else
        render "new"
      end
  end

  def show
      @scheduledate = Scheduledate.find(params[:id])
  end

  def edit
      @scheduledate = Scheduledate.find(params[:id])
  end

  def update
      @scheduledate = Scheduledate.find(params[:id])
      if @scheduledate.update(params.require(:scheduledate).permit(:title, :start, :end_date, :check, :memo))
        flash[:notice] = "ID番号「#{@scheduledate.id}」の情報を更新しました"
        redirect_to "/scheduledates/index"
      else
        render "edit"
      end
  end

  def destroy
      @scheduledate = Scheduledate.find(params[:id])
      @scheduledate.destroy
      flash[:notice] = "予定をを削除しました"
      redirect_to "/scheduledates/index"
  end

end
