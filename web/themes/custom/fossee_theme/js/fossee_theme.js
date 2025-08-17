(function ($, Drupal) {
  'use strict';
  
  Drupal.behaviors.fosseeTheme = {
    attach: function (context, settings) {
      // Activity cards click functionality - Now working with content switching
      $('.activity-card', context).once('activity-cards').click(function() {
        var activityType = $(this).data('activity');
        
        if (activityType) {
          // Remove active class from all cards and activity items
          $('.activity-card').removeClass('active clicked');
          $('.activity-item').removeClass('active');
          
          // Add active class to clicked card
          $(this).addClass('active');
          
          // Show corresponding activity content
          $('.activity-item[data-activity="' + activityType + '"]').addClass('active');
          
          // Add visual feedback
          $(this).addClass('clicked');
          setTimeout(function() {
            $('.activity-card').removeClass('clicked');
          }, 200);
        }
      });
      
      // Initialize first activity card as active
      if ($('.activity-card:first', context).length && !$('.activity-card.active', context).length) {
        $('.activity-card:first', context).addClass('active');
      }
      
      // Social media links functionality
      $('.social-icon', context).once('social-icons').click(function(e) {
        e.preventDefault();
        var platform = $(this).attr('class').split(' ')[1];
        console.log('Clicked on social media: ' + platform);
        
        // You can add actual social media links here
        switch(platform) {
          case 'facebook':
            // window.open('https://facebook.com/fosseeproject', '_blank');
            break;
          case 'youtube':
            // window.open('https://youtube.com/c/fosseeproject', '_blank');
            break;
          case 'linkedin':
            // window.open('https://linkedin.com/company/fossee', '_blank');
            break;
          case 'instagram':
            // window.open('https://instagram.com/fosseeproject', '_blank');
            break;
        }
      });
    }
  };
  
})(jQuery, Drupal);
