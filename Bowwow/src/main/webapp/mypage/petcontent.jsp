<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!-- Modal - 정보등록 -->
<!-- modal dialog : 타입고르기-->
<div class="modal" id="petType" aria-hidden="true" aria-labelledby="..." tabindex="-1">
  <div class="modal-dialog modal-dialog-centered" >
    <div class="modal-content">
	<div class="modal-header">
			<h4 class="modal-title" id="myModalLabel">강아지? 고양이?</h4>
	</div>
    <form class="pet-form" name="petinform1" id="selectPetType">
         <div class="form-group">
         	<label class="radio-inline">
		  <input type="radio" name="animal_type" id="inlineRadio1" value="dog"> 강아지
		</label>
		<label class="radio-inline">
		  <input type="radio" name="animal_type" id="inlineRadio2" value="cat"> 고양이
		</label>
         </div>
      <div class="modal-footer">
	    <button class="btn btn-primary" data-toggle="modal" data-dismiss="modal" onclick="transferType()">선택</button>
      	<button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="clearInput()">Close</button>
      </div>
      </form>
    </div>
  </div>
</div>

<!-- Modal - 새 정보 등록 -->
<div class="modal fade" id="newPet" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" data-backdrop="static" data-keyboard="false">
  <div class="modal-dialog" role="document" style="max-width: 100%; width: auto; display: table;">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="myModalLabe2">반려동물 정보등록</h4>
      </div>
   		<form class="pet-form" id="insertPetform" enctype="multipart/form-data">
	      <div class="modal-body">
	       	<div class="form-group">
		        <table class="table table-bordered">
		        <tbody>
		        	<tr>
						<td class="insert-title">이름*</td>
						<td><input type="text" name="pet_name" id="in_name"></td>
						<td class="insert-title">나이*</td>
						<td><input type="number" name="pet_age" id="in_age" ></td>
			        </tr>
			        <tr>
				        <td class="insert-title">성별*</td>
						<td>
						<select name="pet_gender" id="in_gender">
							<option value="girl" selected>암</option>
							<option value="boy">수</option>
						</select>
						</td>
						<td class="insert-title">생일</td>
						<td class="insert-title"><input type="date" name="pet_birth" id="pet_birth" ></td>
			        </tr>
			        <tr>
				        <td class="insert-title">품종*</td>
						<td><input type="text" name="pet_variety" id="in_var" ></td>
						<td class="insert-title" >중성화여부*</td>
						<td>
						<select name="tnr" id="in_tnr" >
							<option value="yes" selected>예</option>
							<option value="no">아니요</option>
						</select>
						</td>
			        </tr> 
			        <tr>
				        <td class="insert-title">사이즈*</td>
						<td>
						<select name="pet_size" id="insert_pet_size">
							<option value="small" selected>소형</option>
							<option value="medium">중형</option>
							<option value="large">대형</option>
						</select>
						</td>
						<td class="insert-title">체중*</td>
						<td><input type="number" name="pet_weight" id="in_wgt"></td>
			        </tr>
			        <tr>
				        <td rowspan="3" colspan="2">
				        <input type="file" id="inputimage" name="file" accept="image/jpg, image/gif image/png, image/jpeg image/bmp" onchange="setThumbnail(event)">
			        	<div id="thumb_container"></div>
				       
				        </td>
						<td class="insert-title">목둘레</td>
						<td><input type="number" name="neck_length" value="0"></td>
			        </tr>
			        <tr>
						<td class="insert-title">등길이</td>
						<td><input type="number" name="back_length" value="0"></td>
			        </tr>
			        <tr>
						<td class="insert-title">가슴둘레</td>
						<td><input type="number" name="chest_length" value="0"></td>
			        </tr>
			        <tr>
						<td class="insert-title">특이사항</td>
						<td colspan="3"><textarea class="form-control" name="pet_etc" ></textarea></td>
			        </tr>
		         </tbody>
	            </table>
		          <input type="hidden" id="insert_animal_type" name="animal_type" value="">
		          <input type="hidden" id="insert_member_serial" name="member_serial" value="<c:out value='${user.memberSerial}'/>">
	          </div>
	      	</div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-primary" id="newPetInsert" >반려동물 정보저장</button> 
	        <!-- <button type="submit" class="btn btn-primary">반려동물 정보저장</button> -->
	        <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="clearInput()">Close</button>
	      </div>
		</form>
    </div>
  </div>
</div>

