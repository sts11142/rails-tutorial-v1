// メニュー操作

// トグルリスナーを追加してクリックをリッスンする
function addToggleListener(selected_id, menu_id, toggle_class) {
  let selected_element = document.querySelector(`#${selected_id}`)
  selected_element.addEventListener('click', function(e) {
    e.preventDefault()
    let menu = document.querySelector(`#${menu_id}`)
    menu.classList.toggle(toggle_class)
  })
}

// トグルリスナーを追加してクリックをリッスンする
document.addEventListener('turbo:load', function () {
  addToggleListener('hamburger', 'navbar-menu', 'collapse')
  addToggleListener('account',   'dropdown-menu', 'active')
})