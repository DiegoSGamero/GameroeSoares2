document.getElementById("phone-number-input").addEventListener("input", function() {
  let phoneNumber = this.value.replace(/\D/g, '');
  let formattedNumber = '';

  if (phoneNumber.length > 2) {
      formattedNumber = `(${phoneNumber.substring(0, 2)})`;

      if (phoneNumber.length > 7) {
          formattedNumber += ` ${phoneNumber.substring(2, 7)}`;
          if (phoneNumber.length > 11) {
              formattedNumber += `-${phoneNumber.substring(7, 11)}`;
          } else {
              formattedNumber += `-${phoneNumber.substring(7)}`;
          }
      } else {
          formattedNumber += ` ${phoneNumber.substring(2)}`;
      }
  }

  this.value = formattedNumber;
});
