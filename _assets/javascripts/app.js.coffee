#= require jquery
#= require jquery.scrollTo
#= require bootstrap
#= require videojs
#= require videojs-youtube

do ->
  $(document).ready (e)->
    # ScrollTo
    $("[sref-scroll]").on "click", (e)->
      e.preventDefault()
      target = $(e.target).attr("sref-scroll")

      $("body, html")
        .scrollTo target, { duration: 1000 }
    #

    videojs("about").ready ->
      this.on "play", (e)->
        console.log "Play"
        $("body, html").scrollTo "#about", { duration: 1000 }
    #

  $(window).load (e)->
    $(".slide").slick
      infinite: false
      slidesToShow: 3
      prevArrow: "<a class='slick-prev fa fa-angle-left'></a>"
      nextArrow: "<a class='slick-next fa fa-angle-right'></a>"
      responsive:[
        {
          breakpoint: 750
          settings:
            slidesToShow: 2
        },
        {
          breakpoint: 480
          settings:
            slidesToShow: 1
        }
      ]