<!-- First modal dialog : 상세보기-->
<div class="modal" id="petDetail" aria-hidden="true" aria-labelledby="..." tabindex="-1">
  <div class="modal-dialog modal-dialog-centered" >
    <div class="modal-content">
	<div class="modal-header">
		<h4 class="modal-title" id="myModalLabel">반려동물 상세보기</h4>
	</div>
    <form class="pet-form" id="pet-detail-form" name="pet-detail-form">
		<div class="popup-inner img-pet" id="detail_petimg">
			<img src="" id="thumb_container">
		</div>
		<div class="popup-inner text-pet">
		<div class="form-group-detail">
			<h2 id="detail_petname"></h2>
			<div id="textMain-wrap">
				<div class="box-detail">
					<h5>성별</h5>
					<p id="detail_gender"></p>
				</div>
				<div class="box-detail">
					<h5>품종</h5>
					<p id="detail_variety"></p>
				</div>
				<div class="box-detail">	
					<h5>생일</h5>
					<p id="detail_birth"></p>
				</div>
				<div class="box-detail">
					<h5>나이</h5>
					<p id="detail_age"></p>
				</div>
				<div class="box-detail">
					<h5>체형</h5>
					<p id="detail_size"></p>
				</div>
				<div class="box-detail">
					<h5>무게</h5>
					<p id="detail_weight"></p>
				</div>
				<div class="box-detail">
					<h5>목둘레</h5>
					<p id="detail_neck"></p>
				</div>
				<div class="box-detail">
					<h5>등길이</h5>
					<p id="detail_back"></p>
				</div>
				<div class="box-detail">
					<h5>가슴둘레</h5>
					<p id="detail_chest"></p>
				</div>
			</div>
			<div class="textSub-wrap">
				<div class="box-detail">
					<h5>특이사항</h5>
					<p id="detail_etc"></p>
				</div>
			</div>
			<input type="hidden" id="detail_tnr" name="tnr" value="">
			<input type="hidden" id="detail_animal_type" name="animal_type" value="">
			<input type="hidden" id="detail_pet_serial" name="pet_serial" value="">
			<input type="hidden" id="detail_member_serial" name="member_serial" value="<c:out value='${user.memberSerial}'/>">
			<input type="hidden" id="detail_orifile_name" name="image_source_oriname" value="">
		</div>
		</div>
      <div class="modal-footer">
	    <button class="btn btn-primary" data-toggle="modal" data-dismiss="modal" data-target="#modiPetInfo">정보 수정</button>
	    <button class="btn btn-primary" id="deletePetInfo">정보 삭제</button>
      	<button type="button" class="btn btn-secondary" data-dismiss="modal" >Close</button>
      </div>
	</form>
    </div>
  </div>
</div>

<!-- modal dialog : 정보수정 -->
<div class="modal fade" id="modiPetInfo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document" style="max-width: 100%; width: auto; display: table;">
    <div class="modal-content">
      <div class="modal-header">
			<h4 class="modal-title" id="myModalLabel">반려동물 정보수정</h4>
	  </div>
      <form class="pet-form" id="updatePetInfo" enctype="multipart/form-data">
      <div class="modal-body">
       	<div class="form-group">
	        <table class="table table-bordered">
	        <tbody>
		        <tr>
					<td class="insert-title">이름</td>
					<td><input type="text" name="pet_name" id="modi_petname"></td>
					<td class="insert-title">나이</td>
					<td><input type="number" name="pet_age" id="modi_petage" ></td>
		        </tr>
		        <tr>
			        <td class="insert-title">성별</td>
					<td>
					<select name="pet_gender" id="modi_petgender">
						<option value="girl">암</option>
						<option value="boy">수</option>
					</select>
					</td>
					<td class="insert-title">생일</td>
					<td><input type="date" name="pet_birth" id="modi_petbirth"></td>
		        </tr>
		        <tr>
			        <td class="insert-title">품종</td>
					<td><input type="text" name="pet_variety" id="modi_variety"></td>
					<td class="insert-title" >중성화여부</td>
					<td>
					<select name="tnr" id="modi_tnr">
						<option value="yes">예</option>
						<option value="no">아니요</option>
					</select>
					</td>
		        </tr>
		        <tr>
			        <td class="insert-title">사이즈</td>
					<td>
					<select name="pet_size" id="modi_size">
						<option value="small">소형</option>
						<option value="medium">중형</option>
						<option value="large">대형</option>
					</select>
					</td>
					<td class="insert-title">체중</td>
					<td><input type="number" name="pet_weight" id="modi_weight"></td>
		        </tr>
		        <tr>
			        <td rowspan="3" colspan="2">
			        	<input type="file" id="inputimage" accept="image/jpg, image/gif image/png, image/jpeg image/bmp" name="file" >
		        		<div id="thumb_container">
		        		</div>
			        </td>
					<td class="insert-title">목둘레</td>
					<td><input type="number" name="neck_length" id="modi_neck"></td>
		        </tr>
		        <tr>
					<td class="insert-title">등길이</td>
					<td><input type="number" name="back_length" id="modi_back"></td>
		        </tr>
		        <tr>
					<td class="insert-title">가슴둘레</td>
					<td><input type="number" name="chest_length" id="modi_chest"></td>
		        </tr>
		        <tr>
					<td class="insert-title">특이사항</td>
					<td colspan="3"><textarea class="form-control" name="pet_etc" id="modi_etc"></textarea></td>
		        </tr>
	         </tbody>
            </table>
          </div>
      </div>
      <div class="modal-footer">
		<input type="hidden" id="modi_animal_type" name="animal_type" value="">
		<input type="hidden" id="modi_pet_serial" name="pet_serial" value="">
		<input type="hidden" id="modi_member_serial" name="member_serial" value="<c:out value='${user.memberSerial}'/>">
        <button type="button" class="btn btn-primary" id="updatePetInfobtn">반려동물 정보수정</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="clearInput()">Close</button>
      </div>
	 </form>
    </div>
  </div>
</div>
