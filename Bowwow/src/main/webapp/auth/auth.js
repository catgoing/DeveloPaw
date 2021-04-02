console.log("helloworld");

var button = document.getElementById("expend_address");

function execMap(count){
    new daum.Postcode({
        oncomplete: function(data) {
            var fullAddr = '';
            var extraAddr = '';
            var zoneCode = '';
            
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                fullAddr = data.roadAddress;
                zoneCode = data.zonecode;
            } else {
                fullAddr = data.roadAddress;
                zoneCode = data.zonecode;
            }
            if(data.userSelectedType === 'R'){
                if(data.bname !== ''){
                    extraAddr += data.bname;
                }
                if(data.buildingName !== ''){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
            }
            
            
            
            document.getElementById("userAddress" + count).value = fullAddr;
            document.getElementById("userZonecode" + count).value = zoneCode;
        }
    }).open();
}
