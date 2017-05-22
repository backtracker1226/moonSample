<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<style>
.btn_box{
    display: block;
    width: 74px;
    height: 40px;
    background-color: #704de4;
    border: 0;
    color: #fff;
    text-align: center;
    font-size: 12px;
    -webkit-border-radius: 0;
    border-radius: 0;
}

</style>

<section id="contnts" class="contents" role="main">
	        <div class="heading">
	            <h3>공간 정보를 입력해주세요.</h3>
				<span class="option">
					<span class="txt_required">
						<span class="ico_required">*</span>
						필수입력
					</span>
				</span>
	        </div>
	        <!-- START : 공간 기본 정보 -->
	        <div class="box_form" id="_spcNm_required">
	            <div class="tit">
	                <label for="space_name">
	                    공간명
	                    <span class="ico_required">*</span>
	                </label>
	            </div>
					<span class="option">
						<span class="txt_count">
							<em id="spcNmCnt">0</em>자/<em>18</em>자
						</span>
					</span>
	            <div class="input"><!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
	                <input type="text" name="spcNm" id="space_name" placeholder="공간명을 입력해주세요." _errorel="_spcNm_required" maxlength="18" value="" _lcount="spcNmCnt" required="">
	            </div>
	            <p class="p_guide warn"><i class="sp_icon ico_alert"></i>공간명은 필수 입력입니다.</p>
	        </div>
	        <div class="box_form">
	            <div class="tit" id="_subTtl_required">
	                <label for="space_intro">
	                    공간 한줄 소개
	                    <span class="ico_required">*</span>
	                </label>
	            </div>
	                    <span class="option">
	                        <span class="txt_count">
	                            <em id="subTtlCnt">0</em>자/<em>27</em>자
	                        </span>
	                    </span>
	            <div class="input"><!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
	                <input type="text" name="subTtl" id="space_intro" placeholder="공간을 소개하는 한줄 문장을 입력해주세요." _errorel="_subTtl_required" maxlength="27" value="" _lcount="subTtlCnt" required="">
	            </div>
	            <p class="p_guide warn"><i class="sp_icon ico_alert"></i>공간을 소개하는 한 줄은 필수입니다.</p>
	        </div>
	        <div class="box_form">
	            <div class="tit" id="_spcDesc_required">
	                <label for="space_text">
	                    공간 소개
	                    <span class="ico_required">*</span>
	                </label>
	            </div>
	            <span class="option">
	                <span class="txt_count"><em id="spcDescCnt">0</em>자/<em>500</em>자<span class="txt_guide">(최소 20자)</span></span>
	            </span>
	            <div class="input"><!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
	                <textarea id="space_text" name="spcDesc" placeholder="공간을 상세하게 소개해보세요. 공간의 특징이나 주변환경 등의 세부정보를 작성하시면 효과적입니다." _errorel="_spcDesc_required" minlength="20" maxlength="500" style="height:108px" _lcount="spcDescCnt" required=""></textarea>
	            </div>
	            <p class="p_guide warn"><i class="sp_icon ico_alert"></i>공간 소개는 필수 입력으로 최소20자 최대 500자 까지 가능합니다.</p>
	        </div>
	        <div class="box_form">
	            <div class="tit">공간태그 <span class="ico_required">*</span></div>
	            <p class="option">최대 5개</p>
	            <div class="input_add _spaceTag"><!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
	                <input type="text" name="spaceTagInput" maxlength="10" id="_spaceTagInput" _enter="spaceTagEnter" placeholder="태그를 입력해 주세요.">
	                <div class="btn_box">
	                  <a href="javascript:void(0);" class="btn" id="spaceTagEnter"><span class="btn_inner">추가</span></a>
	                </div>
	            </div>
	            <div class="tag_wrap" id="_tag_required">
	                <input type="hidden" id="_tagRequiredTarget" _errorel="_tag_required" value="Y" required="">
	                
	                    <span class="tag_detail">#스튜디오
	                        <input type="hidden" value="스튜디오" name="spcTag">
	                        <a href="javascript:void(0);" class="btn_delete"><i class="sp_icon ico_delete">삭제</i></a>
	                    </span>
	                
	            </div>
	            <p class="p_guide warn">
	                <i class="sp_icon ico_alert"></i>
	                공간태그는 필수 입력입니다.
	            </p>
	        </div>
	        <div class="box_form">
	            <div class="tit">
	                <label for="space_name">
	                    시설안내
	                    <span class="ico_required">*</span>
	                </label>
	            </div>
				<span class="option">
					<span class="txt_count">
						<em id="spcFctsGuideCnt">0</em>자/<em>100</em>자
					</span>
				</span>
	            <div class="input_add" id="_spcFctsGuide"><!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
	                <input type="text" id="_spcFctsGuideInput" placeholder="최대 10개까지 작성가능합니다." _enter="fctsEnter" _lcount="spcFctsGuideCnt" maxlength="100">
	                <div class="btn_box">
	                    <a href="javascript:void(0);" class="btn _addGuide" _type="spcFctsGuide" id="fctsEnter">
	                        <span class="btn_inner">추가</span>
	                    </a>
	                </div>
	            </div>
	            <div class="input_add_text" id="_spcFctsGuideList" style="display:none;">
	                <input type="hidden" id="_fctsRequiredTarget" _errorel="_spcFctsGuide" value="" required="">
	                
	            </div>
	            <p class="p_guide warn"><i class="sp_icon ico_alert"></i>시설안내는 필수 입력입니다.</p>
	        </div>
	        <div class="box_form">
	            <div class="tit">
	                <label for="space_name">
	                    예약시 주의사항
	                    <span class="ico_required">*</span>
	                </label>
	            </div>
				<span class="option">
					<span class="txt_count">
						<em id="spcAttnMttrCnt">0</em>자/<em>100</em>자
					</span>
				</span>
	            <div class="input_add" id="_spcAttnMttr"><!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
	                <input type="text" id="_spcAttnMttrInput" placeholder="최대 10개까지 작성가능합니다." _enter="attnEnter" _lcount="spcAttnMttrCnt" maxlength="100">
	                <div class="btn_box">
	                    <a href="javascript:void(0);" class="btn _addGuide" id="attnEnter" _type="spcAttnMttr">
	                        <span class="btn_inner">추가</span>
	                    </a>
	                </div>
	            </div>
	            <div class="input_add_text" id="_spcAttnMttrList" style="display:none;">
	                <input type="hidden" id="_attnMttrRequiredTarget" _errorel="_spcAttnMttr" value="" required="">
	                
	            </div>
	            <p class="p_guide warn"><i class="sp_icon ico_alert"></i>예약시 주의사항은 필수 입력입니다.</p>
	        </div>
			<!-- START : 휴무/휴시 -->
			<div class="flex_wrap column2">
				<div class="box_form officehour">
					<span class="tit">
						<label for="slsStrtHour">
							이용시간
							<span class="ico_required">*</span>
						</label>
					</span>
					<div class="row">
						<div class="select">
							<select class="_slsHour" name="slsStrtHour" id="slsStrtHour" title="이용시작 시작 시 선택">
								
									<option value="0">0 시</option>
								
									<option value="1">1 시</option>
								
									<option value="2">2 시</option>
								
									<option value="3">3 시</option>
								
									<option value="4">4 시</option>
								
									<option value="5">5 시</option>
								
									<option value="6">6 시</option>
								
									<option value="7">7 시</option>
								
									<option value="8">8 시</option>
								
									<option value="9" selected="">9 시</option>
								
									<option value="10">10 시</option>
								
									<option value="11">11 시</option>
								
									<option value="12">12 시</option>
								
									<option value="13">13 시</option>
								
									<option value="14">14 시</option>
								
									<option value="15">15 시</option>
								
									<option value="16">16 시</option>
								
									<option value="17">17 시</option>
								
									<option value="18">18 시</option>
								
									<option value="19">19 시</option>
								
									<option value="20">20 시</option>
								
									<option value="21">21 시</option>
								
									<option value="22">22 시</option>
								
									<option value="23">23 시</option>
								
							</select>
						</div>
						<span class="txt_hour">부터</span>

						<div class="select">
							<select class="_slsHour" name="slsEndHour" id="slsEndHour" title="이용종료 시간 시 선택">
								
									<option value="1">1 시</option>
								
									<option value="2">2 시</option>
								
									<option value="3">3 시</option>
								
									<option value="4">4 시</option>
								
									<option value="5">5 시</option>
								
									<option value="6">6 시</option>
								
									<option value="7">7 시</option>
								
									<option value="8">8 시</option>
								
									<option value="9">9 시</option>
								
									<option value="10">10 시</option>
								
									<option value="11">11 시</option>
								
									<option value="12">12 시</option>
								
									<option value="13">13 시</option>
								
									<option value="14">14 시</option>
								
									<option value="15">15 시</option>
								
									<option value="16">16 시</option>
								
									<option value="17">17 시</option>
								
									<option value="18">18 시</option>
								
									<option value="19">19 시</option>
								
									<option value="20">20 시</option>
								
									<option value="21" selected="">21 시</option>
								
									<option value="22">22 시</option>
								
									<option value="23">23 시</option>
								
									<option value="24">24 시</option>
								
							</select>
						</div>
						<span class="txt_hour">까지</span>
					</div>
					<p class="p_guide warn"><i class="sp_icon ico_alert"></i>이용시간은 필수 입력입니다.</p>
					<p class="p_guide normal"><i class="sp_icon ico_alert"></i>실제로 공간공유가 가능한 시간을 입력해주세요.</p>
				</div>
				<div class="box_form">
	                <span class="tit"><label for="holiday">정기휴무</label> <span class="ico_required">*</span>
						<span class="tit_check">
		                    <input type="checkbox" name="hdayBrkYn" id="_holidayBrkDay" class="checkbox" value="Y">
		                    <label for="_holidayBrkDay"><i class="sp_icon"></i>공휴일 휴무</label>
	                	</span>
					</span>
	                <div class="dayoff">
	                    <div class="select">
	                        <select name="brkDayTpCd" id="holiday">
								<option value="NONE">휴무없음</option>
								
									
								
									
								
									
										<option value="WEKLY">매주</option>
									
								
									
										<option value="ODDW">격주(홀수주)</option>
									
								
									
										<option value="EVENW">격주(짝수주)</option>
									
								
									
										<option value="WEEK1">매월 첫째주</option>
									
								
									
										<option value="WEEK2">매월 둘째주</option>
									
								
									
										<option value="WEEK3">매월 셋째주</option>
									
								
									
										<option value="WEEK4">매월 넷째주</option>
									
								
									
										<option value="LSTWK">매월 마지막주</option>
									
								
									
										<option value="LSTDY">매월 말일</option>
									
								
									
										<option value="MNTLY">매월(직접지정)</option>
									
								
	                        </select>
	                    </div>
	                    <ul class="check_list week" id="weekError" style="display: none;">
	                        
	                            <li>
	                                <input type="checkbox" _errorel="weekError" name="daywCd" id="date_MON" value="MON" disabled="">
	                                <label for="date_MON">월</label>
	                            </li>
	                        
	                            <li>
	                                <input type="checkbox" _errorel="weekError" name="daywCd" id="date_TUE" value="TUE" disabled="">
	                                <label for="date_TUE">화</label>
	                            </li>
	                        
	                            <li>
	                                <input type="checkbox" _errorel="weekError" name="daywCd" id="date_WED" value="WED" disabled="">
	                                <label for="date_WED">수</label>
	                            </li>
	                        
	                            <li>
	                                <input type="checkbox" _errorel="weekError" name="daywCd" id="date_THU" value="THU" disabled="">
	                                <label for="date_THU">목</label>
	                            </li>
	                        
	                            <li>
	                                <input type="checkbox" _errorel="weekError" name="daywCd" id="date_FRI" value="FRI" disabled="">
	                                <label for="date_FRI">금</label>
	                            </li>
	                        
	                            <li>
	                                <input type="checkbox" _errorel="weekError" name="daywCd" id="date_SAT" value="SAT" disabled="">
	                                <label for="date_SAT">토</label>
	                            </li>
	                        
	                            <li>
	                                <input type="checkbox" _errorel="weekError" name="daywCd" id="date_SUN" value="SUN" disabled="">
	                                <label for="date_SUN">일</label>
	                            </li>
	                        
	                        
	                    </ul>
						<!-- 직접지정시 노출  -->
						<div class="select specific">
							<select name="directDay" id="directDay" required="" disabled="">
								
									<option value="1">1일</option>
								
									<option value="2">2일</option>
								
									<option value="3">3일</option>
								
									<option value="4">4일</option>
								
									<option value="5">5일</option>
								
									<option value="6">6일</option>
								
									<option value="7">7일</option>
								
									<option value="8">8일</option>
								
									<option value="9">9일</option>
								
									<option value="10">10일</option>
								
									<option value="11">11일</option>
								
									<option value="12">12일</option>
								
									<option value="13">13일</option>
								
									<option value="14">14일</option>
								
									<option value="15">15일</option>
								
									<option value="16">16일</option>
								
									<option value="17">17일</option>
								
									<option value="18">18일</option>
								
									<option value="19">19일</option>
								
									<option value="20">20일</option>
								
									<option value="21">21일</option>
								
									<option value="22">22일</option>
								
									<option value="23">23일</option>
								
									<option value="24">24일</option>
								
									<option value="25">25일</option>
								
									<option value="26">26일</option>
								
									<option value="27">27일</option>
								
									<option value="28">28일</option>
								
									<option value="29">29일</option>
								
									<option value="30">30일</option>
								
									<option value="31">31일</option>
								
							</select>
						</div>
						<p class="p_guide warn"><i class="sp_icon ico_alert"></i>정기휴무는 필수 입력입니다.</p>
	                    <!-- //직접지정시 노출  -->
	                </div>
	            </div>
	        </div>
	        <!-- END : 휴무/휴시 -->
	
	        <div class="box_form">
	            <div class="tit">
	                <label for="space_url">
	                    웹사이트
	                </label>
	            </div>
	            <div class="input">
	                <input type="text" name="hmpgUrl" id="space_url" placeholder="웹사이트 URL을 입력해주세요.(예시:http://spacecloud.kr)" regexp="(?:(?:http|https):\/\/)?([-a-zA-Z0-9.]{2,256}\.[a-z]{2,4})\b(?:\/[-a-zA-Z0-9@:%_\+.~#?&amp;//=]*)?" value="" _lcount="hmpgUrlCnt">
	            </div>
	        </div>
	        <div class="box_form">
	                    <span class="tit">
	                        대표이미지
	                        <span class="ico_required">*</span>
	                    </span>
	            <p class="option">2048 *1158 권장, 최대 10MB</p>
	            

