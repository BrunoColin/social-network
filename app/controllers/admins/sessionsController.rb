class Admins::SessionsController < Devise::SessionsController

    def after_sing_out_path_for(admin)
        new_admin_session_path
    end

end