puts "Iniciando !"

puts "Criando usuários ..."
m = Master.create!(name: "Leti", email: 'master@teste.com', password: 'adminadmin', password_confirmation: 'adminadmin')

a = Educator.create(name: 'Leti',
                 educational_institution: 'UFRGS',
                 birthday: "1993-04-05",
                 gender: "Feminino",
                 phone: 51982019999,
                 country: "Brasil",
                 state: "RS",
                 city: "Porto Alegre",
                 education: "Ensino Médio Completo",
                 email: "educador@teste.com",
                 password: "testeteste",
                 password_confirmation: "testeteste",
                 active: true)

a2 = Educator.create(name: 'Educador 1',
                    educational_institution: 'UFRGS',
                    birthday: "1993-04-05",
                    gender: "Feminino",
                    phone: 51982019999,
                    country: "Brasil",
                    state: "RS",
                    city: "Porto Alegre",
                    education: "Ensino Médio Completo",
                    email: "educador2@teste.com",
                    password: "testeteste",
                    password_confirmation: "testeteste",
                    active: true)

s = Senior.create(name: 'Senior Primeiro',
                 birthday: "1893-04-05",
                 gender: "Masculino",
                 phone: 51999019999,
                 country: "Brasil",
                 state: "RS",
                 city: "Porto Alegre",
                 education: "Ensino Médio Completo",
                 email: "senior@teste.com",
                 password: "testeteste",
                 password_confirmation: "testeteste",
                 active: true)

s2 = Senior.create(name: 'Senior Segundo',
                birthday: "1953-04-05",
                gender: "Masculino",
                phone: 51999019999,
                country: "Brasil",
                state: "RS",
                city: "Porto Alegre",
                education: "Ensino Médio Completo",
                email: "senior2@teste.com",
                password: "testeteste",
                password_confirmation: "testeteste",
                active: true)

puts "Criando grupos ..."
g1 = Group.create(title: 'Grupo 1', user: a)
g2 = Group.create(title: 'Grupo 2', user: a)

puts "Criando participações em grupos ..."
gp = GroupParticipation.create(group: g1, user: s)
gp = GroupParticipation.create(group: g2, user: s)

puts "Criando Grupos de Competências ..."
sk_gp1 = SkillGroup.create(title: "Alfabetização Digital Móvel")
sk_gp2 = SkillGroup.create(title: "Letramento Digital Móvel")
sk_gp3 = SkillGroup.create(title: "Fluência Digital Móvel")

puts "Criando Competências ..."
sk1 = Skill.create(title: "Uso básico dos DM", skill_group: sk_gp1)
sk2 = Skill.create(title: "Gestão das configurações para mobilidade", skill_group: sk_gp1)
sk3 = Skill.create(title: "Utilização dos aplicativos", skill_group: sk_gp1)
sk4 = Skill.create(title: "Comunicação móvel", skill_group: sk_gp1)
sk5 = Skill.create(title: "Gestão da informação móvel", skill_group: sk_gp1)
sk6 = Skill.create(title: "Resiliência para mobilidade", skill_group: sk_gp1)
sk7 = Skill.create(title: "Comunicação móvel", skill_group: sk_gp2)
sk8 = Skill.create(title: "Gestão da informação móvel", skill_group: sk_gp2)
sk9 = Skill.create(title: "Cibersegurança móvel", skill_group: sk_gp2)
sk10 = Skill.create(title: "Perfil Digital móvel", skill_group: sk_gp2)
sk11 = Skill.create(title: "Resiliência para mobilidade", skill_group: sk_gp2)
sk12 = Skill.create(title: "Comunicação móvel", skill_group: sk_gp3)
sk13 = Skill.create(title: "Gestão da informação móvel", skill_group: sk_gp3)
sk14 = Skill.create(title: "Resiliência para mobilidade", skill_group: sk_gp3)
sk15 = Skill.create(title: "Criação de conteúdos digitais móveis", skill_group: sk_gp3)

