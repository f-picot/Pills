function delayAnimation () {
    var animatedEl = $('.pulse');
    animatedEl.removeClass('animated');

    setTimeout(function () {
        animatedEl.addClass('animated');
        setTimeout(delayAnimation, 1500);
    }, 6000)
}

delayAnimation();

var $bubbles = $('.bubbles');

function bubbles() {
  var min_bubble_count = 10,
      max_bubble_count = 15,
      min_bubble_size = 20,
      max_bubble_size = 30;

  var bubbleCount = min_bubble_count + Math.floor(Math.random() * (max_bubble_count + 1));

  for (var i = 0; i < bubbleCount; i++) {
    $bubbles.append('<div class="bubble-container"><div class="bubble"></div></div>');
  }

  $bubbles.find('.bubble-container').each(function(){
    var pos_top_rand = Math.floor(Math.random() * 101);
    var pos_bottom_rand = Math.floor(Math.random() * 101);
    //var size_rand = min_bubble_size + Math.floor(Math.random() * (max_bubble_size + 1));
    var size_rand = Math.random() < 0.5 ? 20 : 30;
    var opacity_rand = Math.random() < 0.5 ? 0.06 : 0.12;
    var delay_rand = Math.floor(Math.random() * 16);
    var speed_rand = 3 + Math.floor(Math.random() * 9);
    var $this = $(this);

    $this.css({
      'left' : pos_bottom_rand + '%',
      'top'  : pos_top_rand + '%',

      'opacity'  : opacity_rand,

      '-webkit-animation-delay' : delay_rand + 's',
      '-moz-animation-delay' : delay_rand + 's',
      '-ms-animation-delay' : delay_rand + 's',
      'animation-delay' : delay_rand + 's',
    });

    $this.children('.bubble').css({
      'width' : size_rand + 'px',
      'height' : size_rand + 'px'
    });

  });
}

bubbles();
