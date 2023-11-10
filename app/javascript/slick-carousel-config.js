$(document).on('turbolinks:load', function() {
  $('.slick-carousel').slick({
    autoplay: true,
    dots: true,
    infinite: true,
    speed: 500,
    slidesToShow: 1,
    slidesToScroll: 1
    // Adicione mais opções conforme necessário
  });
});
