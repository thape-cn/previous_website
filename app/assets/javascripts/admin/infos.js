document.addEventListener("turbolinks:load", function() {
  if ($('#editor').length > 0) {
    return new Simditor({
      textarea: $('#editor'),
      toolbar: ['bold', 'italic', 'fontScale', 'color', '|', 'ol', 'ul', '|', 'image', 'link', '|', 'indent', 'outdent', 'alignment', '|', 'hr', 'table'],
      // fileKey: 'picture'  #指定服务器获取上传文件数据的参数params["upload_file"]
      upload: {
        url: '/admin/infos/upload' //对应的request routes
      }
    });
  }
});
