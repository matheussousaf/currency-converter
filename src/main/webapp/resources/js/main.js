var currentCurrency = "$";

function transitionIn() {
  const main = document.getElementsByClassName("transition-in")[0];
  main.className = main.className + " slide-in-top";
  main.style.display = "flex";
}

function transitionOut() {
  setTimeout(() => {
    const main = document.getElementsByClassName("transition-out")[0];
    main.className = "slide-out-top";

	submitForm()
  }, 1000);
}

function submitForm() {
	const form = document.getElementsByTagName("form")[0];
	form.submit();
}

document.addEventListener("DOMContentLoaded", function () {
  transitionIn();
});

function setTwoNumberDecimal(event) {
  const newValue = parseFloat(event.value).toFixed(2);
  event.value = newValue;
  setInfoText(newValue);
}

function setInfoText(newValue) {
  const value = document.getElementById("description");
 console.log(newValue)
  value.innerHTML = `Converta ${currentCurrency}${newValue} para ${
    currentCurrency === "$" ? "reais" : "dólares."
  }`;
}

function invert() {
  const currencyElement =
    document.getElementsByClassName("usd")[0] ||
    document.getElementsByClassName("brl")[0];
  currentCurrency = currencyElement.className == "usd" ? "R$" : "$";
  currencyElement.className =
    currencyElement.className == "usd" ? "brl" : "usd";
  const value = document.getElementsByTagName("input")[0];
  setInfoText(value.value);
}
