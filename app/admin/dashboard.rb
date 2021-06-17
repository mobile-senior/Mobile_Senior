ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        "Bem-vindo ao painel administrativo do Mobile Senior!"
      end
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

      column do
        panel "Seniors" do
          para "Total de Seniors: " + Senior.count.to_s
          para "Total de Seniors Ativos: " + Senior.where(active: true).count.to_s
          para "Total de Seniors Participantes: " + Senior.where(participate: true).count.to_s
        end

        panel "Educadores" do
          para "Total de Educadores: " + Educator.count.to_s
          para "Total de Educadores Ativos: " + Educator.where(active: true).count.to_s
        end
      end
    end
  end # content
end
