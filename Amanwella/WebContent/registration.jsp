<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta property="og:title" content="Online Staff Registration Form" >
<meta property="og:url" content="https://form.jotform.com/200525715673454" >
<meta property="og:description" content="Please click the link to complete this form.">
<meta name="slack-app-id" content="AHNMASS8M">


<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=2.0, user-scalable=1" />
<meta name="HandheldFriendly" content="true" />
<title> Staff Registration Form</title>


<link href="https://cdn.jotfor.ms/static/formCss.css?3.3.15591" rel="stylesheet" type="text/css" />
<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/css/styles/nova.css?3.3.15591" />
<link type="text/css" media="print" rel="stylesheet" href="https://cdn.jotfor.ms/css/printForm.css?3.3.15591" />
<link rel="stylesheet" href="css/reg.css">

<script src="https://cdnjs.cloudflare.com/ajax/libs/punycode/1.4.1/punycode.min.js"></script>
<script src="https://cdn.jotfor.ms/js/vendor/imageinfo.js?v=3.3.15591" type="text/javascript"></script>
<script src="https://cdn.jotfor.ms/static/prototype.forms.js" type="text/javascript"></script>
<script src="https://cdn.jotfor.ms/static/jotform.forms.js?3.3.15591" type="text/javascript"></script>
<script type="text/javascript">
	JotForm.init(function(){
      setTimeout(function() {
          $('input_7').hint('ex: myname@example.com');
       }, 20);
if (window.JotForm && JotForm.accessible) $('input_18').setAttribute('tabindex',0);
if (window.JotForm && JotForm.accessible) $('input_21').setAttribute('tabindex',0);
if (window.JotForm && JotForm.accessible) $('input_12').setAttribute('tabindex',0);
    /*INIT-END*/
	});

   JotForm.prepareCalculationsOnTheFly([null,{"name":"submitForm","qid":"1","text":"Submit","type":"control_button"},null,{"name":"name","qid":"3","text":"Name:","type":"control_fullname"},null,null,null,{"name":"emailAddress7","qid":"7","text":"Email Address:","type":"control_email"},null,null,null,{"name":"typeOf","qid":"11","text":"Type Of Work","type":"control_dropdown"},{"name":"coverLetter","qid":"12","text":"Cover Letter or Additional Information:","type":"control_textarea"},{"name":"uploadResume","qid":"13","text":"Upload Resume:","type":"control_fileupload"},null,null,null,null,{"name":"contactNumber","qid":"18","text":"Contact Number:","type":"control_textbox"},{"name":"address19","qid":"19","text":"Address","type":"control_address"},{"name":"clickTo","qid":"20","text":"Online Staff Registration","type":"control_head"},{"name":"applyingFor","qid":"21","text":"Applying For Position:","type":"control_textbox"}]);
   setTimeout(function() {
JotForm.paymentExtrasOnTheFly([null,{"name":"submitForm","qid":"1","text":"Submit","type":"control_button"},null,{"name":"name","qid":"3","text":"Name:","type":"control_fullname"},null,null,null,{"name":"emailAddress7","qid":"7","text":"Email Address:","type":"control_email"},null,null,null,{"name":"typeOf","qid":"11","text":"Type Of Work","type":"control_dropdown"},{"name":"coverLetter","qid":"12","text":"Cover Letter or Additional Information:","type":"control_textarea"},{"name":"uploadResume","qid":"13","text":"Upload Resume:","type":"control_fileupload"},null,null,null,null,{"name":"contactNumber","qid":"18","text":"Contact Number:","type":"control_textbox"},{"name":"address19","qid":"19","text":"Address","type":"control_address"},{"name":"clickTo","qid":"20","text":"Online Staff Registration","type":"control_head"},{"name":"applyingFor","qid":"21","text":"Applying For Position:","type":"control_textbox"}]);}, 20); 
</script>



