<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/lib/css/leavewords.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/lib/easyui/themes/ui-pepper-grinder/easyui.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/lib/easyui/themes/icon.css" />
<script src="<%=request.getContextPath()%>/lib/js/jquery-3.2.1.min.js"
	type="text/javascript" charset="utf-8"></script>
<script
	src="<%=request.getContextPath()%>/lib/easyui/jquery.easyui.min.js"
	type="text/javascript" charset="utf-8"></script>
<script
	src="<%=request.getContextPath()%>/lib/easyui/locale/easyui-lang-zh_CN.js"
	type="text/javascript" charset="utf-8"></script>
<script src="<%=request.getContextPath()%>/lib/js/tools.js"
	type="text/javascript" charset="utf-8"></script>
<script src="<%=request.getContextPath()%>/lib/js/leavewords.js"
	type="text/javascript" charset="utf-8"></script>
</head>
<body>
	<div class="context">
		<div class="topbox">
			<em></em>

		</div>
		<div class="middlebox">
			<div id="section5">
				<div class="section_container" style="height: 1220px;">

					<div class="comment_container">
						<div class="NIE-cmt">
						
							<div class="cmt_mod cmt_comments">
								<div class="cmt_bd cmt_comments_bd" id="showLeave">
							
								</div>
								<div class="cmt_ft cmt_pages" id="pageNumber">
									
								</div>
							</div>
                            	<div class="cmt_reply">
								<form action="<%=request.getContextPath()%>/leaveWords_addLeaveWords" class="cmt_reply_form" onsubmit="return stop();">
									<div class="cmt_reply_area">
										<textarea type="text" id="leaveContent" class="cmt_reply_txt crt0" name="leaveWords.leaveContent">
	                                </textarea>
									</div>
									<div class="cmt_reply_btns">
										<div class="cmt_reply_count crc0">300</div>
										<label class="cmt_reply_anon"> 请留下你的邮箱:<input
											class="cra0" id="tb" name="leaveWords.email" type="text">
										</label>
										 <input class="cmt_reply_submit crs0" value="发布" type="submit">
									</div>
								</form>
							</div>
                            
						</div>
						<div class="comment_side_pic"></div>
					</div>
				</div>
			</div>

		</div>

	</div>
</body>
</html>