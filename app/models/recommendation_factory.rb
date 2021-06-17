class RecommendationFactory
  include ApplicationHelper

  def initialize(skill_group_results_ids, quiz_id, user_id)
    @skill_group_results_ids = skill_group_results_ids
    @quiz_id = quiz_id
    @user_id = user_id
  end

  def recommend_default_materials_to_user
    @skill_group_results_ids.each do |skg_result_id|
      skg_result = SkillGroupResult.find(skg_result_id)
      skg_title = skg_result.skill_group.title
      skg_result_value = skill_level(skg_result.value)
      quiz = skg_result.quiz

      if skg_title == "Alfabetização Digital Móvel"
        if skg_result_value == 'Básico'
          rec = Recommendation.create(
                  user_id: @user_id,
                  quiz_id: @quiz_id,
                  title: "Alfabetização Digital Móvel - Básico - "+(I18n.l quiz.created_at, format: :long),
                  content: "Na Alfabetização Digital Móvel você está no nível básico. É recomendável que você aprofunde mais sobre os dispositivos móveis para ter mais autonomia no uso destes recursos. Você ainda tem dificuldade na utilização dos recursos básicos como o teclado, ligar/desligar entre outros. Para saber mais sobre todas as competências da Alfabetização Digital Móvel acesse a opção “Informações”. Os materiais e cursos abaixo podem lhe ajudar nesta busca de novos conhecimentos.")

          m1 = Material.where(title: "Curso TecMovI – Tecnologias Móveis para Idosos").first
          m2 = Material.where(title: "Apresentação sobre os conceitos básicos dos dispositivos móveis").first
          m3 = Material.where(title: "Apresentação sobre o que é um aplicativo").first
          m4 = Material.where(title: "Apresentação de como utilizar o teclado do dispositivo móvel").first
          m5 = Material.where(title: "Material Educacional Digital DIMOS (Dispositivos Móveis)").first

          rec.materials << [m1, m2, m3, m4, m5]

        elsif skg_result_value == 'Intermediário'
          rec = Recommendation.create(
                  user_id: @user_id,
                  quiz_id: @quiz_id,
                  title: "Alfabetização Digital Móvel - Intermediário - "+(I18n.l quiz.created_at, format: :long),
                  content: "Na Alfabetização Digital Móvel você está no nível intermediário. É recomendável que você aprofunde mais sobre os dispositivos móveis para ter mais autonomia no uso destes recursos. Você ainda tem dificuldade em escolher e conectar os dispositivos móveis na internet (Wifi, dados móveis), instalar e desinstalar aplicativos entre outros. Para saber mais sobre todas as competências da Alfabetização Digital Móvel acesse a opção “Informações”. Os materiais e cursos abaixo podem lhe ajudar nesta busca de novos conhecimentos.")

          m1 = Material.where(title: "Curso TecMovI – Tecnologias Móveis para Idosos").first
          m2 = Material.where(title: "Apresentação sobre os tipos de sistema operacional dos dispositivos móveis (iOs, Android)").first
          m3 = Material.where(title: "Como instalar e desinstalar aplicativos").first
          m4 = Material.where(title: "Apresentação de como utilizar o WhatsApp").first
          m5 = Material.where(title: "Configurações básicas dos dispositivos móveis").first
          m6 = Material.where(title: "Como fazer uma pesquisa através dos dispositivos móveis").first
          m7 = Material.where(title: "Dicas para realizar pesquisa na internet").first
          m8 = Material.where(title: "Como utilizar o Facebook").first
          m9 = Material.where(title: "Material educacional digital sobre o que é Redes Sociais Digitais").first
          m10 = Material.where(title: "Material Educacional Digital DIMOS (Dispositivos Móveis)").first

          rec.materials << [m1, m2, m3, m4, m5, m6, m7, m8, m9, m10]

        elsif skg_result_value == 'Avançado'
          rec = Recommendation.create(
                  user_id: @user_id,
                  quiz_id: @quiz_id,
                  title: "Alfabetização Digital Móvel - Avançado - "+(I18n.l quiz.created_at, format: :long),
                  content: "Na Alfabetização Digital Móvel você está no nível avançado. Você já possui muitos conhecimentos, habilidades e atitudes que permite utilizar os dispositivos móveis com autonomia. Para saber mais sobre todas as competências da Alfabetização Digital Móvel acesse a opção “Informações”. Os materiais e cursos abaixo podem lhe ajudar a conhecer outros recursos mais avançados dos dispositivos móveis!")

          m1 = Material.where(title: "Curso TecMovI – Tecnologias Móveis para Idosos").first
          m2 = Material.where(title: "Lista de aplicativos que podem ser utilizados nos dispositivos móveis").first
          m3 = Material.where(title: "Material educacional digital sobre o que é Redes Sociais Digitais").first
          m4 = Material.where(title: "Material Educacional Digital DIMOS (Dispositivos Móveis)").first
          m5 = Material.where(title: "Apresentação de como utilizar o Messenger").first
          m6 = Material.where(title: "Apresentação como utilizar o Instagram no dispositivo móvel").first

          rec.materials << [m1, m2, m3, m4, m5, m6]

        end
      elsif skg_title == "Letramento Digital Móvel"
        if skg_result_value == 'Básico'
          rec = Recommendation.create(
                  user_id: @user_id,
                  quiz_id: @quiz_id,
                  title: "Letramento Digital Móvel - Básico - "+(I18n.l quiz.created_at, format: :long),
                  content: "No Letramento Digital Móvel você está no nível básico. É recomendável que você aprofunde mais sobre possibilidades para a leitura e escrita através dos recursos digitais nos dispositivos móveis como a netiqueta. Você ainda tem dificuldades com alguns aspectos como a escolha da melhor ferramenta de comunicação e informação para o objetivo que deseja entre outros. Para saber mais sobre todas as competências do Letramento Digital Móvel acesse a opção Informações. Os materiais e cursos abaixo podem lhe ajudar nesta busca de novos conhecimentos!")

          m1 = Material.where(title: "Curso TecMovI – Tecnologias Móveis para Idosos").first
          m2 = Material.where(title: "Apresentação de como utilizar o WhatsApp").first
          m3 = Material.where(title: "Dicas para realizar pesquisa na internet").first
          m4 = Material.where(title: "Material educacional digital sobre o que é Redes Sociais Digitais").first
          m5 = Material.where(title: "Material Educacional Digital DIMOS (Dispositivos Móveis)").first
          m6 = Material.where(title: "Material educacional digital sobre Segurança na Internet").first
          m7 = Material.where(title: "Apresentação de como utilizar o Messenger").first
          m8 = Material.where(title: "Apresentação como utilizar o Instagram no dispositivo móvel").first
          m9 = Material.where(title: "Vídeo como editar vídeos no VivaVideo").first

          rec.materials << [m1, m2, m3, m4, m5, m6, m7, m8, m9]

        elsif skg_result_value == 'Intermediário'
          rec = Recommendation.create(
                  user_id: @user_id,
                  quiz_id: @quiz_id,
                  title: "Letramento Digital Móvel - Intermediário - "+(I18n.l quiz.created_at, format: :long),
                  content: "No Letramento Digital Móvel você está no nível intermediário. É recomendável que você aprofunde mais sobre os dispositivos móveis para ter mais autonomia no uso destes recursos. Você ainda tem dificuldade em identificar possíveis mensagens de spans e vírus, cuidados com relação à privacidade entre outros. Para saber mais sobre todas as competências do Letramento Digital Móvel acesse a opção “Informações”. Os materiais e cursos abaixo podem lhe ajudar nesta busca de novos conhecimentos.")

          m1 = Material.where(title: "Curso TecMovI – Tecnologias Móveis para Idosos").first
          m2 = Material.where(title: "Dicas para realizar pesquisa na internet").first
          m3 = Material.where(title: "Material educacional digital sobre o que é Redes Sociais Digitais").first
          m4 = Material.where(title: "Material educacional digital sobre Segurança na Internet").first
          m5 = Material.where(title: "Apresentação de como utilizar o Messenger").first
          m6 = Material.where(title: "Apresentação como utilizar o Instagram no dispositivo móvel").first
          m7 = Material.where(title: "Apresentação de como usar o MOOVIT no dispositivo móvel").first
          m8 = Material.where(title: "Apresentação de como usar o Google Keep no dispositivo móvel").first
          m9 = Material.where(title: "Lista de aplicativos para melhor a qualidade de vida").first
          m10 = Material.where(title: "Apresentação sobre edição de vídeos no VivaVídeo").first
          m11 = Material.where(title: "Vídeo como editar vídeos no VivaVideo").first

          rec.materials << [m1, m2, m3, m4, m5, m6, m7, m8, m9, m10, m11]

        elsif skg_result_value == 'Avançado'
          rec = Recommendation.create(
                  user_id: @user_id,
                  quiz_id: @quiz_id,
                  title: "Letramento Digital Móvel - Avançado - "+(I18n.l quiz.created_at, format: :long),
                  content: "No Letramento Digital Móvel você está no nível avançado. Você já possui muitos conhecimentos, habilidades e atitudes que permite utilizar os dispositivos móveis com segurança. Para saber mais sobre todas as competências do Letramento Digital Móvel acesse a opção “Informações”. Os materiais e cursos abaixo podem lhe ajudar a conhecer outros recursos mais avançados dos dispositivos móveis!")

          m1 = Material.where(title: "Curso TecMovI – Tecnologias Móveis para Idosos").first
          m2 = Material.where(title: "Lista de aplicativos que podem ser utilizados nos dispositivos móveis").first
          m3 = Material.where(title: "Características dos sistemas operacionais dos dispositivos móveis").first
          m4 = Material.where(title: "Material educacional digital sobre o que é Redes Sociais Digitais").first
          m5 = Material.where(title: "Material educacional digital sobre Segurança na Internet").first
          m6 = Material.where(title: "Apresentação de como usar o Google Keep no dispositivo móvel").first
          m7 = Material.where(title: "Lista de aplicativos para melhor a qualidade de vida").first
          m8 = Material.where(title: "Apresentação sobre edição de vídeos no VivaVídeo").first
          m9 = Material.where(title: "Vídeo como editar vídeos no VivaVideo").first

          rec.materials << [m1, m2, m3, m4, m5, m6, m7, m8, m9]

        end
      elsif skg_title == "Fluência Digital Móvel"
        if skg_result_value == 'Básico'
          rec = Recommendation.create(
                  user_id: @user_id,
                  quiz_id: @quiz_id,
                  title: "Fluência Digital Móvel - Básico - "+(I18n.l quiz.created_at, format: :long),
                  content: "Na Fluência Digital Móvel você está no nível básico. É recomendável que você aprofunde mais sobre o uso das ferramentas de comunicação e informação de forma crítica, além do gerenciamento dos aplicativos mais adequados para sua necessidade. Para saber mais sobre todas as competências da Fluência Digital Móvel acesse a opção “Informações”. Os materiais e cursos abaixo podem lhe ajudar nesta busca de novos conhecimentos!")

          m1 = Material.where(title: "Curso TecMovI – Tecnologias Móveis para Idosos").first
          m2 = Material.where(title: "Material educacional digital sobre o que é Redes Sociais Digitais").first
          m3 = Material.where(title: "Material educacional digital sobre Segurança na Internet").first
          m4 = Material.where(title: "Apresentação de como usar o Google Keep no dispositivo móvel").first
          m5 = Material.where(title: "Lista de aplicativos para melhor a qualidade de vida").first
          m6 = Material.where(title: "Apresentação sobre edição de vídeos no VivaVídeo").first
          m7 = Material.where(title: "Vídeo como editar vídeos no VivaVideo").first

          rec.materials << [m1, m2, m3, m4, m5, m6, m7]

        elsif skg_result_value == 'Intermediário'
          rec = Recommendation.create(
                  user_id: @user_id,
                  quiz_id: @quiz_id,
                  title: "Fluência Digital Móvel - Intermediário - "+(I18n.l quiz.created_at, format: :long),
                  content: "Na Fluência Digital Móvel você está no nível intermediário. É recomendável que você aprofunde outras opções de compartilhar e construir os materiais digitais nos dispositivos móveis entre outras características. Para saber mais sobre todas as competências da Fluência Digital Móvel acesse a opção “Informações”. Os materiais e cursos abaixo podem lhe ajudar nesta busca de novos conhecimentos!")

          m1 = Material.where(title: "Curso TecMovI – Tecnologias Móveis para Idosos").first
          m2 = Material.where(title: "Material educacional digital sobre o que é Redes Sociais Digitais").first
          m3 = Material.where(title: "Material educacional digital sobre Segurança na Internet").first
          m4 = Material.where(title: "Apresentação de como compartilhar e marcar atividades no Facebook").first
          m5 = Material.where(title: "Apresentação de como usar o Google Keep no dispositivo móvel").first
          m6 = Material.where(title: "Lista de aplicativos para melhor a qualidade de vida").first
          m7 = Material.where(title: "Apresentação sobre edição de vídeos no VivaVídeo").first
          m8 = Material.where(title: "Vídeo como editar vídeos no VivaVideo").first

          rec.materials << [m1, m2, m3, m4, m5, m6, m7, m8]

        elsif skg_result_value == 'Avançado'
          rec = Recommendation.create(
                  user_id: @user_id,
                  quiz_id: @quiz_id,
                  title: "Fluência Digital Móvel - Avançado - "+(I18n.l quiz.created_at, format: :long),
                  content: "Na Fluência Digital Móvel você está no nível avançado. Você já possui muitos conhecimentos, habilidades e atitudes que permite utilizar os dispositivos móveis com total autonomia. Para saber mais sobre todas as competências da Fluência Digital Móvel acesse a opção “Informações”. Os materiais e cursos abaixo podem lhe ajudar a conhecer outros recursos mais avançados dos dispositivos móveis!")

          m1 = Material.where(title: "Curso TecMovI – Tecnologias Móveis para Idosos").first
          m2 = Material.where(title: "Lista de aplicativos que podem ser utilizados nos dispositivos móveis").first
          m3 = Material.where(title: "Características dos sistemas operacionais dos dispositivos móveis").first
          m4 = Material.where(title: "Material educacional digital sobre Segurança na Internet").first
          m5 = Material.where(title: "Lista de aplicativos para melhor a qualidade de vida").first
          m6 = Material.where(title: "Apresentação sobre edição de vídeos no VivaVídeo").first

          rec.materials << [m1, m2, m3, m4, m5, m6]
        end
      end
    end
  end
end