</head>
<body>
<form class="jotform-form" action="Staff_sevlet" method="post" enctype="multipart/form-data" name="form_200525715673454" id="200525715673454" accept-charset="utf-8" autocomplete="on">
  <input type="hidden" name="formID" value="200525715673454" />
  <input type="hidden" id="JWTContainer" value="" />
  <input type="hidden" id="cardinalOrderNumber" value="" />
  <div role="main" class="form-all">
    <ul class="form-section page-section">
      <li id="cid_20" class="form-input-wide" data-type="control_head">
        <div class="form-header-group  header-default">
          <div class="header-text httal htvam">
            <h2 id="header_20" class="form-header" data-component="header">
               Staff Registration
            </h2>
          </div>
        </div>
      </li>
      
      
       <li class="form-line" data-type="control_textbox" id="id_3">
        <label class="form-label form-label-left form-label-auto" id="label_3" for="input_3"> First Name </label>
        <div id="cid_3" class="form-input">
          <input type="text" id="input_3" name="fname" data-type="input-textbox" class="form-textbox" size="20" value="" placeholder=" " data-component="textbox" aria-labelledby="label_3" />
        </div>
      </li>
      
       <li class="form-line" data-type="control_textbox" id="id_3">
        <label class="form-label form-label-left form-label-auto" id="label_3" for="input_3"> Last Name </label>
        <div id="cid_3" class="form-input">
          <input type="text" id="input_3" name="lname" data-type="input-textbox" class="form-textbox" size="20" value="" placeholder=" " data-component="textbox" aria-labelledby="label_3" />
        </div>
      </li>
    
      </li>
      <li class="form-line" data-type="control_email" id="id_7">
        <label class="form-label form-label-left" id="label_7" for="input_7"> Email Address: </label>
        <div id="cid_7" class="form-input">
          <input type="email" id="input_7" name="email" class="form-textbox validate[Email]" size="32" value="" placeholder="ex: myname@example.com" data-component="email" aria-labelledby="label_7" />
        </div>
      </li>
      <li class="form-line" data-type="control_textbox" id="id_18">
        <label class="form-label form-label-left form-label-auto" id="label_18" for="input_18"> Contact Number: </label>
        <div id="cid_18" class="form-input">
          <input type="text" id="input_18" name="mobile" data-type="input-textbox" class="form-textbox" size="20" value="" placeholder=" " data-component="textbox" aria-labelledby="label_18" />
        </div>
      </li>
      <li class="form-line" data-type="control_address" id="id_19">
        <label class="form-label form-label-left form-label-auto" id="label_19" for="input_19undefined"> Address </label>
        <div id="cid_19" class="form-input">
          <table summary="" class="form-address-table">
            <tbody>
              <tr>
                <td colSpan="2">
                  <span class="form-sub-label-container " style="vertical-align:top">
                    <input type="text" id="input_19_addr_line1" name="address" class="form-textbox form-address-line" value="" data-component="address_line_1" aria-labelledby="label_19 sublabel_19_addr_line1" />
                    <label class="form-sub-label" for="input_19_addr_line1" id="sublabel_19_addr_line1" style="min-height:13px" aria-hidden="false"> Address Line 1 </label>
                  </span>
                </td>
              </tr>
              <tr>
                <td colSpan="2">
                  <span class="form-sub-label-container " style="vertical-align:top">
                    <input type="text" id="input_19_addr_line2" name="q19_address19[addr_line2]" class="form-textbox form-address-line" size="46" value="" data-component="address_line_2" aria-labelledby="label_19 sublabel_19_addr_line2" />
                    <label class="form-sub-label" for="input_19_addr_line2" id="sublabel_19_addr_line2" style="min-height:13px" aria-hidden="false">  Address Line 2 </label>
                  </span>
                </td>
              </tr>
              
              <tr>
                <td colSpan="2">
                  <span class="form-sub-label-container " style="vertical-align:top">
                    <input type="text" id="input_19_addr_line2" name="q19_address19[addr_line2]" class="form-textbox form-address-line" size="46" value="" data-component="address_line_2" aria-labelledby="label_19 sublabel_19_addr_line2" />
                    <label class="form-sub-label" for="input_19_addr_line2" id="sublabel_19_addr_line2" style="min-height:13px" aria-hidden="false">  City </label>
                  </span>
                </td>
              </tr>
           
            </tbody>
          </table>
        </div>
        
        <li class="form-line" data-type="control_textbox" id="id_18">
        	<label class="form-label form-label-left form-label-auto" id="label_18" for="input_18">Date Of Birth </label>
        		<div id="cid_18" class="form-input">
           			<input type="date" id="input_18" name="dob" data-type="input-textbox" class="form-textbox" size="20" value="" placeholder= "Enter Date of Birth" data-component="textbox" aria-labelledby="label_18" />
        		</div>
        </li>
        
       <li class="form-line" data-type="control_dropdown" id="id_11">
        	<label class="form-label form-label-left" id="label_11" for="input_11"> Gender </label>
        		<div id="cid_11" class="form-input">
          			<select class="form-dropdown" id="input_11" name="gender" style="width:150px" data-component="dropdown" aria-labelledby="label_11">
           				<option value="">  </option>
            			<option value="Permanent"> Male </option>
            			<option value="Temporary"> Female </option>
          			</select>
        		</div>
      </li>
       
      <li class="form-line" data-type="control_textbox" id="id_21">
        <label class="form-label form-label-left form-label-auto" id="label_21" for="input_21"> Applying For Position: </label>
        <div id="cid_21" class="form-input">
          <input type="text" id="input_21" name="position" data-type="input-textbox" class="form-textbox" size="40" value="" placeholder=" " data-component="textbox" aria-labelledby="label_21" />
        </div>
      </li>
      <li class="form-line" data-type="control_dropdown" id="id_11">
        <label class="form-label form-label-left" id="label_11" for="input_11"> Type Of Work </label>
        <div id="cid_11" class="form-input">
          <select class="form-dropdown" id="input_11" name="tow" style="width:150px" data-component="dropdown" aria-labelledby="label_11">
            <option value="">  </option>
            <option value="Permanent"> Permanent </option>
            <option value="Temporary"> Temporary </option>
          </select>
        </div>
      </li>
	
      <li class="form-line" data-type="control_fileupload" id="id_13">
        <label class="form-label form-label-left" id="label_13" for="input_13"> Profile Image </label>
        <div id="cid_13" class="form-input">
          <input type="file" id="input_13" name="profile_picture" class="form-upload" data-imagevalidate="yes" data-file-accept="pdf, doc, docx, xls, csv, txt, rtf, html, zip, mp3, wma, mpg, flv, avi, jpg, jpeg, png, gif" data-file-maxsize="500" data-file-minsize="0" data-file-limit="0" data-component="fileupload" />
        </div>
      </li>
      
      
      <li class="form-line" data-type="control_button" id="id_1">
        <div id="cid_1" class="form-input-wide">
          <div style="margin-left:156px" data-align="auto" class="form-buttons-wrapper ">
            <input type="hidden" value="${staff.id}" name="id">
							<div class="add_suplier_btn">
								<button type="submit" class="btn btn-primary">ADD SUPPLIER</button>
							</div>
          </div>
        </div>
      </li>
      <li style="display:none">
        Should be Empty:
        <input type="text" name="website" value="" />
      </li>
    </ul>
  </div>
 

 
</form>
</body>
</html>
