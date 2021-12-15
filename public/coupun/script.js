// Countdown Timer
function countDown(x) {
	if (x.matches) {
		console.log('Mobile');
	} else {
		// If media query matches
		console.log('Desktop');
		// Set the date we're counting down to
		var countDownDate = new Date('Dec 30, 2021 00:00:00').getTime();

		// Update the count down every 1 second
		var x = setInterval(function () {
			// Get today's date and time
			var now = new Date().getTime();

			// Find the distance between now and the count down date
			var distance = countDownDate - now;

			// Time calculations for days, hours, minutes and seconds
			var days = Math.floor(distance / (1000 * 60 * 60 * 24));
			var hours = Math.floor(
				(distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60)
			);
			var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
			var seconds = Math.floor((distance % (1000 * 60)) / 1000);

			// Output the result in an element with id="demo"
			document.getElementById('timer').innerHTML =
				days + 'd ' + hours + 'h ' + minutes + 'm ' + seconds + 's ';

			// If the count down is over, write some text
			if (distance < 0) {
				clearInterval(x);
				document.getElementById('timer').innerHTML = 'EXPIRED';
			}
		}, 1000);
	}
}

var x = window.matchMedia('(max-width: 768px)');
countDown(x); // Call listener function at run time
x.addListener(countDown); // Attach listener function on state changes

// Click to Copy
var tooltip = document.getElementById('myTooltip');
var copyText = document.getElementById('couponCode');
function myFunction() {
	copyText.select();
	copyText.setSelectionRange(0, 99999);
	document.execCommand('copy');
	tooltip.innerHTML = 'Copied: ' + copyText.value;
}
function outFunc() {
	tooltip.innerHTML = 'Copy to clipboard';
}

// Close
var closebtns = document.getElementsByClassName(
	'close'
); /* Get all elements with class="close" */
var i;
/* Loop through the elements, and hide the parent, when clicked on */
for (i = 0; i < closebtns.length; i++) {
	closebtns[i].addEventListener('click', function () {
		this.parentElement.style.display = 'none';
	});
}