<div class="file" id="repImageYnError"><!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
	<div class="inner inner_img" id="srimgDest">
		<div id="_noneImg">이미지 파일을 추가해 주세요. (JPG, JPEG, PNG)</div>
		
		<input type="hidden" name="repImageYn" id="repImageYn" required="">
		
	</div>
	<div class="btn_box">
		<label class="btn" for="srimg">
			<div>파일첨부</div>
			<input type="file" class="_fileRel" name="uploadFile" id="srimg" style="display:none;" _single="true" accept="image/*">
		</label>
		
	</div>
</div>
<p class="p_guide warn"><i class="sp_icon ico_alert"></i>대표이미지는 필수 입력입니다.</p>
	        </div>
	        <div class="box_form">
	            <span class="tit">이미지</span>
	            <p class="option">
	                2048 *1158 권장, 한 장당 최대 10MB 
	                <span class="txt_guide">(최대 10장)</span>
	            </p>
	            

<div class="file" id="repImageYnError"><!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
	<div class="inner inner_img" id="snimgDest">
		<div id="_noneImg">이미지 파일을 추가해 주세요. (JPG, JPEG, PNG)</div>
		
	</div>
	<div class="btn_box">
		<label class="btn" for="snimg">
			<div>파일첨부</div>
			<input type="file" class="_fileRel" name="uploadFile" id="snimg" style="display:none;" accept="image/*">
		</label>
		
		<div class="nav_btn">
			<!-- [D] 클릭시 class="active" 추가 -->
			<a href="javascript:void(0);" class="btn_move" _type="prev" _targetel="snimgDest"><i class="sp_icon ico_select_prev"></i><em class="blind">앞으로 순서 이동</em></a>
			<a href="javascript:void(0);" class="btn_move" _type="del" _targetel="snimgDest"><i class="sp_icon ico_select_del"></i><em class="blind">삭제</em></a>
			<a href="javascript:void(0);" class="btn_move" _type="next" _targetel="snimgDest"><i class="sp_icon ico_select_next"></i><em class="blind">뒤로 순서 이동</em></a>
		</div>
		
	</div>
