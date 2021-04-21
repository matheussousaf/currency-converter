function transitionIn() {
  const main = document.getElementById("transition-in");
  main.className = "slide-in-top";
  main.style.display = "flex";
}

document.addEventListener("DOMContentLoaded", function () {
  transitionIn();
});	

function setTwoNumberDecimal(event) {
  const newValue = parseFloat(event.value).toFixed(2);
  event.value = newValue;
}

function invert() {
  console.log("Massa");
  const inputContainer = document.getElementsByClassName("input-container")[0];
  inputContainer.style.flexDirection =
    inputContainer.style.flexDirection === "row-reverse"
      ? "row"
      : "row-reverse";
}