puts "Criando questões ..."
q1 = Question.create(skill: sk1, statement: "Você possui, sabe o que é e como utilizar o dispositivo móvel (smartphone, tablet) e seus recursos básicos (teclado, ligar/desligar) com confiança no seu cotidiano.", user: a, image: "https://drive.google.com/open?id=1FOkgoqttW_EeWPk8dTh7_Euyj93NK3mq")
q2 = Question.create(skill: sk1, statement: "Você conhece as principais funções dos dispositivos móveis e como utilizar com flexibilidade no seu dia-a-dia.", user: a, image: "https://drive.google.com/open?id=1RUhrag3FjeEfL8JcoTnotERdVRR7qz6j")
q3 = Question.create(skill: sk2, statement: "Você sabe o que é, conhece os tipos existentes e como utilizar as conexões (Wifi, dados móveis) com responsabilidade e confiança no seu dia-a-dia.", user: a, image: "https://drive.google.com/open?id=1G3Akl--ffsIkhu_EO9zXFGGsr6yBXFdF")
q4 = Question.create(skill: sk2, statement: "Você conhece e utiliza com responsabilidade e flexibilidade os tipos de conexão (Wifi, 3G/4G etc.) e configurações existentes nos dispositivos móveis.", user: a, image: "https://drive.google.com/open?id=1Wj2t24w-i2aZitKtORHU428AQ17ewg28")
q5 = Question.create(skill: sk3, statement: "Você sabe o que é, conhece os tipos existentes e utiliza com confiança e flexibilidade os aplicativos mais comuns nos dispositivos móveis.", user: a, image: "https://drive.google.com/open?id=1hDPYy1mBSZkShdBTb5grveNopleV4TdN")
q6 = Question.create(skill: sk3, statement: "Você conhece, sabe gerenciar os aplicativos através dos dispositivos móveis com responsabilidade e flexibilidade.", user: a, image: "https://drive.google.com/open?id=1R4db5TLgP07XSBni2IXzFQnyHLOnITti")
q7 = Question.create(skill: sk4, statement: "Você conhece os tipos de comunicação (mensagens) e aplicativos necessários para interagir com os amigos e familiares com confiança e respeito através dos dispositivos móveis.", user: a, image: "https://drive.google.com/open?id=1RzrDus7kW81tYRn3W_xkJS-o3_unr13r")
q8 = Question.create(skill: sk4, statement: "Você conhece e utiliza os aplicativos de comunicação através dos dispositivos móveis com flexibilidade e tolerância em relação às diferenças dos outros.", user: a, image: "https://drive.google.com/open?id=1Oxo6NIha5D9TCB5RLAfVNFzc6jMgkgmn")
q9 = Question.create(skill: sk5, statement: "Você conhece os tipos de informação e forma de pesquisas disponíveis nos dispositivos móveis para utilizar estes recursos com confiança e responsabilidade no seu cotidiano.", user: a, image: "https://drive.google.com/open?id=1R0QoBvW8voSmC58txlwJawMyigUCje6F")
q10 = Question.create(skill: sk5, statement: "Você conhece e utiliza as diferentes formas de gestão nos aplicativos com responsabilidade e criticidade sobre as informações compartilhadas através dos dispositivos móveis.", user: a, image: "https://drive.google.com/open?id=1VA3NiekfVONfejZip-XdCv5k146HNdA4")
q11 = Question.create(skill: sk6, statement: "Você conhece os limites e potencialidades que o envelhecimento proporcionou para utilizar com confiança, persistência e flexibilidade os dispositivos móveis.", user: a, image: "https://drive.google.com/open?id=1b2ixYzpikDBQJ_t74VeRMLEjCQdXdJWP")
q12 = Question.create(skill: sk6, statement: "Você conhece limites oriundos do processo de envelhecimento e consegue lidar com as mudanças e sabe enfrentar as dificuldades.", user: a, image: "https://drive.google.com/open?id=1j3oK3RaA-ZoGDD_jnxjW7lCD3T7jcMzz")
q13 = Question.create(skill: sk7, statement: "Você conhece e sabe diferenciar os tipos de linguagem disponíveis para comunicação nos dispositivos móveis, utilizando com tolerância, confiança e respeitos às regras de etiqueta nos meios de comunicação.", user: a, image: "https://drive.google.com/open?id=1_Cm87X4tpuuQzLiYxOp6726Wp0F0zJY7")
q14 = Question.create(skill: sk7, statement: "Você conhece e utiliza a netiqueta através dos dispositivos móveis com respeito e flexibilidade a fim de se comunicar através dos dispositivos móveis.", user: a, image: "https://drive.google.com/open?id=1YMT5EmjFIC5B68sLd9631NRMeCibrOmg")
q15 = Question.create(skill: sk8, statement: "Você conhece, sabe diferenciar e utilizar as informações disponíveis na internet com confiança e responsabilidade através dos dispositivos móveis.", user: a, image: "https://drive.google.com/open?id=1zYUbpD1vhs2umOy23cawZ1sAPcICaOAw")
q16 = Question.create(skill: sk8, statement: "Você conhece, identifica e utiliza aplicativos de gestão da informação nos dispositivos móveis a fim de evitar golpes virtuais.", user: a, image: "https://drive.google.com/open?id=1AjlPH21o6ijHABl4f0Y79zno6wPVUAR-")
q17 = Question.create(skill: sk9, statement: "Você conhece, identifica com criticidade, confiança as mensagens que podem prejudicar o uso dos dispositivos móveis como os spams e vírus.", user: a, image: "https://drive.google.com/open?id=1E7OQvtp-AjD2hX8oNphPOvN82xM4Cu_9")
q18 = Question.create(skill: sk9, statement: "Você conhece, sabe diferenciar criticamente e identifica possuir informações falsas e golpes (vírus, spans etc.) através dos dispositivos móveis.", user: a, image: "https://drive.google.com/open?id=1etBf1qivvP2Mdn0ef26lwooBimhbMw2b")
q19 = Question.create(skill: sk10, statement: "Você conhecer e utiliza com confiança, criticidade e responsabilidade as ferramentas de gerenciamento de privacidade que podem evitar que os seus dados pessoais sejam divulgados nos aplicativos dos dispositivos móveis.", user: a, image: "https://drive.google.com/open?id=1ShzMWfS6Kz6K_p6YOScCE4CjSZvp1x7g")
q20 = Question.create(skill: sk10, statement: "Você conhece e sabe gerenciar com responsabilidade e criticidade os diferentes perfis (contas de e-mail, redes sociais etc.) nos aplicativos dos dispositivos móveis.", user: a, image: "https://drive.google.com/open?id=1ixK-jE2oh4Yw6GIm6-pnUxlMskm4GX8Q")
q21 = Question.create(skill: sk11, statement: "Você conhece e utiliza os dispositivos móveis com confiança, persistência e abertura de acordo com as limitações e potencialidades que a velhice possibilitou a você.", user: a, image: "https://drive.google.com/open?id=1riob0U82gLvpBCkgDH9jrdDfTGNVao1w")
q22 = Question.create(skill: sk11, statement: "Você conhece e utiliza os dispositivos móveis com autonomia, confiança, persistência e flexibilidade a partir das limitações e potencialidade do processo de envelhecimento.", user: a, image: "https://drive.google.com/open?id=1mHfiuwZSRJWP9hOkWwlfNe4BYIc7zey-")
q23 = Question.create(skill: sk12, statement: "Você conhece, sabe escolher, e utilizar com confiança, e responsabilidade os aplicativos de comunicação utilizando e compartilhando imagens, vídeos e sons construídos por você.", user: a, image: "https://drive.google.com/open?id=1egx9ChRP_708CGNGa8evS1Zb8duF0OLp")
q24 = Question.create(skill: sk12, statement: "Você conhece, sabe utilizar com flexibilidade, confiança e persistência os aplicativos de comunicação para compartilhar materiais digitais (fotos, vídeos etc.) desenvolvidos por você através dos dispositivos móveis.", user: a, image: "https://drive.google.com/open?id=1YpW4Mab1YT6P2E9CtdODxFcNInnaDX8-")
q25 = Question.create(skill: sk13, statement: "Você conhece, identifica e utiliza com autonomia e confiança os melhores aplicativos que possibilitam gerenciar as informações que você tem acesso através dos dispositivos móveis.", user: a, image: "https://drive.google.com/open?id=1Te85k85ZmLyUzgN3hLtJbCPFVC2KEl0Q")
q26 = Question.create(skill: sk13, statement: "Você conhece, sabe identificar, selecionar e analisar criticamente os melhores aplicativos de gerenciamento das informações compartilhadas através dos dispositivos móveis de forma flexível, confiante e com autonomia.", user: a, image: "https://drive.google.com/open?id=1ZTFjobZV5jEUDlKaAZvJO2EDldB8kk4u")
q27 = Question.create(skill: sk14, statement: "Você conhece e utiliza os aplicativos dos dispositivos móveis com confiança, abertura e persistência a partir das dificuldades e facilidades oriundas da velhice.", user: a, image: "https://drive.google.com/open?id=1meDbETy8VWBuYASD4njD7QlLmGEan-wC")
q28 = Question.create(skill: sk14, statement: "Você conhece e sabe utilizar com autonomia, confiança, flexibilidade e persistência os aplicativos para construir materiais digitais de acordo com as potencialidades e limitações oriundas do processo de envelhecimento.", user: a, image: "https://drive.google.com/open?id=1qq_KUQ4pNfMkv1YphMQ3AxAFDlQBIPpc")
q29 = Question.create(skill: sk15, statement: "Você conhece, utiliza e desenvolve materiais digitais (como vídeos, imagens, áudios etc.) com flexibilidade, confiança abertura através dos dispositivos móveis.", user: a, image: "https://drive.google.com/open?id=1tBQyvSqZ9Ld7fB741n2oGr3N1DlIpc62")
q30 = Question.create(skill: sk15, statement: "Você conhece, seleciona, planeja e utiliza com autonomia os aplicativos para construir materiais digitais através dos dispositivos móveis de forma a compartilhar e colaborar com colegas, família e amigo.", user: a, image: "https://drive.google.com/open?id=1V_uMpq7nkGuRw81vwP-sS6adfHslsUMl")

