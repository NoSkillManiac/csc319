window.onload = () ->
  images = document.querySelectorAll(".artThumb")

  for image in images
    newNode = document.createElement("img")

    image.onmouseover = ->
      newNode = document.createElement('img')
      oldsrc = @src
      parts = oldsrc.split '/'
      newNode.src = "images/art/" + parts[parts.length-1]
      newNode.style = 'border:solid 1px black;'
      newNode.className = 'bigImg'
      @parentNode.appendChild newNode
      console.log @src

    image.onmouseout = ->
      images = document.querySelectorAll(".bigImg")
      for image in images
        image.parentNode.removeChild(image)
