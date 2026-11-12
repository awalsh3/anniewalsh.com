// Small bits that used to come from the Rails server.
document.querySelectorAll("[data-year]").forEach(function (el) {
  el.textContent = new Date().getFullYear();
});

document.querySelectorAll("[data-weekday]").forEach(function (el) {
  el.textContent = new Date().toLocaleDateString("en-GB", { weekday: "long" });
});