puts "Criando quiz e respostas ..."
qz = Quiz.create(user: a)
qa1 = QuestionAnswer.create(user: s, question: q1, answer: 6, quiz: qz)

puts "Criando materiais ..."
m1 = Material.create(title: "Curso TecMovI – Tecnologias Móveis para Idosos", type: "DefaultMaterial", language: "pt", user: a, content: "http://tecmovi.weebly.com/")
m2 = Material.create(title: "Apresentação sobre os conceitos básicos dos dispositivos móveis", type: "DefaultMaterial", language: "pt", user: a, content: "http://tecmovi.weebly.com/aula-1-conceitos.html")
m3 = Material.create(title: "Apresentação sobre o que é um aplicativo", type: "DefaultMaterial", language: "pt", user: a, content: "http://tecmovi.weebly.com/aula-2-conceitos-app.html")
m4 = Material.create(title: "Apresentação de como utilizar o teclado do dispositivo móvel", type: "DefaultMaterial", language: "pt", user: a, content: "http://tecmovi.weebly.com/aula-6-teclado-e-whatsapp.html")
m5 = Material.create(title: "Material Educacional Digital DIMOS (Dispositivos Móveis)", type: "DefaultMaterial", language: "pt", user: a, content: "http://www.nuted.ufrgs.br/oa/dimos/")
m6 = Material.create(title: "Apresentação sobre os tipos de sistema operacional dos dispositivos móveis (iOs, Android)", type: "DefaultMaterial", language: "pt", user: a, content: "http://tecmovi.weebly.com/aula-3-conceitos-so-e-configuraccedilotildees.html")
m7 = Material.create(title: "Como instalar e desinstalar aplicativos", type: "DefaultMaterial", language: "pt", user: a, content: "http://tecmovi.weebly.com/aula-4-e-5-instalando-um-aplicativo-e-aprendendo-novos-apps.html")
m8 = Material.create(title: "Apresentação de como utilizar o WhatsApp", type: "DefaultMaterial", language: "pt", user: a, content: "http://tecmovi.weebly.com/aula-6-teclado-e-whatsapp.html")
m9 = Material.create(title: "Configurações básicas dos dispositivos móveis", type: "DefaultMaterial", language: "pt", user: a, content: "http://tecmovi.weebly.com/aula-3-conceitos-so-e-configuraccedilotildees.html")
m10 = Material.create(title: "Como fazer uma pesquisa através dos dispositivos móveis", type: "DefaultMaterial", language: "pt", user: a, content: "http://tecmovi.weebly.com/aula-8-duacutevidas-e-pesquisa-na-internet.html")
m11 = Material.create(title: "Dicas para realizar pesquisa na internet", type: "DefaultMaterial", language: "pt", user: a, content: "https://www.google.com/intl/pt-BR_ALL/search/about/")
m12 = Material.create(title: "Como utilizar o Facebook", type: "DefaultMaterial", language: "pt", user: a, content: "http://tecmovi.weebly.com/aula-2-facebook-i.html")
m13 = Material.create(title: "Material educacional digital sobre o que é Redes Sociais Digitais", type: "DefaultMaterial", language: "pt", user: a, content: "http://www.nuted.ufrgs.br/oa/conredis/index.html")

