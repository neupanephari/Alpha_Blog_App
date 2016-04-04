$ ->
  $('.summernote').summernote
    height: 120
    styleWithSpan: false
  $('.summernote-plugin').summernote
    height: 120
    styleWithSpan: false
    toolbar: [
      [
        'style'
        [
          'bold'
          'italic'
          'underline'
          'clear'
        ]
      ]
      [
        'font'
        [ 'strikethrough' ]
      ]
      [
        'fontsize'
        [ 'fontsize' ]
      ]
      [
        'color'
        [ 'color' ]
      ]
      [
        'para'
        [
          'ul'
          'ol'
          'paragraph'
        ]
      ]
      [
        'height'
        [ 'height' ]
      ]
      [
        'table'
        [ 'table' ]
      ]
      [
        'chart'
        [ 'chart' ]
      ]
      [
        'insert'
        [ 
          'hello'
        ]
      ]
    ]
