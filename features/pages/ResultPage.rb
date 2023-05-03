class ResultPage
  include PageObject

    a(:winery, class: "winery")
    div(:breadcrumbs,class: /breadCrumbs/)

end
