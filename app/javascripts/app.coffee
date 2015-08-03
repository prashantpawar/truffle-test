storage = {}
document.addEventListener("DOMContentLoaded", (e) ->
    storage = SimpleStorage.at(SimpleStorage.deployed_address)
    storage.storedData().then((tx)->
        store_el = document.getElementById("storedValue")
        store_el.innerHTML = tx
    )
)
window.store = ->
    el = document.getElementById("toStoreInput")
    storage.set(el)