m14 = Material.create(title: "Vídeos como utilizar o Youtube", type: "DefaultMaterial", language: "es", user: a, content: "http://www.emiliano.es/youtube-desde-0-para-personas-mayores/")
m15 = Material.create(title: "Vídeos sobre o que é o Facebook", type: "DefaultMaterial", language: "es", user: a, content: "https://www.youtube.com/playlist?list=PLFzx0wnR_3qTP_niVpQaybP_dH_SDUNZK")
m16 = Material.create(title: "Vídeo como utilizar o WhatsApp", type: "DefaultMaterial", language: "es", user: a, content: "https://www.youtube.com/watch?v=Eozu8ic7BBE")

m17 = Material.create(title: "Lista de aplicativos que podem ser utilizados nos dispositivos móveis", type: "DefaultMaterial", language: "pt", user: a, content: "http://tecmovi.weebly.com/uploads/2/6/2/0/26200938/ma_aplicativos.pdf")
m18 = Material.create(title: "Apresentação de como utilizar o Messenger", type: "DefaultMaterial", language: "pt", user: a, content: "http://tecmovi.weebly.com/aula-8-messenger.html")
m19 = Material.create(title: "Apresentação como utilizar o Instagram no dispositivo móvel", type: "DefaultMaterial", language: "pt", user: a, content: "http://tecmovi.weebly.com/aula-9-instagram.html")
m20 = Material.create(title: "Material educacional digital sobre Segurança na Internet", type: "DefaultMaterial", language: "pt", user: a, content: "http://www.nuted.ufrgs.br/oa/seguridade/")
m21 = Material.create(title: "Vídeo como editar vídeos no VivaVideo", type: "DefaultMaterial", language: "pt", user: a, content: "https://www.youtube.com/watch?v=r8uspeqcN5E")
m22 = Material.create(title: "Apresentação de como usar o MOOVIT no dispositivo móvel", type: "DefaultMaterial", language: "pt", user: a, content: "http://tecmovi.weebly.com/aula-7-moovit.html")
m23 = Material.create(title: "Apresentação de como usar o Google Keep no dispositivo móvel", type: "DefaultMaterial", language: "pt", user: a, content: "http://tecmovi.weebly.com/aula-11-keep.html")
m24 = Material.create(title: "Lista de aplicativos para melhor a qualidade de vida", type: "DefaultMaterial", language: "pt", user: a, content: "http://tecmovi.weebly.com/aula-12-qualidade-de-vida.html")
m25 = Material.create(title: "Apresentação sobre edição de vídeos no VivaVídeo", type: "DefaultMaterial", language: "pt", user: a, content: "http://tecmovi.weebly.com/aula-8-viacutedeo-i.html")
m26 = Material.create(title: "Características dos sistemas operacionais dos dispositivos móveis", type: "DefaultMaterial", language: "pt", user: a, content: "https://smartmundo.com/sistemas-operacionais-para-smartphones/")

m27 = Material.create(title: "Vídeo como recuperar a senha do Gmail", type: "DefaultMaterial", language: "es", user: a, content: "https://www.youtube.com/watch?v=T6IDGDCfYiw&index=31&list=PLFzx0wnR_3qTP_niVpQaybP_dH_SDUNZK&t=0s")
m28 = Material.create(title: "Vídeo como recuperar conta do Facebook", type: "DefaultMaterial", language: "es", user: a, content: "https://www.youtube.com/watch?v=MRV369kIKkY&index=30&list=PLFzx0wnR_3qTP_niVpQaybP_dH_SDUNZK&t=0s")
m29 = Material.create(title: "Vídeo como desativar temporariamente uma conta no Facebook", type: "DefaultMaterial", language: "es", user: a, content: "https://www.youtube.com/watch?v=o5Sr6bH-b_U&index=28&list=PLFzx0wnR_3qTP_niVpQaybP_dH_SDUNZK&t=0s")
m30 = Material.create(title: "Vídeo sobre como editar vídeo no VivaVideo", type: "DefaultMaterial", language: "es", user: a, content: "https://www.youtube.com/watch?v=dT03VMHUB9U")

m31 = Material.create(title: "Apresentação de como compartilhar e marcar atividades no Facebook", type: "DefaultMaterial", language: "pt", user: a, content: "http://tecmovi.weebly.com/aula-6-facebook-iv.html")

