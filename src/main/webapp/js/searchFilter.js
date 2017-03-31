function search(mode) {
	var grade = document.getElementById('grade');
	var popularity = document.getElementById('popularity');

	if (mode == 1) {
		grade.style['border'] = "2px solid tomato";
		grade.style['color'] = 'tomato';

		popularity.style['border'] = "1px solid #CFCFCF";
		popularity.style['color'] = "#CFCFCF";
	} else if (mode == 2) {
		grade.style['border'] = "1px solid #CFCFCF";
		grade.style['color'] = '#CFCFCF';

		popularity.style['border'] = "2px solid tomato";
		popularity.style['color'] = "tomato";
	}
}// search

function price(mode) {
	var money = document.getElementsByClassName('money');

	for (i = 0; i < money.length; i++) {
		money[i].style['border'] = "3px solid #CFCFCF";
		money[i].style['color'] = "#CFCFCF";
	}

	var selected = document.getElementById(mode);

	selected.style['border'] = "3px solid tomato";
	selected.style['color'] = "tomato";
}// price

function foodType(foodName, mode) {
	var foodImage = document.getElementsByClassName('foodImage');
	var selectedFoodNum = document.getElementById(mode);
	var foodArr = [ 'koreanFood', 'japanFood', 'chinaFood', 'westernFood',
			'grobalFood', 'buffet', 'cafe', 'bar' ];

	for (i = 0; i < foodImage.length; i++) {
		foodImage[i].setAttribute("src", "/resources/images/min_image/"
				+ foodArr[i] + "_0.PNG");
		var aa = document.getElementById(i);
		aa.style['color'] = "#CFCFCF";
	}
	selectedFoodNum.style['color'] = "tomato";

	var selectedFoodType = document.getElementById(foodName);
	selectedFoodType.setAttribute("src", "/resources/images/min_image/"
			+ foodName + "_1.PNG");
}// foodType

function parking(mode) {
	var absence = document.getElementById('absence');
	var distantPoints = document.getElementById('distantPoints');

	if (mode == 1) {
		absence.style['border'] = "2px solid tomato";
		absence.style['color'] = 'tomato';

		distantPoints.style['border'] = "1px solid #CFCFCF";
		distantPoints.style['color'] = "#CFCFCF";
	} else if (mode == 2) {
		absence.style['border'] = "1px solid #CFCFCF";
		absence.style['color'] = '#CFCFCF';

		distantPoints.style['border'] = "2px solid tomato";
		distantPoints.style['color'] = "tomato";
	}
}// parking

function openCity(cityName, mode) {
	var city = document.getElementsByClassName('city');
	var areaNameTitle = document.getElementsByClassName('areaNameTitle');

	for (i = 0; i < city.length; i++) {
		city[i].style.display = "none";
	}

	for (j = 0; j < areaNameTitle.length; j++) {
		areaNameTitle[j].style['border-bottom'] = "1px solid #ccc";
		areaNameTitle[j].style['color'] = "#ccc";
	}

	var selectedCity = document.getElementById(mode);
	selectedCity.style['border-bottom'] = "1px solid tomato";
	selectedCity.style['color'] = "tomato";

	document.getElementById(cityName).style.display = "block";

	var zoneName = document.getElementsByClassName('zoneName');

	for (i = 0; i < zoneName.length; i++) {
		zoneName[i].style['border'] = "1px solid #ccc";
		zoneName[i].style['color'] = "#CFCFCF";
	}
}

function selectZone(mode) {
	var zoneName = document.getElementsByClassName('zoneName');

	for (i = 0; i < zoneName.length; i++) {
		zoneName[i].style['border'] = "1px solid #ccc";
		zoneName[i].style['color'] = "#CFCFCF";
	}

	var selectedZone = document.getElementById(mode);
	selectedZone.style['border'] = "1px solid tomato";
	selectedZone.style['color'] = "tomato";
}

function closeFilter() {
	window.close();
}