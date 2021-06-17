module ApplicationHelper
  # Used in worker, take care !
  def skill_level(result)
    if (0..3).include?(result)
      'Básico'
    elsif (3.0001..7).include?(result)
      'Intermediário'
    elsif (7.0001..10).include?(result)
      'Avançado'
    else
      'ERRO'
    end
  end

  def material_type(material_content)
    if /youtube.com/.match(material_content)
      return 'youtube-video'
    elsif /docs.google.com/.match(material_content)
      return 'google-doc'
    else
      return 'other'
    end
  end

  def youtube_video_id(video_url)
    return video_url.split(/v=/).last.split('&').first
  end

  def format_material_view(current_language, material)
    if current_language == :es
      return material.alt_lang_title
    else #pt-BR
      return material.title  
    end
  end

  def format_language(str_language)
    if str_language == 'pt'
      return t('material_page.pt')
    elsif str_language == 'es'
      return t('material_page.es')
    else
      return t('general_infos.error')
    end
  end

  def format_default_recommendation_title(title)
    array_str = title.split('-')

    language = I18n.locale

    skill_group = array_str[0].strip
    level = array_str[1].strip
    date = I18n.l (array_str[2].strip).to_datetime, format: :long

    if language == :es
      skill_group = translate_to_es_skill_group(skill_group)
      level = translate_to_es_level(level)
    end

    html_to_return = "<p>"+skill_group+' - '+level+"</p><p>"+date+"</p>"

    return html_to_return.html_safe
  end

  def translate_to_es_skill_group(skill_group_str)
    if skill_group_str == "Alfabetização Digital Móvel"
      return t('infos_view.skill_ADM')
    elsif skill_group_str == "Letramento Digital Móvel"
      return t('infos_view.skill_LDM')
    elsif skill_group_str == "Fluência Digital Móvel"
      return t('infos_view.skill_FDM') 
    else
      return skill_group_str 
    end
  end

  def translate_to_es_skill(skill)
    if skill == "Uso básico dos DM"
      return "Uso básico de los DM"
    elsif skill == "Gestão das configurações para mobilidade"
      return "Gestión de las configuraciones para la movilidad"
    elsif skill == "Utilização dos aplicativos"
      return "Utilización de los aplicativos"
    elsif skill == "Comunicação móvel"
      return "Comunicación móvil"
    elsif skill == "Gestão da informação móvel"
      return "Gestión de la información móvil"
    elsif skill == "Resiliência para mobilidade"
      return "Resiliencia para la movilidad"
    elsif skill == "Comunicação móvel"
      return "Comunicación móvil"
    elsif skill == "Gestão da informação móvel"
      return "Gestión de la información móvil"
    elsif skill == "Cibersegurança móvel"
      return "Ciberseguridad móvil"
    elsif skill == "Perfil Digital móvel"
      return "Perfil digital móvil"
    elsif skill == "Resiliência para mobilidade"
      return "Resiliencia para la movilidad"
    elsif skill == "Comunicação móvel"
      return "Comunicación móvil"
    elsif skill == "Gestão da informação móvel"
      return "Gestión de la información móvil"
    elsif skill == "Resiliência para mobilidade"
      return "Resiliencia para la movilidad"
    elsif skill == "Criação de conteúdos digitais móveis"
      return "Creación de contenidos digitales móviles"
    else
      return skill
    end
  end
  
  def translate_to_es_level(level)
    if level == 'Básico'
      return t('page_infos.answer_low_level')
    elsif level == 'Intermediário'
      return t('page_infos.answer_medium_level')
    elsif level == 'Avançado'
      return t('page_infos.answer_high_level')
    else
      return t('general_infos.error')
    end
  end

  def translate_to_es_level_alternative(level)
    if level == 'Pouco'
      return t('page_infos.answer_low_level')
    elsif level == 'Moderado'
      return t('page_infos.answer_medium_level')
    elsif level == 'Avançado'
      return t('page_infos.answer_high_level')
    else
      return t('general_infos.error')
    end
  end

  def translate_to_es_recommendation_content(content)
    if content == "Na Alfabetização Digital Móvel você está no nível básico. É recomendável que você aprofunde mais sobre os dispositivos móveis para ter mais autonomia no uso destes recursos. Você ainda tem dificuldade na utilização dos recursos básicos como o teclado, ligar/desligar entre outros. Para saber mais sobre todas as competências da Alfabetização Digital Móvel acesse a opção “Informações”. Os materiais e cursos abaixo podem lhe ajudar nesta busca de novos conhecimentos."
      return "En la Alfabetización Digital Móvil usted está en el nivel básico. Es recomendable que profundícese más en los dispositivos móviles para tener más autonomía en el uso de estos recursos. Usted todavía tiene dificultad en el uso de los recursos básicos como el teclado, encendido / apagado entre otros. Para saber más sobre todas las competencias de Alfabetización Digital Móvil, acceda a la opción 'Información'. Los materiales y cursos a continuación pueden ayudarle en esta búsqueda de nuevos conocimientos."
    elsif content == "Na Alfabetização Digital Móvel você está no nível intermediário. É recomendável que você aprofunde mais sobre os dispositivos móveis para ter mais autonomia no uso destes recursos. Você ainda tem dificuldade em escolher e conectar os dispositivos móveis na internet (Wifi, dados móveis), instalar e desinstalar aplicativos entre outros. Para saber mais sobre todas as competências da Alfabetização Digital Móvel acesse a opção “Informações”. Os materiais e cursos abaixo podem lhe ajudar nesta busca de novos conhecimentos."
      return "En la Alfabetización Digital Móvil usted está en el nivel intermedio. Es recomendable que profundícese más en los dispositivos móviles para tener más autonomía en el uso de estos recursos. Usted todavía tiene dificultades para elegir y conectar los dispositivos móviles en Internet (Wifi, datos móviles), instalar y desinstalar aplicaciones entre otros. Para saber más sobre todas las competencias de Alfabetización Digital Móvil, acceda a la opción 'Información'. Los materiales y cursos a continuación pueden ayudarle en esta búsqueda de nuevos conocimientos."
    elsif content == "Na Alfabetização Digital Móvel você está no nível avançado. Você já possui muitos conhecimentos, habilidades e atitudes que permite utilizar os dispositivos móveis com autonomia. Para saber mais sobre todas as competências da Alfabetização Digital Móvel acesse a opção “Informações”. Os materiais e cursos abaixo podem lhe ajudar a conhecer outros recursos mais avançados dos dispositivos móveis!"
      return "En la Alfabetización Digital Móvil usted está en el nivel avanzado. Usted ya posee muchos conocimientos, habilidades y actitudes que le permiten utilizar los dispositivos móviles con autonomía. Para saber más sobre todas las competencias de Alfabetización Digital Móvil, acceda a la opción 'Información'. ¡Los materiales y cursos a continuación pueden ayudarle a conocer otras características más avanzadas de los dispositivos móviles!"
    elsif content == "No Letramento Digital Móvel você está no nível básico. É recomendável que você aprofunde mais sobre possibilidades para a leitura e escrita através dos recursos digitais nos dispositivos móveis como a netiqueta. Você ainda tem dificuldades com alguns aspectos como a escolha da melhor ferramenta de comunicação e informação para o objetivo que deseja entre outros. Para saber mais sobre todas as competências do Letramento Digital Móvel acesse a opção Informações. Os materiais e cursos abaixo podem lhe ajudar nesta busca de novos conhecimentos!"
      return "En el Letramento Digital Móvil usted está en el nivel básico. Es recomendable que se profundice más sobre las posibilidades para la lectura y escritura a través de los recursos digitales en los dispositivos móviles como la netiqueta. Usted todavía tiene dificultades con algunos aspectos como la elección de la mejor herramienta de comunicación e información para el objetivo que desea entre otros. Para obtener más información sobre todas las competencias del Letramento Digital Móvil, acceda a la opción 'Información'. ¡Los materiales y cursos abajo pueden ayudarle en esta búsqueda de nuevos conocimientos!"
    elsif content == "No Letramento Digital Móvel você está no nível intermediário. É recomendável que você aprofunde mais sobre os dispositivos móveis para ter mais autonomia no uso destes recursos. Você ainda tem dificuldade em identificar possíveis mensagens de spans e vírus, cuidados com relação à privacidade entre outros. Para saber mais sobre todas as competências do Letramento Digital Móvel acesse a opção “Informações”. Os materiais e cursos abaixo podem lhe ajudar nesta busca de novos conhecimentos."
      return "En el Letramento Digital Móvil usted está en el nivel intermedio. Es recomendable que se profundice más en los dispositivos móviles para tener más autonomía en el uso de estos recursos. Usted todavía tiene dificultad en identificar posibles mensajes de spans y virus, cuidados con respecto a la privacidad entre otros. Para saber más sobre todas las competencias del Letramento Digital Móvil, acceda a la opción 'Información'. Los materiales y cursos a continuación pueden ayudarle en esta búsqueda de nuevos conocimientos."
    elsif content == "No Letramento Digital Móvel você está no nível avançado. Você já possui muitos conhecimentos, habilidades e atitudes que permite utilizar os dispositivos móveis com segurança. Para saber mais sobre todas as competências do Letramento Digital Móvel acesse a opção “Informações”. Os materiais e cursos abaixo podem lhe ajudar a conhecer outros recursos mais avançados dos dispositivos móveis!"
      return "En el Letramento Digital Móvil usted está en el nivel avanzado. Usted ya tiene muchos conocimientos, habilidades y actitudes que permite utilizar los dispositivos móviles con seguridad. Para saber más sobre todas las competencias del Letramento Digital Móvil, acceda a la opción 'Información'. ¡Los materiales y cursos a continuación pueden ayudarle a conocer otras características más avanzadas de los dispositivos móviles!"
    elsif content == "Na Fluência Digital Móvel você está no nível básico. É recomendável que você aprofunde mais sobre o uso das ferramentas de comunicação e informação de forma crítica, além do gerenciamento dos aplicativos mais adequados para sua necessidade. Para saber mais sobre todas as competências da Fluência Digital Móvel acesse a opção “Informações”. Os materiais e cursos abaixo podem lhe ajudar nesta busca de novos conhecimentos!"
      return "En la Fluencia Digital Móvil usted está en el nivel básico. Es recomendable que se profundice más sobre el uso de las herramientas de comunicación e información de forma crítica, además de la gestión de las aplicaciones más adecuadas para su necesidad. Para saber más sobre todas las competencias de la Fluencia Digital Móvil, acceda a la opción 'Información'. ¡Los materiales y cursos abajo pueden ayudarle en esta búsqueda de nuevos conocimientos!"
    elsif content == "Na Fluência Digital Móvel você está no nível intermediário. É recomendável que você aprofunde outras opções de compartilhar e construir os materiais digitais nos dispositivos móveis entre outras características. Para saber mais sobre todas as competências da Fluência Digital Móvel acesse a opção “Informações”. Os materiais e cursos abaixo podem lhe ajudar nesta busca de novos conhecimentos!"
      return "En la Fluencia Digital Móvil usted está en el nivel intermedio. Es recomendable que conozca otras opciones de compartir y construir los materiales digitales en los dispositivos móviles entre otras características. Para saber más sobre todas las competencias de la Fluencia Digital Móvil, acceda a la opción 'Información'. ¡Los materiales y cursos abajo pueden ayudarle en esta búsqueda de nuevos conocimientos!"
    elsif content == "Na Fluência Digital Móvel você está no nível avançado. Você já possui muitos conhecimentos, habilidades e atitudes que permite utilizar os dispositivos móveis com total autonomia. Para saber mais sobre todas as competências da Fluência Digital Móvel acesse a opção “Informações”. Os materiais e cursos abaixo podem lhe ajudar a conhecer outros recursos mais avançados dos dispositivos móveis!"
      return "En la Fluencia Digital Móvil usted está en el nivel avanzado. Usted ya tiene muchos conocimientos, habilidades y actitudes que le permiten utilizar los dispositivos móviles con total autonomía. Para saber más sobre todas las competencias de la Fluencia Digital Móvil, acceda a la opción 'Información'. ¡Los materiales y cursos a continuación pueden ayudarle a conocer otras características más avanzadas de los dispositivos móviles!"
    else
      return content
    end
  end
end