m32 = Material.create(title: "Vídeo como apagar uma conta no Youtube", type: "DefaultMaterial", language: "es", user: a, content: "https://www.youtube.com/watch?v=yHZhiNEx-ns&index=27&list=PLFzx0wnR_3qTP_niVpQaybP_dH_SDUNZK&t=0s")
m33 = Material.create(title: "Vídeo como administrar uma página no Facebook", type: "DefaultMaterial", language: "es", user: a, content: "https://youtu.be/n4ArvZ7h95E")

m34 = Material.create(title: "Teste de google doc", type: "EducatorMaterial", language: "pt", user: a, content: "https://docs.google.com/document/d/1bH7AtzRLKd4i4MR9HZbvLcxeHGroaZKMz9K31Fk_sbw/edit?usp=sharing")

puts "Criando recomendações ..."
r = Recommendation.create(title: "Recomendação 1", content: "bla bla bla", user: s2, quiz: qz)
r2 = Recommendation.create(title: "Recomendação 2", content: "bla bla bla", user: s2, quiz: qz)
r.materials << [m1, m2]
r2.materials << m2

# es translate aditions
# skill groups
sk_gp1 = SkillGroup.where(title: "Alfabetização Digital Móvel").first
sk_gp1.es_title = "Alfabetización Digital Móvil"
sk_gp1.save
sk_gp2 = SkillGroup.where(title: "Letramento Digital Móvel").first
sk_gp2.es_title = "Letramento Digital Móvil"
sk_gp2.save
sk_gp3 = SkillGroup.where(title: "Fluência Digital Móvel").first
sk_gp3.es_title = "Fluidez Digital Móvil"
sk_gp3.save

# skills
sk1 = Skill.where(title: "Uso básico dos DM").first
sk1.es_title = "Uso básico de los DM"
sk1.save
sk2 = Skill.where(title: "Gestão das configurações para mobilidade").first
sk2.es_title = "Gestión de las configuraciones para la movilidad"
sk2.save
sk3 = Skill.where(title: "Utilização dos aplicativos").first
sk3.es_title = "Utilización de los aplicativos"
sk3.save
sk4 = Skill.where(title: "Comunicação móvel").first
sk4.es_title = "Comunicación móvil"
sk4.save
sk5 = Skill.where(title: "Gestão da informação móvel").first
sk5.es_title = "Gestión de la información móvil"
sk5.save
sk6 = Skill.where(title: "Resiliência para mobilidade").first
sk6.es_title = "Resiliencia para la movilidad"
sk6.save
sk7 = Skill.where(title: "Comunicação móvel").first
sk7.es_title = "Comunicación móvil"
sk7.save
sk8 = Skill.where(title: "Gestão da informação móvel").first
sk8.es_title = "Gestión de la información móvil"
sk8.save
sk9 = Skill.where(title: "Cibersegurança móvel").first
sk9.es_title = "Ciberseguridad móvil"
sk9.save
sk10 = Skill.where(title: "Perfil Digital móvel").first
sk10.es_title = "Perfil digital móvil"
sk10.save
sk11 = Skill.where(title: "Resiliência para mobilidade").first
sk11.es_title = "Resiliencia para la movilidad"
sk11.save
sk12 = Skill.where(title: "Comunicação móvel").first
sk12.es_title = "Comunicación móvil"
sk12.save
sk13 = Skill.where(title: "Gestão da informação móvel").first
sk13.es_title = "Gestión de la información móvil"
sk13.save
sk14 = Skill.where(title: "Resiliência para mobilidade").first
sk14.es_title = "Resiliencia para la movilidad"
sk14.save
sk15 = Skill.where(title: "Criação de conteúdos digitais móveis").first
sk15.es_title = "Creación de contenidos digitales móviles"
sk15.save

