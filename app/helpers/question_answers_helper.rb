module QuestionAnswersHelper
  def google_drive_img_url(url)
    if /drive.google.com/.match(url)
      #https://drive.google.com/open?id=1tBQyvSqZ9Ld7fB741n2oGr3N1DlIpc62
      id = url.split(/id=/).second

      "https://drive.google.com/thumbnail?id=" + id
    else
      url
    end
  end
end
