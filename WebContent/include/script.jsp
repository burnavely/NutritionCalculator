<script>
		const cal = [ 23, 160, 230, 85, 65, 178, 110, 156, 575, 405 ];
		const prot = [ 3, 2, 10, 8, 3, 3.8, 2, 2.4, 126.8, 28.8 ];
		const fatx = [ 0.3, 1, 3, 0, 1, 0.9, 1, 0.4, 3.6, 26.6 ];
		const vit = [ 8100, 9230, 120, 500, 0, 0, 2510, 7000, 0, 984 ];
		const calc = [ 93, 46, 343, 302, 24, 18, 30, 80, 73, 190 ];

		function compute() {

			var spin = document.getElementById('spin');
			var spotato = document.getElementById('spotato');
			var yog = document.getElementById('yog');
			var milk = document.getElementById('milk');
			var bread = document.getElementById('bread');
			var rice = document.getElementById('rice');
			var wmelon = document.getElementById('wmelon');
			var papaya = document.getElementById('papaya');
			var tuna = document.getElementById('tuna');
			var lob = document.getElementById('lob');

			var arr = document.getElementsByName('qty');

			var calories = document.getElementById('calories');
			var protein = document.getElementById('protein');
			var fat = document.getElementById('fat');
			var vitamina = document.getElementById('vitamina');
			var calcium = document.getElementById('calcium');

			var totalcal = 0;
			var totalprot = 0;
			var totalfat = 0;
			var totalvit = 0;
			var totalcalc = 0;

			
			var quantity = [spin.value, spotato.value, yog.value, milk.value, bread.value, rice.value, wmelon.value, papaya.value, tuna.value, lob.value];
	
			for (i = 0; i < 10; i++) {
					totalcal = totalcal + cal[i] * quantity[i];
					totalprot = totalprot + prot[i] * quantity[i];
					totalfat = totalfat + fatx[i] * quantity[i];
					totalvit = totalvit + vit[i] * quantity[i];
					totalcalc = totalcalc + calc[i] * quantity[i];
			}
			calories.innerHTML = totalcal.toFixed(2);
			protein.innerHTML = totalprot.toFixed(2);
			fat.innerHTML = totalfat.toFixed(2);
			vitamina.innerHTML = totalvit.toFixed(2);
			calcium.innerHTML = totalcalc.toFixed(2);

		}
	</script>
	
	<script>
		function resetcal() {			
			document.getElementById("myForm").reset();
		}
	</script>