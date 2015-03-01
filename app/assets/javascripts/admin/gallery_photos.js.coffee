jQuery ->
  #$('#gallery_photo_photo').attr('name','gallery_photo[a]')
  $('#new_upload').fileupload
    dataType: 'script'
    add: (e, data) ->
      types = /(\.|\/)(gif|jpeg|png)$/i
      file = data.files[0]

      if types.test(file.type) || types.test(file.name)
        data.context = $(tmpl("template-upload", file))
        $('#new_upload').append(data.context)
        $('.actions button[type="submit"]').click (e) ->
          data.submit()
          e.preventDefault()
      else
        alert("#{file.name} is not gif, jpeg or png")

    progress: (e, data) ->
      if data.context
        progress = parseInt(data.loaded / data.total * 100, 10)
        data.context.find('.bar').css('width', progress + '%')

    done: (e, data) ->
      $('.actions button[type="submit"]').off('click')