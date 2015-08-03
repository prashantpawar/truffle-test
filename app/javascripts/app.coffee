document.addEventListener("DOMContentLoaded", (e) ->
    stored_val = SimpleStorage.get() 
    store_el = document.getElementById("storedValue")
    store_el.innerHTML = stored_val
    window.store = ->
        el = document.getElementById("toStoreInput")
        console.warn "store triggerred" + el.value
    console.warn SimpleStorage.new()
)