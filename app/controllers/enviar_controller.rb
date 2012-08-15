class EnviarController < ApplicationController

  #Method created to send emails, this is the only file that I need.
  #Check view/users/index
  
  def enviar
      @users = User.all
      @users.each do |user|
      	if user.value == 'En proceso'
		UserMailer.registration_confirmation(user).deliver
		user.value = 'Enviado'
		user.save
	end
      end
      redirect_to :controller => :users, :protocol => 'http'
  end

  def activarDesactivar 
      user = User.find(params[:envio])
      	if user.value == 'En proceso'
		user.value = 'No enviado'
		user.save
	elsif user.value == 'No enviado'
		user.value = 'En proceso'
		user.save
	end
      redirect_to :controller => :users, :protocol => 'http'
  end

  def edit
    user = User.find(params[:id])
      	if user.value == 'En proceso'
		user.value = 'No enviado'
		user.save
	elsif user.value == 'No enviado'
		user.value = 'En proceso'
		user.save
	end
      redirect_to :controller => :users, :protocol => 'http'
  end

end
