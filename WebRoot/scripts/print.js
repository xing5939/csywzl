var global_Html = "";
			function printme() {
				global_Html = document.body.innerHTML;
				document.body.innerHTML = document.getElementById('divPrint').innerHTML;
				window.print();
				window.setTimeout(function() {
					document.body.innerHTML = global_Html;
				}, 1500);
			}
