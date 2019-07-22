  $(document).ready(function() {
    $('#category_autocomplete').autocomplete({
    source: '/categories',
    messages: {
      noResults: '',
      results: function() {}
    },
    focus: function(event, ui) {
      $('.ui-helper-hidden-accessible').hide();
      event.preventDefault();
    }
    });
  });