# questions
q1 = Question.where(statement: "Você possui, sabe o que é e como utilizar o dispositivo móvel (smartphone, tablet) e seus recursos básicos (teclado, ligar/desligar) com confiança no seu cotidiano.").first
q1.es_statement = "Usted sabe lo que es y cómo utilizar el dispositivo móvil (smartphone, tableta) y sus funciones básicas (teclado, encendido / apagado) con confianza en su cotidiano."
q1.save
q2 = Question.where(statement: "Você conhece as principais funções dos dispositivos móveis e como utilizar com flexibilidade no seu dia-a-dia.").first
q2.es_statement = "Usted conoce las principales funciones de los dispositivos móviles y cómo utilizar con flexibilidad en su día a día."
q2.save
q3 = Question.where(statement: "Você sabe o que é, conhece os tipos existentes e como utilizar as conexões (Wifi, dados móveis) com responsabilidade e confiança no seu dia-a-dia.").first
q3.es_statement = "Usted sabe lo que es, conoce los tipos existentes y cómo utilizar las conexiones (Wifi, datos móviles) con responsabilidad y confianza en su día a día."
q3.save
q4 = Question.where(statement: "Você conhece e utiliza com responsabilidade e flexibilidade os tipos de conexão (Wifi, 3G/4G etc.) e configurações existentes nos dispositivos móveis.").first
q4.es_statement = "Usted conoce y utiliza con responsabilidad y flexibilidad los tipos de conexión (Wifi, 3G / 4G etc.) y configuraciones existentes en los dispositivos móviles."
q4.save
q5 = Question.where(statement: "Você sabe o que é, conhece os tipos existentes e utiliza com confiança e flexibilidade os aplicativos mais comuns nos dispositivos móveis.").first
q5.es_statement = "Usted sabe lo que es, conoce los tipos existentes y utiliza con confianza y flexibilidad las aplicaciones más comunes en los dispositivos móviles."
q5.save
q6 = Question.where(statement: "Você conhece, sabe gerenciar os aplicativos através dos dispositivos móveis com responsabilidade e flexibilidade.").first
q6.es_statement = "Usted conoce, sabe manejar las aplicaciones a través de los dispositivos móviles con responsabilidad y flexibilidad."
q6.save
q7 = Question.where(statement: "Você conhece os tipos de comunicação (mensagens) e aplicativos necessários para interagir com os amigos e familiares com confiança e respeito através dos dispositivos móveis.").first
q7.es_statement = "Usted conoce los tipos de comunicación (mensajes) y aplicaciones necesarias para interactuar con los amigos y familiares con confianza y respeto a través de los dispositivos móviles."
q7.save
q8 = Question.where(statement: "Você conhece e utiliza os aplicativos de comunicação através dos dispositivos móveis com flexibilidade e tolerância em relação às diferenças dos outros.").first
q8.es_statement = "Usted conoce y utiliza las aplicaciones de comunicación a través de dispositivos móviles con flexibilidad y tolerancia, respetando las diferencias."
q8.save
q9 = Question.where(statement: "Você conhece os tipos de informação e forma de pesquisas disponíveis nos dispositivos móveis para utilizar estes recursos com confiança e responsabilidade no seu cotidiano.").first
q9.es_statement = "Usted conoce los tipos de información y formas de investigación disponibles en los dispositivos móviles para utilizar estos recursos con confianza y responsabilidad en su cotidiano."
q9.save
q10 = Question.where(statement: "Você conhece e utiliza as diferentes formas de gestão nos aplicativos com responsabilidade e criticidade sobre as informações compartilhadas através dos dispositivos móveis.").first
q10.es_statement = "Usted conoce y utiliza las diferentes formas de gestión en las aplicaciones con responsabilidad y criticidad en lo que se refiere a la información compartida a través de los dispositivos móviles."
q10.save
q11 = Question.where(statement: "Você conhece os limites e potencialidades que o envelhecimento proporcionou para utilizar com confiança, persistência e flexibilidade os dispositivos móveis.").first
q11.es_statement = "Usted conoce los límites y potencialidades que el envejecimiento ha proporcionado para utilizar los dispositivos móviles con confianza, persistencia y flexibilidad."
q11.save
q12 = Question.where(statement: "Você conhece limites oriundos do processo de envelhecimento e consegue lidar com as mudanças e sabe enfrentar as dificuldades.").first
q12.es_statement = "Usted conoce límites del proceso de envejecimiento, puede manejar los cambios y sabe afrontar las dificultades."
q12.save
q13 = Question.where(statement: "Você conhece e sabe diferenciar os tipos de linguagem disponíveis para comunicação nos dispositivos móveis, utilizando com tolerância, confiança e respeitos às regras de etiqueta nos meios de comunicação.").first
q13.es_statement = "Usted conoce y sabe diferenciar los tipos de lenguaje disponibles para la comunicación en los dispositivos móviles, utilizándolos con tolerancia, confianza y respeto a las reglas de etiqueta en los medios de comunicación. "
q13.save
q14 = Question.where(statement: "Você conhece e utiliza a netiqueta através dos dispositivos móveis com respeito e flexibilidade a fim de se comunicar através dos dispositivos móveis.").first
q14.es_statement = "Usted conoce y utiliza la netiqueta a través de los dispositivos móviles con respeto y flexibilidad para comunicarse a través de los dispositivos móviles."
q14.save
q15 = Question.where(statement: "Você conhece, sabe diferenciar e utilizar as informações disponíveis na internet com confiança e responsabilidade através dos dispositivos móveis.").first
q15.es_statement = "Usted conoce, sabe diferenciar y utilizar la información disponible en Internet con confianza y responsabilidad a través de los dispositivos móviles."
q15.save
q16 = Question.where(statement: "Você conhece, identifica e utiliza aplicativos de gestão da informação nos dispositivos móveis a fim de evitar golpes virtuais.").first
q16.es_statement = "Usted conoce, identifica y utiliza aplicaciones de gestión de la información en dispositivos móviles para evitar golpes virtuales."
q16.save
q17 = Question.where(statement: "Você conhece, identifica com criticidade, confiança as mensagens que podem prejudicar o uso dos dispositivos móveis como os spams e vírus.").first
q17.es_statement = "Usted conoce, identifica con criticidad y confianza los mensajes que pueden perjudicar el uso de los dispositivos móviles como los spans y los virus."
q17.save
q18 = Question.where(statement: "Você conhece, sabe diferenciar criticamente e identifica possuir informações falsas e golpes (vírus, spans etc.) através dos dispositivos móveis.").first
q18.es_statement = "Usted conoce, sabe diferenciar críticamente e identifica informaciones falsas y golpes (virus, spans, etc.) a través de los dispositivos móviles."
q18.save
q19 = Question.where(statement: "Você conhecer e utiliza com confiança, criticidade e responsabilidade as ferramentas de gerenciamento de privacidade que podem evitar que os seus dados pessoais sejam divulgados nos aplicativos dos dispositivos móveis.").first
q19.es_statement = "Usted conoce y utiliza con confianza, criticidad y responsabilidad las herramientas de administración de privacidad que pueden evitar que sus datos personales sean publicados en las aplicaciones de los dispositivos móviles."
q19.save
q20 = Question.where(statement: "Você conhece e sabe gerenciar com responsabilidade e criticidade os diferentes perfis (contas de e-mail, redes sociais etc.) nos aplicativos dos dispositivos móveis.").first
q20.es_statement = "Usted conoce y sabe manejar con responsabilidad y criticidad los diferentes perfiles (cuentas de correo electrónico, redes sociales, etc.) en las aplicaciones de los dispositivos móviles."
q20.save
q21 = Question.where(statement: "Você conhece e utiliza os dispositivos móveis com confiança, persistência e abertura de acordo com as limitações e potencialidades que a velhice possibilitou a você.").first
q21.es_statement = "Usted conoce y utiliza los dispositivos móviles con confianza, persistencia y apertura de acuerdo con las limitaciones y potencialidades que la vejez le ha permitido."
q21.save
q22 = Question.where(statement: "Você conhece e utiliza os dispositivos móveis com autonomia, confiança, persistência e flexibilidade a partir das limitações e potencialidade do processo de envelhecimento.").first
q22.es_statement = "Usted conoce y utiliza los dispositivos móviles con autonomía, confianza, persistencia y flexibilidad a partir de las limitaciones y la potencialidad del proceso de envejecimiento. "
q22.save
q23 = Question.where(statement: "Você conhece, sabe escolher, e utilizar com confiança, e responsabilidade os aplicativos de comunicação utilizando e compartilhando imagens, vídeos e sons construídos por você.").first
q23.es_statement = "Usted conoce, sabe elegir, y utilizar con confianza, y responsabilidad de las aplicaciones de comunicación utilizando y compartiendo imágenes, vídeos y sonidos construidos por usted."
q23.save
q24 = Question.where(statement: "Você conhece, sabe utilizar com flexibilidade, confiança e persistência os aplicativos de comunicação para compartilhar materiais digitais (fotos, vídeos etc.) desenvolvidos por você através dos dispositivos móveis.").first
q24.es_statement = "Usted conoce, sabe utilizar con flexibilidad, confianza y persistencia las aplicaciones de comunicación para compartir materiales digitales (fotos, vídeos, etc.) desarrollados por usted a través de los dispositivos móviles."
q24.save
q25 = Question.where(statement: "Você conhece, identifica e utiliza com autonomia e confiança os melhores aplicativos que possibilitam gerenciar as informações que você tem acesso através dos dispositivos móveis.").first
q25.es_statement = "Usted conoce, identifica y utiliza con autonomía y confianza las mejores aplicaciones que permiten administrar las informaciones que usted tiene acceso a través de los dispositivos móviles."
q25.save
q26 = Question.where(statement: "Você conhece, sabe identificar, selecionar e analisar criticamente os melhores aplicativos de gerenciamento das informações compartilhadas através dos dispositivos móveis de forma flexível, confiante e com autonomia.").first
q26.es_statement = "Usted conoce, sabe identificar, seleccionar y analizar críticamente las mejores aplicaciones de gestión de la información compartida a través de dispositivos móviles de forma flexible, confiable y autónoma."
q26.save
q27 = Question.where(statement: "Você conhece e utiliza os aplicativos dos dispositivos móveis com confiança, abertura e persistência a partir das dificuldades e facilidades oriundas da velhice.").first
q27.es_statement = "Usted conoce y utiliza las aplicaciones de los dispositivos móviles con confianza, apertura y persistencia a partir de las dificultades y las facilidades de la vejez."
q27.save
q28 = Question.where(statement: "Você conhece e sabe utilizar com autonomia, confiança, flexibilidade e persistência os aplicativos para construir materiais digitais de acordo com as potencialidades e limitações oriundas do processo de envelhecimento.").first
q28.es_statement = "Usted conoce y sabe utilizar con autonomía, confianza, flexibilidad y persistencia las aplicaciones para construir materiales digitales de acuerdo con las potencialidades y limitaciones oriundas del proceso de envejecimiento."
q28.save
q29 = Question.where(statement: "Você conhece, utiliza e desenvolve materiais digitais (como vídeos, imagens, áudios etc.) com flexibilidade, confiança abertura através dos dispositivos móveis.").first
q29.es_statement = "Usted conoce, utiliza y desarrolla materiales digitales (como vídeos, imágenes, audios, etc.) con flexibilidad, confianza apertura a través de los dispositivos móviles."
q29.save
q30 = Question.where(statement: "Você conhece, seleciona, planeja e utiliza com autonomia os aplicativos para construir materiais digitais através dos dispositivos móveis de forma a compartilhar e colaborar com colegas, família e amigo.").first
q30.es_statement = "Usted conoce, utiliza y desarrolla materiales digitales (como vídeos, imágenes, audios, etc.) con flexibilidad, confianza apertura a través de los dispositivos móviles."
q30.save

