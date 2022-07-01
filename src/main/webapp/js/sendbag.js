var nav = document.querySelector('.myfc')
var lis = nav.children;


for (var i = 0; i < lis.length; i++) {
    lis[i].onmouseover = function () { this.children[1].style.display = 'block'; }
    lis[i].onmouseout = function () { this.children[1].style.display = 'none'; }
}

var nav2 = document.querySelector('.nav2')
var lis2 = nav2.children; console.log(lis);
for (var i = 0; i < lis2.length; i++) {
    lis2[i].onmouseover = function () { this.children[1].style.display = 'block'; }
    lis2[i].onmouseout = function () { this.children[1].style.display = 'none'; }
}


//选择快递公司


for (var i = 0; i < $('.kdnav-li').length; i++) {
    $('.kdnav-li')[i].onclick = function () {

        //(1)我们先把所有按钮背景颜色去掉
        for (var i = 0; i < $('.kdnav-li').length; i++) {
            $('.kdnav-li')[i].style.backgroundColor = '';

            $('.kdnav-li')[i].style.borderWidth = "2px";
            $('.kdnav-li')[i].style.borderStyle = "solid";
            $('.kdnav-li')[i].style.borderColor = "#f8f8f8";

        }
        this.style.backgroundColor = '#fff9f1';
        this.style.borderWidth = "3px";
        this.style.borderStyle = "solid";
        this.style.borderColor = "#ffc600";

    };
}



//地区选择
$(function () {
    var current_prov;
    var current_city;
    var current_country;
    /* 自动加载省份列表 */
    showPro();
});
function showPro() {
    $(".btn").disabled = true;
    var len = province.length;
    for (var i = 0; i < len; i++) {
        var provOpt = document.createElement("option");
        provOpt.innerText = province[i]['name'];
        provOpt.value = i;
        prov.appendChild(provOpt);
    }
};
/*根据所选的省份来显示城市列表*/
function showCity(obj) {
    var val = obj.options[obj.selectedIndex].value;
    current_prov = val;
    if (val >= 0) {
        city.style.display = 'inline-block';
        country.style.display = 'none';
    } else {
        city.style.display = 'none';
        country.style.display = 'none';
    }
    if (val != null) {
        city.length = 1;
        if (province[val]) {
            var cityLen = province[val]["city"].length;
        }
        for (var j = 0; j < cityLen; j++) {
            var cityOpt = document.createElement('option');
            cityOpt.innerText = province[val]["city"][j].name;
            cityOpt.value = j;
            city.appendChild(cityOpt);
        }
    }
};
/*根据所选的城市来显示县区列表*/
function showCountry(obj) {
    var val = obj.options[obj.selectedIndex].value;
    if (val >= 0) {
        country.style.display = 'inline-block';
    } else {
        country.style.display = 'none';
    }
    current_city = val;
    if (val != null) {
        country.length = 1;
        if (province[current_prov]["city"][val]) {
            var countryLen = province[current_prov]["city"][val].districtAndCounty.length;
        }
        if (countryLen == 0) {
            addrShow.value = province[current_prov].name + '-' + province[current_prov]["city"][val].name;
            return;
        }
        for (var n = 0; n < countryLen; n++) {
            var countryOpt = document.createElement('option');
            countryOpt.innerText = province[current_prov]["city"][val].districtAndCounty[n];
            countryOpt.value = n;
            country.appendChild(countryOpt);
        }
    }
};

function selectCountry(obj) {
    current_country = obj.options[obj.selectedIndex].value;
    $(".btn").disabled = false;

};
function showAddr() {
    var ss = province[current_prov].name +
        province[current_prov]['city'][current_city].name +
        province[current_prov]['city'][current_city]['districtAndCounty'][current_country];
    $("#addr-show").val(ss);
}


//收件人地区选择
$(function () {
    var current_prov2;
    var current_city2;
    var current_country2;
    /* 自动加载省份列表 */
    showPro2();
});
function showPro2() {
    $(".btn2").disabled = true;
    var len2 = province.length;
    for (var i = 0; i < len2; i++) {
        var provOpt2 = document.createElement("option");
        provOpt2.innerText = province[i]['name'];
        provOpt2.value = i;
        prov2.appendChild(provOpt2);
    }
};
/*根据所选的省份来显示城市列表*/
function showCity2(obj) {
    var val2 = obj.options[obj.selectedIndex].value;
    current_prov2 = val2;
    if (val2 >= 0) {
        city2.style.display = 'inline-block';
        country2.style.display = 'none';
    } else {
        city2.style.display = 'none';
        country2.style.display = 'none';
    }
    if (val2 != null) {
        city2.length = 1;
        if (province[val2]) {
            var cityLen2 = province[val2]["city"].length;
        }
        for (var j = 0; j < cityLen2; j++) {
            var cityOpt2 = document.createElement('option');
            cityOpt2.innerText = province[val2]["city"][j].name;
            cityOpt2.value = j;
            city2.appendChild(cityOpt2);
        }
    }
};
/*根据所选的城市来显示县区列表*/
function showCountry2(obj) {
    var val3 = obj.options[obj.selectedIndex].value;
    if (val3 >= 0) {
        country2.style.display = 'inline-block';
    } else {
        country2.style.display = 'none';
    }
    current_city2 = val3;
    if (val3 != null) {
        country2.length = 1;
        if (province[current_prov2]["city"][val3]) {
            var countryLen2 = province[current_prov2]["city"][val3].districtAndCounty.length;
        }
        if (countryLen2 == 0) {
            addrShow.value = province[current_prov2].name + '-' + province[current_prov2]["city"][val3].name;
            return;
        }
        for (var n = 0; n < countryLen2; n++) {
            var countryOpt2 = document.createElement('option');
            countryOpt2.innerText = province[current_prov2]["city"][val3].districtAndCounty[n];
            countryOpt2.value = n;
            country2.appendChild(countryOpt2);
        }
    }
};

function selectCountry2(obj) {
    current_country2 = obj.options[obj.selectedIndex].value;
    $(".btn2").disabled = false;

};
function showAddr2() {
    var ss2 = province[current_prov2].name +
        province[current_prov2]['city'][current_city2].name +
        province[current_prov2]['city'][current_city2]['districtAndCounty'][current_country2];
    $("#addr-show2").val(ss2);
}

