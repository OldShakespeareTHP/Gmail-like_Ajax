require 'faker'

class MailsController < ApplicationController
  def index
    @mails = Mail.all.order("created_at DESC")
  end

  def create
    @mail = Mail.new(object: Faker::Movies::HarryPotter.quote, body: Faker::Movies::VForVendetta.speech)
    respond_to do |format|
      if @mail.save
        flash.now[:notice] = "Task created"
        format.js { }
      else
        flash.now[:alert] = @mail.errors.messages
        render "index"
      end
    end
  end

  def show
    puts "%" * 60
    puts("here we are")
    @mail = Mail.find(params[:id])
    respond_to do |format|
      format.js { }
    end
    @mail.update_attribute(:read, true)
  end

  def update
    @mail = Mail.find(params[:id])
    @mail.update_attribute(:read, params[:read])
    respond_to do |format|
      format.js {}
    end
  end

  def destroy
    @mail = Mail.find(params[:id])
    respond_to do |format|
      format.js {}
    end
    @mail.destroy
  end
end