# materials
m1 = Material.where(title: "Curso TecMovI – Tecnologias Móveis para Idosos").first
m1.alt_lang_title = "Curso TecMovI - Tecnologías Móviles para ancianos"
m1.save
m2 = Material.where(title: "Apresentação sobre os conceitos básicos dos dispositivos móveis").first
m2.alt_lang_title = "Presentación sobre los conceptos básicos de los dispositivos móviles"
m2.save
m3 = Material.where(title: "Apresentação sobre o que é um aplicativo").first
m3.alt_lang_title = "Presentación sobre lo que es una aplicación"
m3.save
m4 = Material.where(title: "Apresentação de como utilizar o teclado do dispositivo móvel").first
m4.alt_lang_title = "Presentación de cómo utilizar el teclado del dispositivo móvil"
m4.save
m5 = Material.where(title: "Material Educacional Digital DIMOS (Dispositivos Móveis)").first
m5.alt_lang_title = "Material Educativo Digital DIMOS (Dispositivos Móviles)"
m5.save
m6 = Material.where(title: "Apresentação sobre os tipos de sistema operacional dos dispositivos móveis (iOs, Android)").first
m6.alt_lang_title = "Presentación sobre los tipos de sistema operativo de los dispositivos móviles (iOs, Android)"
m6.save
m7 = Material.where(title: "Como instalar e desinstalar aplicativos").first
m7.alt_lang_title = "Cómo instalar y desinstalar aplicaciones"
m7.save
m8 = Material.where(title: "Apresentação de como utilizar o WhatsApp").first
m8.alt_lang_title = "Presentación de cómo utilizar WhatsApp"
m8.save
m9 = Material.where(title: "Configurações básicas dos dispositivos móveis").first
m9.alt_lang_title = "Configuración básica de los dispositivos móviles"
m9.save
m10 = Material.where(title: "Como fazer uma pesquisa através dos dispositivos móveis").first
m10.alt_lang_title = "Cómo realizar una búsqueda a través de dispositivos móviles"
m10.save
m11 = Material.where(title: "Dicas para realizar pesquisa na internet").first
m11.alt_lang_title = "Consejos para realizar la búsqueda en Internet"
m11.save
m12 = Material.where(title: "Como utilizar o Facebook").first
m12.alt_lang_title = "Cómo utilizar Facebook"
m12.save
m13 = Material.where(title: "Material educacional digital sobre o que é Redes Sociais Digitais").first
m13.alt_lang_title = "Material educativo digital sobre lo que es Redes Sociales Digitales"
m13.save
m14 = Material.where(title: "Vídeos como utilizar o Youtube").first
m14.alt_lang_title = "Videos como usar Youtube"
m14.save
m15 = Material.where(title: "Vídeos sobre o que é o Facebook").first
m15.alt_lang_title = "Videos sobre lo que es Facebook"
m15.save
m16 = Material.where(title: "Vídeo como utilizar o WhatsApp").first
m16.alt_lang_title = "Vídeo cómo utilizar WhatsApp"
m16.save
m17 = Material.where(title: "Lista de aplicativos que podem ser utilizados nos dispositivos móveis").first
m17.alt_lang_title = "Lista de aplicaciones que se pueden utilizar en dispositivos móviles"
m17.save
m18 = Material.where(title: "Apresentação de como utilizar o Messenger").first
m18.alt_lang_title = "Presentación de cómo utilizar Messenger"
m18.save
m19 = Material.where(title: "Apresentação como utilizar o Instagram no dispositivo móvel").first
m19.alt_lang_title = "Presentación como utilizar Instagram en el dispositivo móvil"
m19.save
m20 = Material.where(title: "Material educacional digital sobre Segurança na Internet").first
m20.alt_lang_title = "Material educativo digital sobre Seguridad en Internet"
m20.save
m21 = Material.where(title: "Vídeo como editar vídeos no VivaVideo").first
m21.alt_lang_title = "Vídeo como editar vídeos en VivaVideo"
m21.save
m22 = Material.where(title: "Apresentação de como usar o MOOVIT no dispositivo móvel").first
m22.alt_lang_title = "Presentación de cómo utilizar MOOVIT en el dispositivo móvil"
m22.save
m23 = Material.where(title: "Apresentação de como usar o Google Keep no dispositivo móvel").first
m23.alt_lang_title = "Presentación de cómo utilizar Google Keep en el dispositivo móvil"
m23.save
m24 = Material.where(title: "Lista de aplicativos para melhor a qualidade de vida").first
m24.alt_lang_title = "Lista de aplicaciones para mejorar la calidad de vida"
m24.save
m25 = Material.where(title: "Apresentação sobre edição de vídeos no VivaVídeo").first
m25.alt_lang_title = "Presentación sobre la edición de vídeos en VivaVídeo"
m25.save
m26 = Material.where(title: "Características dos sistemas operacionais dos dispositivos móveis").first
m26.alt_lang_title = "Características de los sistemas operativos de los dispositivos móviles"
m26.save
m27 = Material.where(title: "Vídeo como recuperar a senha do Gmail").first
m27.alt_lang_title = "Vídeo cómo recuperar la contraseña de Gmail"
m27.save
m28 = Material.where(title: "Vídeo como recuperar conta do Facebook").first
m28.alt_lang_title = "Vídeo como recuperar la cuenta de Facebook"
m28.save
m29 = Material.where(title: "Vídeo como desativar temporariamente uma conta no Facebook").first
m29.alt_lang_title = "Cómo deshabilitar temporalmente una cuenta en Facebook"
m29.save
m30 = Material.where(title: "Vídeo sobre como editar vídeo no VivaVideo").first
m30.alt_lang_title = "Vídeo sobre cómo editar vídeo en VivaVideo"
m30.save
m31 = Material.where(title: "Apresentação de como compartilhar e marcar atividades no Facebook").first
m31.alt_lang_title = "Presentación de cómo compartir y marcar actividades en Facebook"
m31.save
m32 = Material.where(title: "Vídeo como apagar uma conta no Youtube").first
m32.alt_lang_title = "Cómo borrar una cuenta en Youtube"
m32.save
m33 = Material.where(title: "Vídeo como administrar uma página no Facebook").first
m33.alt_lang_title = "Vídeo cómo administrar una página en Facebook"
m33.save

puts "Tudo feito ! =D"
