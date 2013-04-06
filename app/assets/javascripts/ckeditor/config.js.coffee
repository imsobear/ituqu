CKEDITOR.editorConfig = (config) ->
  config.language = 'zh-cn'
  config.width = '90%'
  config.height = '300'
  config.toolbar_Pure = [
    { name: 'basicstyles', items: [ 'Bold'] },
    { name: 'paragraph',   items: [ 'NumberedList','BulletedList','-','Outdent','Indent'] },
    { name: 'links',       items: [ 'Link'] },
    { name: 'styles',      items: [ 'FontSize' ] },
  ]
  config.toolbar = 'Pure'
  true

