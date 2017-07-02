<script src="https://code.getmdl.io/1.3.0/material.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
<script>
    $(document).ready(function() {
        $('.mdh-toggle-search').click(function() {
            // No search bar is currently shown
            if ($(this).find('i').text() == 'search') {
                $(this).find('i').text('cancel');
                $(this).removeClass('mdl-cell--hide-tablet mdl-cell--hide-desktop'); // Ensures the close button doesn't disappear if the screen is resized.

                $('.mdl-layout__drawer-button, .mdl-layout-title, .mdl-badge, .mdl-layout-spacer').hide();
                $('.mdl-layout__header-row').css('padding-left', '16px'); // Remove margin that used to hold the menu button
                $('.mdh-expandable-search').removeClass('mdl-cell--hide-phone').css('margin', '0 16px 0 0');

            }
            // Search bar is currently showing
            else {
                $(this).find('i').text('search');
                $(this).addClass('mdl-cell--hide-tablet mdl-cell--hide-desktop');

                $('.mdl-layout__drawer-button, .mdl-layout-title, .mdl-badge, .mdl-layout-spacer').show();
                $('.mdl-layout__header-row').css('padding-left', '');
                $('.mdh-expandable-search').addClass('mdl-cell--hide-phone').css('margin', '0 50px');
            }

        });
    });
</script>
<script>
    Array.prototype.forEach.call(document.querySelectorAll('.mdl-card__media'), function(el) {
        var link = el.querySelector('a');
        if(!link) {
            return;
        }
        var target = link.getAttribute('href');
        if(!target) {
            return;
        }
        el.addEventListener('click', function() {
            location.href = target;
        });
    });


</script>