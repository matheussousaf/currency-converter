function transitionOut() {
  setTimeout(() => {
    const main = document.getElementById("transition-out");
    main.className = "slide-out-top";

    setTimeout(() => {
      window.location.href = "main";
    }, 200);
  }, 1000);
}
