class CustomSessionsController < Devise::SessionsController
    # Sobrescreve a ação de login padrão do Devise
    def create
      super do |resource|
        # Redireciona o usuário para a página de tasks após o login com sucesso
        redirect_to tasks_path
        return
      end
    end
  
    # Sobrescreve a ação de logout padrão do Devise
    def destroy
      super do |resource|
        # Redireciona o usuário para a página de login após o logout
        redirect_to new_user_session_path
        return
      end
    end
  end
  