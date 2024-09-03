search = document.getElementById('search')
recipes = document.getElementsByClassName('block-container recipe')

search.addEventListener('input', () => {
  for (let i of recipes) {
    i.hidden = !(i.textContent.toLowerCase().includes(search.value.toLowerCase()))
  }
})