</div>
<p class="p_guide warn"><i class="sp_icon ico_alert"></i>대표이미지는 필수 입력입니다.</p>
	        </div>
	
	        <div class="box_form email">
				<span class="tit" id="space_email">
					<label for="space_email">
						이메일
						<span class="ico_required">*</span>
					</label>
				</span>
	            <div class="row" id="emailError">
	                <div class="col">
						<input type="text" name="email" id="_email_addr" title="이메일 주소" regexp="^[a-zA-Z0-9-_\,\.]+$" _errorel="emailError" value="backtracker" required="">
	                </div>
	                <div class="col">
	                    <span class="txt_at">@</span>
	                    <input type="text" name="email" id="_email_domain" title="이메일 도메인" value="naver.com" regexp="[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$" style="width:100%" placeholder="직접입력" _errorel="space_email" required="" readonly="">
	                </div>
	                <div class="col">
	                    <div class="select">
	                        <select title="이메일 도메인 선택" id="_email_selector">
	                            
	                                <option value="naver.com" selected="">naver.com</option>
	                            
	                                <option value="chol.com">chol.com</option>
	                            
	                                <option value="dreamwiz.com">dreamwiz.com</option>
	                            
	                                <option value="empal.com">empal.com</option>
	                            
	                                <option value="gmail.com">gmail.com</option>
	                            
	                                <option value="hanafos.com">hanafos.com</option>
	                            
	                                <option value="hanmail.net">hanmail.net</option>
	                            
	                                <option value="hanmir.com">hanmir.com</option>
	                            
	                                <option value="hitel.net">hitel.net</option>
	                            
	                                <option value="hotmail.com">hotmail.com</option>
	                            
	                                <option value="korea.com">korea.com</option>
	                            
	                                <option value="lycos.co.kr">lycos.co.kr</option>
	                            
	                                <option value="nate.com">nate.com</option>
	                            
	                            <option value="NONE">직접입력</option>
	                        </select>
	                    </div>
	                </div>
	            </div>
	            <p class="p_guide warn"><i class="sp_icon ico_alert"></i>이메일은 필수 입력입니다.</p>
	        </div>
	        <!-- START : 연락처 -->
	        <div class="flex_wrap column2">
	            <div class="box_form mobile" id="cellPhone">
                    <span class="tit">
                        <label for="phone11">
                            휴대폰
                            <span class="ico_required">*</span>
                        </label>
                    </span>
	                <div class="row phone" id="mobileError"><!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
	                    <div class="col4">
	                        <div class="select">
	                            <select name="mobile1" id="phone11" title="휴대폰 앞자리" class="virtualNum">
	                                
	                                    <option value="010" selected="">010</option>
	                                
	                                    <option value="011">011</option>
	                                
	                                    <option value="016">016</option>
	                                
	                                    <option value="017">017</option>
	                                
	                                    <option value="018">018</option>
	                                
	                                    <option value="019">019</option>
	                                
	                            </select>
	                        </div>
	                    </div>
	                    <div class="col4">
	                        <input type="tel" name="mobile1" id="phone12" title="휴대폰 중간자리" maxlength="4" _errorel="mobileError" class="onlyNum virtualNum" style="ime-mode: disabled;" value="5825" required="">
	                    </div>
	                    <div class="col4">
	                        <input type="tel" name="mobile1" id="phone13" title="휴대폰 뒷자리" maxlength="4" _errorel="mobileError" class="onlyNum virtualNum" style="ime-mode: disabled;" value="1213" required="">
	                    </div>
	                </div>
					<div class="row phone" id="_addMobileDiv" style="display:none;"><!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
						<div class="col4">
							<div class="select">
								<select name="mobile2" id="phone21" title="휴대폰 앞자리" disabled="">
									
										<option value="010">010</option>
									
										<option value="011">011</option>
									
										<option value="016">016</option>
									
										<option value="017">017</option>
									
										<option value="018">018</option>
									
										<option value="019">019</option>
									
								</select>
							</div>
						</div>
						<div class="col4">
							<input type="tel" name="mobile2" id="phone22" title="휴대폰 중간자리" maxlength="4" class="onlyNum" _errorel="mobileError" style="ime-mode: disabled;" value="" disabled="" required="">
						</div>
						<div class="col4">
							<input type="tel" name="mobile2" id="phone23" title="휴대폰 뒷자리" maxlength="4" class="onlyNum" _errorel="mobileError" style="ime-mode: disabled;" value="" disabled="" required="">
						</div>
					</div>
	                <p class="p_guide warn"><i class="sp_icon ico_alert"></i>휴대폰은 필수 입력입니다.</p>
	                <p class="p_guide normal">
	                    <i class="sp_icon ico_alert"></i>
	                    해당 휴대폰 문자로 예약 관련 현황 관련 메시지를 받아 보실 수 있습니다.
	                    추가 휴대폰에도 동일한 메시지를 발송합니다. (최대 2대)
	                </p>
	                <span class="option option_btn">
	                    <a href="javascript:void(0);" class="btn_add mobile_add">
	                        <i class="sp_icon ico_add"></i>
	                        추가
	                    </a>
	                </span>
	            </div>
	            <div class="box_form mobile">
					<span class="tit">
						<label for="phone21">
							대표전화 <span class="ico_required">*</span>
						</label>
						<span class="tit_check">
	                        <input type="checkbox" name="set" id="_sameCphNo" class="checkbox">
	                        <label for="_sameCphNo"><i class="sp_icon"></i>휴대폰과 동일</label>
	                    </span>
					</span>
	                <div class="row phone">
	                    <div class="col4">
	                        <input type="tel" name="telephone" id="phone31" value="" maxlength="4" class="onlyNum virtualNum" style="ime-mode: disabled;" title="유선전화 앞자리" required="">
	                    </div>
	                    <div class="col4">
	                        <input type="tel" name="telephone" id="phone32" value="" maxlength="4" class="onlyNum virtualNum" style="ime-mode: disabled;" title="유선전화 중간자리" required="">
	                    </div>
	                    <div class="col4">
	                        <input type="tel" name="telephone" id="phone33" value="" maxlength="4" class="onlyNum virtualNum" style="ime-mode: disabled;" title="유선전화 뒷자리" required="">
	                    </div>
	                </div>
					<div class="virtual_area " id="_virtualAreaEl">
						<span class="btn_virtual btn_default" style="cursor:pointer;" id="_virtualNumberBtn" data-already="false">가상번호설정</span>
						<span class="result_number"></span>
					</div>
					<input type="hidden" name="virtual" id="virtualNo" _errorel="_virtualAreaEl" value="" required="">
					<p class="p_guide normal">
						<i class="sp_icon ico_alert"></i>
						문의를 받을 전화번호를 입력한 다음 가상번호를 설정하세요. 설정된 가상번호가 예약 화면에 노출됩니다.
					</p>
					<p class="p_guide warn">
						<i class="sp_icon ico_alert"></i>
						가상번호 설정은 필수입니다.
					</p>
	            </div>
	        </div>
	        <!-- END : 연락처 -->
	
	        <!-- START : 주소 등록 -->
	        <div class="box_form" id="_location">
				<span class="tit">
					<label for="sp_adrs">
						주소(위치)
						<span class="ico_required">*</span>
					</label>
				</span>
	            <div class="file"><!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
	                <input type="hidden" name="cortarNo" id="_cortarNo" value="" _errorel="addrError" required="">
	                <input type="hidden" name="lat" id="_lat" value="0.0" _errorel="addrError" required="">
	                <input type="hidden" name="lng" id="_lng" value="0.0" _errorel="addrError" required="">
	                <input type="text" class="_openSearchAddressPopUp" name="spaceAddr" id="_spaceAddress" value="" placeholder="주소를 등록해주세요." readonly="">
	                <div class="btn_box">
	                    <a href="javascript:void(0);" class="btn _openSearchAddressPopUp" title="주소 등록">주소등록</a>
	                </div>
	            </div>
	            <div class="input" id="addrError"><!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
	                <input type="text" name="spcDtlAddr" id="sp_adrs" value="" _errorel="addrError" placeholder="상세 주소를 입력해주세요." required="">
	            </div>
	            <p class="p_guide warn"><i class="sp_icon ico_alert"></i>주소(위치)는 필수 입력입니다.</p>
	        </div>
	        <!-- END : 주소 등록 -->

			<div class="box_form">
				<div class="tit">
					<label for="space_story">공간 스토리</label>
				</div>
				<span class="option">최대 5개</span>
				<div class="input_add"><!-- [D] 클래스 error 추가시 유효성 오류 (!안내텍스트/input,textarea 등에 border색) 표시됩니다. -->
					
						
						<input type="text" id="space_story" placeholder="공간의 생생한 블로그/포스트 후기 링크를 등록해보세요." class="pc_view">
					
					<div class="btn_box _addStory">
						<a href="javascript:void(0);" class="btn" id="_storyBtn">
							<span class="btn_inner">추가</span>
						</a>
						<!-- [D] 링크 추가 중일 경우 버튼 노출  -->
						<a href="javascript:void(0);" class="btn type_link" id="_storyOnBtn" style="display:none;">
							<em class="m_hidden">링크</em> 추가 중
						</a>
					</div>
				</div>
				<div id="applied_story" class="input_add_text" style="display:none;">
					
				</div>
				<p class="p_guide normal">
					<i class="sp_icon ico_alert"></i>
					네이버 블로그/포스트에서 작성된 링크만 노출하실 수 있습니다.
				</p>
			</div>
	    </section>

</body>
</html>