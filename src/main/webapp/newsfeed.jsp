<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Winku Social Network Toolkit</title>
<link rel="icon" href="images/fav.png" type="image/png" sizes="16x16">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/main.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/color.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/responsive.css">

</head>

<body>
	<!-- Xử lý check trạng thái đăng nhập -->
	<c:if test="${empty sessionScope.loginStatus}">
		<c:redirect url="login&register.jsp" />
	</c:if>


	<div class="theme-layout">

		<div class="responsive-header">
			<div class="mh-head first Sticky">
				<span class="mh-btns-left"> <a class="" href="#menu"><i
						class="fa fa-align-justify"></i></a>
				</span> <span class="mh-text"> <a href="newsfeed.html" title=""><img
						src="images/logo2.png" alt=""></a>
				</span> <span class="mh-btns-right"> <a class="fa fa-sliders"
					href="#shoppingbag"></a>
				</span>
			</div>
			<div class="mh-head second">
				<form class="mh-form">
					<input placeholder="search" /> <a href="#/" class="fa fa-search"></a>
				</form>
			</div>

		</div>
		<!-- responsive header -->

		<div class="topbar stick">
			<div class="logo">
				<a title="" href="newsfeed.jsp"><img src="images/logo.png"
					alt=""></a>
			</div>

			<div class="top-area">

				<ul class="setting-area">
					<li><a href="#" title="Home" data-ripple=""><i
							class="ti-search"></i></a>
						<div class="searched">
							<form method="post" class="form-search" id="searchForm" action="/DoAn-SocialNetwork/search-friends">
							
								<input type="text" placeholder="Search Users" name="keyWord" required>
								
								<button type="button" onclick="submitSearchForm()">
									<i class="ti-search"></i>
								</button>
							<script type="text/javascript">
								function submitSearchForm() {
									var form = document.getElementById("searchForm");
									var input = document.querySelector('input[name="keyWord"]');
									
									if(input.value.length < 1){
										input.placeholder = "Please type something to find!"
										return;
									}
									
								    form.submit();
								}
							</script>
							</form>
						</div>
					</li>
					<li><a href="newsfeed.html" title="Home" data-ripple=""><i
							class="ti-home"></i></a></li>
					<li><a href="#" title="Notification" data-ripple=""> <i
							class="ti-bell"></i><span>20</span>
					</a>
						<div class="dropdowns">
							<span>4 New Notifications</span>
							<ul class="drops-menu">
								<li><a href="notifications.html" title=""> <img
										src="images/resources/thumb-1.jpg" alt="">
										<div class="mesg-meta">
											<h6>sarah Loren</h6>
											<span>Hi, how r u dear ...?</span> <i>2 min ago</i>
										</div>
								</a> <span class="tag green">New</span></li>
								<li><a href="notifications.html" title=""> <img
										src="images/resources/thumb-2.jpg" alt="">
										<div class="mesg-meta">
											<h6>Jhon doe</h6>
											<span>Hi, how r u dear ...?</span> <i>2 min ago</i>
										</div>
								</a> <span class="tag red">Reply</span></li>
								<li><a href="notifications.html" title=""> <img
										src="images/resources/thumb-3.jpg" alt="">
										<div class="mesg-meta">
											<h6>Andrew</h6>
											<span>Hi, how r u dear ...?</span> <i>2 min ago</i>
										</div>
								</a> <span class="tag blue">Unseen</span></li>
								<li><a href="notifications.html" title=""> <img
										src="images/resources/thumb-4.jpg" alt="">
										<div class="mesg-meta">
											<h6>Tom cruse</h6>
											<span>Hi, how r u dear ...?</span> <i>2 min ago</i>
										</div>
								</a> <span class="tag">New</span></li>
								<li><a href="notifications.html" title=""> <img
										src="images/resources/thumb-5.jpg" alt="">
										<div class="mesg-meta">
											<h6>Amy</h6>
											<span>Hi, how r u dear ...?</span> <i>2 min ago</i>
										</div>
								</a> <span class="tag">New</span></li>
							</ul>
							<a href="notifications.html" title="" class="more-mesg">view
								more</a>
						</div></li>
					<li><a href="#" title="Messages" data-ripple=""><i
							class="ti-comment"></i><span>12</span></a>
						<div class="dropdowns">
							<span>5 New Messages</span>
							<ul class="drops-menu">
								<li><a href="notifications.html" title=""> <img
										src="images/resources/thumb-1.jpg" alt="">
										<div class="mesg-meta">
											<h6>sarah Loren</h6>
											<span>Hi, how r u dear ...?</span> <i>2 min ago</i>
										</div>
								</a> <span class="tag green">New</span></li>
								<li><a href="notifications.html" title=""> <img
										src="images/resources/thumb-2.jpg" alt="">
										<div class="mesg-meta">
											<h6>Jhon doe</h6>
											<span>Hi, how r u dear ...?</span> <i>2 min ago</i>
										</div>
								</a> <span class="tag red">Reply</span></li>
								<li><a href="notifications.html" title=""> <img
										src="images/resources/thumb-3.jpg" alt="">
										<div class="mesg-meta">
											<h6>Andrew</h6>
											<span>Hi, how r u dear ...?</span> <i>2 min ago</i>
										</div>
								</a> <span class="tag blue">Unseen</span></li>
								<li><a href="notifications.html" title=""> <img
										src="images/resources/thumb-4.jpg" alt="">
										<div class="mesg-meta">
											<h6>Tom cruse</h6>
											<span>Hi, how r u dear ...?</span> <i>2 min ago</i>
										</div>
								</a> <span class="tag">New</span></li>
								<li><a href="notifications.html" title=""> <img
										src="images/resources/thumb-5.jpg" alt="">
										<div class="mesg-meta">
											<h6>Amy</h6>
											<span>Hi, how r u dear ...?</span> <i>2 min ago</i>
										</div>
								</a> <span class="tag">New</span></li>
							</ul>
							<a href="messages.html" title="" class="more-mesg">view more</a>
						</div></li>

				</ul>

				<div class="user-img">
					<c:set var="avatar"
						value="${sessionScope.loggedInUser.getAnhDaiDien()}" />
					<img src="${avatar}" alt="nothing" width="60px" height="60px">
					<!-- <img src="images/resources/admin.jpg" alt=""> -->
					<span class="status f-online"></span>
					<div class="user-setting" style="left: -80px; width: 150px">
						<script>
							// Định nghĩa hàm redirect
							function redirect(url) {
								window.location.href = url;

							}
						</script>
						<a href="my-page.jsp" title=""
							onclick="redirect('/DoAn-SocialNetwork/my-page.jsp')"><i
							class="ti-user"></i> view profile</a> 
						<a href="edit-profile.jsp"
							title=""
							onclick="redirect('/DoAn-SocialNetwork/edit-profile.jsp')"><i
							class="ti-pencil-alt"></i>edit profile</a>
						<a href="edit-password.jsp" title=""
							onclick="redirect('/DoAn-SocialNetwork/edit-password.jsp')"><i
							class="ti-lock"></i>edit password</a> 
						<a href="#" title=""
							onclick="redirect('/DoAn-SocialNetwork/controller/logout-servlet')"><i
							class="ti-power-off"></i>log out</a>
					</div>
				</div>

			</div>
		</div>
		<!-- topbar -->

		<section>
			<div class="gap gray-bg">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12">
							<div class="row" id="page-contents">
								<div class="col-lg-3">
									<aside class="sidebar static">
										<div class="widget">
											<h4 class="widget-title">Shortcuts</h4>
											<ul class="naves">
												<li><i class="ti-clipboard"></i> <a href="newsfeed.jsp"
													title="">News feed</a></li>

												<li><i class="ti-files"></i> <a href="my-page.jsp"
													title="">My pages</a></li>
												<li><i class="ti-user"></i> <a href="/DoAn-SocialNetwork/controller/friend-servlet" 
													title="">Friends</a></li>
												<li><i class="ti-image"></i> <a href="photos.jsp"
													title="">Images</a></li>
												<li><i class="ti-video-camera"></i> <a
													href="videos.jsp" title="">Videos</a></li>
												<li><i class="ti-comments-smiley"></i> <a
													href="messages.html" title="">Messages</a></li>
											</ul>
										</div>
										<!-- Shortcuts -->


									</aside>
								</div>
								<!-- sidebar -->
								<div class="col-lg-6">
									<div class="central-meta">
										<div class="new-postbox">
											<figure>
												<img src="images/resources/admin2.jpg" alt="">
											</figure>
											<div class="newpst-input">
												<form method="post">
													<textarea rows="2" placeholder="write something"></textarea>
													<div class="attachments">
														<ul>
															<li><i class="fa fa-music"></i> <label
																class="fileContainer"> <input type="file">
															</label></li>
															<li><i class="fa fa-image"></i> <label
																class="fileContainer"> <input type="file">
															</label></li>
															<li><i class="fa fa-video-camera"></i> <label
																class="fileContainer"> <input type="file">
															</label></li>
															<li><i class="fa fa-camera"></i> <label
																class="fileContainer"> <input type="file">
															</label></li>
															<li>
																<button type="submit">Post</button>
															</li>
														</ul>
													</div>
												</form>
											</div>
										</div>
									</div>
									<!-- add post new box -->
									<div class="loadMore">
										<div class="central-meta item">
											<div class="user-post">
												<div class="friend-info">
													<figure>
														<img src="images/resources/friend-avatar10.jpg" alt="">
													</figure>
													<div class="friend-name">
														<ins>
															<a href="time-line.html" title="">Janice Griffith</a>
														</ins>
														<span>published: june,2 2018 19:PM</span>
													</div>
													<div class="post-meta">
														<img src="images/resources/user-post.jpg" alt="">
														<div class="we-video-info">
															<ul>
																<li><span class="views" data-toggle="tooltip"
																	title="views"> <i class="fa fa-eye"></i> <ins>1.2k</ins>
																</span></li>
																<li><span class="comment" data-toggle="tooltip"
																	title="Comments"> <i class="fa fa-comments-o"></i>
																		<ins>52</ins>
																</span></li>
																<li><span class="like" data-toggle="tooltip"
																	title="like"> <i class="ti-heart"></i> <ins>2.2k</ins>
																</span></li>
																<li><span class="dislike" data-toggle="tooltip"
																	title="dislike"> <i class="ti-heart-broken"></i>
																		<ins>200</ins>
																</span></li>
																<li class="social-media">
																	<div class="menu">
																		<div class="btn trigger">
																			<i class="fa fa-share-alt"></i>
																		</div>
																		<div class="rotater">
																			<div class="btn btn-icon">
																				<a href="#" title=""><i class="fa fa-html5"></i></a>
																			</div>
																		</div>
																		<div class="rotater">
																			<div class="btn btn-icon">
																				<a href="#" title=""><i class="fa fa-facebook"></i></a>
																			</div>
																		</div>
																		<div class="rotater">
																			<div class="btn btn-icon">
																				<a href="#" title=""><i
																					class="fa fa-google-plus"></i></a>
																			</div>
																		</div>
																		<div class="rotater">
																			<div class="btn btn-icon">
																				<a href="#" title=""><i class="fa fa-twitter"></i></a>
																			</div>
																		</div>
																		<div class="rotater">
																			<div class="btn btn-icon">
																				<a href="#" title=""><i class="fa fa-css3"></i></a>
																			</div>
																		</div>
																		<div class="rotater">
																			<div class="btn btn-icon">
																				<a href="#" title=""><i class="fa fa-instagram"></i></a>
																			</div>
																		</div>
																		<div class="rotater">
																			<div class="btn btn-icon">
																				<a href="#" title=""><i class="fa fa-dribbble"></i></a>
																			</div>
																		</div>
																		<div class="rotater">
																			<div class="btn btn-icon">
																				<a href="#" title=""><i class="fa fa-pinterest"></i></a>
																			</div>
																		</div>

																	</div>
																</li>
															</ul>
														</div>
														<div class="description">

															<p>
																World's most beautiful car in Curabitur <a href="#"
																	title="">#test drive booking !</a> the most beatuiful
																car available in america and the saudia arabia, you can
																book your test drive by our official website
															</p>
														</div>
													</div>
												</div>
												<div class="coment-area">
													<ul class="we-comet">
														<li>
															<div class="comet-avatar">
																<img src="images/resources/comet-1.jpg" alt="">
															</div>
															<div class="we-comment">
																<div class="coment-head">
																	<h5>
																		<a href="time-line.html" title="">Jason borne</a>
																	</h5>
																	<span>1 year ago</span> <a class="we-reply" href="#"
																		title="Reply"><i class="fa fa-reply"></i></a>
																</div>
																<p>we are working for the dance and sing songs. this
																	car is very awesome for the youngster. please vote this
																	car and like our post</p>
															</div>
															<ul>
																<li>
																	<div class="comet-avatar">
																		<img src="images/resources/comet-2.jpg" alt="">
																	</div>
																	<div class="we-comment">
																		<div class="coment-head">
																			<h5>
																				<a href="time-line.html" title="">alexendra
																					dadrio</a>
																			</h5>
																			<span>1 month ago</span> <a class="we-reply" href="#"
																				title="Reply"><i class="fa fa-reply"></i></a>
																		</div>
																		<p>
																			yes, really very awesome car i see the features of
																			this car in the official website of <a href="#"
																				title="">#Mercedes-Benz</a> and really impressed :-)
																		</p>
																	</div>
																</li>
																<li>
																	<div class="comet-avatar">
																		<img src="images/resources/comet-3.jpg" alt="">
																	</div>
																	<div class="we-comment">
																		<div class="coment-head">
																			<h5>
																				<a href="time-line.html" title="">Olivia</a>
																			</h5>
																			<span>16 days ago</span> <a class="we-reply" href="#"
																				title="Reply"><i class="fa fa-reply"></i></a>
																		</div>
																		<p>i like lexus cars, lexus cars are most
																			beautiful with the awesome features, but this car is
																			really outstanding than lexus</p>
																	</div>
																</li>
															</ul>
														</li>
														<li>
															<div class="comet-avatar">
																<img src="images/resources/comet-1.jpg" alt="">
															</div>
															<div class="we-comment">
																<div class="coment-head">
																	<h5>
																		<a href="time-line.html" title="">Donald Trump</a>
																	</h5>
																	<span>1 week ago</span> <a class="we-reply" href="#"
																		title="Reply"><i class="fa fa-reply"></i></a>
																</div>
																<p>
																	we are working for the dance and sing songs. this video
																	is very awesome for the youngster. please vote this
																	video and like our channel <i class="em em-smiley"></i>
																</p>
															</div>
														</li>
														<li><a href="#" title="" class="showmore underline">more
																comments</a></li>
														<li class="post-comment">
															<div class="comet-avatar">
																<img src="images/resources/comet-1.jpg" alt="">
															</div>
															<div class="post-comt-box">
																<form method="post">
																	<textarea placeholder="Post your comment"></textarea>
																	<div class="add-smiles">
																		<span class="em em-expressionless" title="add icon"></span>
																	</div>
																	<div class="smiles-bunch">
																		<i class="em em---1"></i> <i class="em em-smiley"></i>
																		<i class="em em-anguished"></i> <i
																			class="em em-laughing"></i> <i class="em em-angry"></i>
																		<i class="em em-astonished"></i> <i
																			class="em em-blush"></i> <i
																			class="em em-disappointed"></i> <i
																			class="em em-worried"></i> <i
																			class="em em-kissing_heart"></i> <i
																			class="em em-rage"></i> <i
																			class="em em-stuck_out_tongue"></i>
																	</div>
																	<button type="submit"></button>
																</form>
															</div>
														</li>
													</ul>
												</div>
											</div>
										</div>
										<div class="central-meta item">
											<div class="user-post">
												<div class="friend-info">
													<figure>
														<img src="images/resources/nearly1.jpg" alt="">
													</figure>
													<div class="friend-name">
														<ins>
															<a href="time-line.html" title="">Sara Grey</a>
														</ins>
														<span>published: june,2 2018 19:PM</span>
													</div>
													<div class="post-meta">
														<iframe src="https://player.vimeo.com/video/15232052"
															height="315" webkitallowfullscreen mozallowfullscreen
															allowfullscreen></iframe>

														<div class="we-video-info">
															<ul>
																<li><span class="views" data-toggle="tooltip"
																	title="views"> <i class="fa fa-eye"></i> <ins>1.2k</ins>
																</span></li>
																<li><span class="comment" data-toggle="tooltip"
																	title="Comments"> <i class="fa fa-comments-o"></i>
																		<ins>52</ins>
																</span></li>
																<li><span class="like" data-toggle="tooltip"
																	title="like"> <i class="ti-heart"></i> <ins>2.2k</ins>
																</span></li>
																<li><span class="dislike" data-toggle="tooltip"
																	title="dislike"> <i class="ti-heart-broken"></i>
																		<ins>200</ins>
																</span></li>
																<li class="social-media">
																	<div class="menu">
																		<div class="btn trigger">
																			<i class="fa fa-share-alt"></i>
																		</div>
																		<div class="rotater">
																			<div class="btn btn-icon">
																				<a href="#" title=""><i class="fa fa-html5"></i></a>
																			</div>
																		</div>
																		<div class="rotater">
																			<div class="btn btn-icon">
																				<a href="#" title=""><i class="fa fa-facebook"></i></a>
																			</div>
																		</div>
																		<div class="rotater">
																			<div class="btn btn-icon">
																				<a href="#" title=""><i
																					class="fa fa-google-plus"></i></a>
																			</div>
																		</div>
																		<div class="rotater">
																			<div class="btn btn-icon">
																				<a href="#" title=""><i class="fa fa-twitter"></i></a>
																			</div>
																		</div>
																		<div class="rotater">
																			<div class="btn btn-icon">
																				<a href="#" title=""><i class="fa fa-css3"></i></a>
																			</div>
																		</div>
																		<div class="rotater">
																			<div class="btn btn-icon">
																				<a href="#" title=""><i class="fa fa-instagram"></i></a>
																			</div>
																		</div>
																		<div class="rotater">
																			<div class="btn btn-icon">
																				<a href="#" title=""><i class="fa fa-dribbble"></i></a>
																			</div>
																		</div>
																		<div class="rotater">
																			<div class="btn btn-icon">
																				<a href="#" title=""><i class="fa fa-pinterest"></i></a>
																			</div>
																		</div>

																	</div>
																</li>
															</ul>
														</div>
														<div class="description">

															<p>
																Lonely Cat Enjoying in Summer Curabitur <a href="#"
																	title="">#mypage</a> ullamcorper ultricies nisi. Nam
																eget dui. Etiam rhoncus. Maecenas tempus, tellus eget
																condimentum rhoncus, sem quam semper libero, sit amet
																adipiscing sem neque sed ipsum. Nam quam nunc,
															</p>
														</div>
													</div>
												</div>
												<div class="coment-area">
													<ul class="we-comet">
														<li>
															<div class="comet-avatar">
																<img src="images/resources/comet-1.jpg" alt="">
															</div>
															<div class="we-comment">
																<div class="coment-head">
																	<h5>
																		<a href="time-line.html" title="">Jason borne</a>
																	</h5>
																	<span>1 year ago</span> <a class="we-reply" href="#"
																		title="Reply"><i class="fa fa-reply"></i></a>
																</div>
																<p>we are working for the dance and sing songs. this
																	video is very awesome for the youngster. please vote
																	this video and like our channel</p>
															</div>

														</li>
														<li>
															<div class="comet-avatar">
																<img src="images/resources/comet-2.jpg" alt="">
															</div>
															<div class="we-comment">
																<div class="coment-head">
																	<h5>
																		<a href="time-line.html" title="">Sophia</a>
																	</h5>
																	<span>1 week ago</span> <a class="we-reply" href="#"
																		title="Reply"><i class="fa fa-reply"></i></a>
																</div>
																<p>
																	we are working for the dance and sing songs. this video
																	is very awesome for the youngster. <i
																		class="em em-smiley"></i>
																</p>
															</div>
														</li>
														<li><a href="#" title="" class="showmore underline">more
																comments</a></li>
														<li class="post-comment">
															<div class="comet-avatar">
																<img src="images/resources/comet-2.jpg" alt="">
															</div>
															<div class="post-comt-box">
																<form method="post">
																	<textarea placeholder="Post your comment"></textarea>
																	<div class="add-smiles">
																		<span class="em em-expressionless" title="add icon"></span>
																	</div>
																	<div class="smiles-bunch">
																		<i class="em em---1"></i> <i class="em em-smiley"></i>
																		<i class="em em-anguished"></i> <i
																			class="em em-laughing"></i> <i class="em em-angry"></i>
																		<i class="em em-astonished"></i> <i
																			class="em em-blush"></i> <i
																			class="em em-disappointed"></i> <i
																			class="em em-worried"></i> <i
																			class="em em-kissing_heart"></i> <i
																			class="em em-rage"></i> <i
																			class="em em-stuck_out_tongue"></i>
																	</div>
																	<button type="submit"></button>
																</form>
															</div>
														</li>
													</ul>
												</div>
											</div>
										</div>
										<div class="central-meta item">
											<div class="user-post">
												<div class="friend-info">
													<figure>
														<img src="images/resources/nearly6.jpg" alt="">
													</figure>
													<div class="friend-name">
														<ins>
															<a href="time-line.html" title="">Sophia</a>
														</ins>
														<span>published: january,5 2018 19:PM</span>
													</div>
													<div class="post-meta">
														<div class="post-map">
															<div class="nearby-map">
																<div id="map-canvas"></div>
															</div>
														</div>
														<!-- near by map -->
														<div class="we-video-info">
															<ul>
																<li><span class="views" data-toggle="tooltip"
																	title="views"> <i class="fa fa-eye"></i> <ins>1.2k</ins>
																</span></li>
																<li><span class="comment" data-toggle="tooltip"
																	title="Comments"> <i class="fa fa-comments-o"></i>
																		<ins>52</ins>
																</span></li>
																<li><span class="like" data-toggle="tooltip"
																	title="like"> <i class="ti-heart"></i> <ins>2.2k</ins>
																</span></li>
																<li><span class="dislike" data-toggle="tooltip"
																	title="dislike"> <i class="ti-heart-broken"></i>
																		<ins>200</ins>
																</span></li>
																<li class="social-media">
																	<div class="menu">
																		<div class="btn trigger">
																			<i class="fa fa-share-alt"></i>
																		</div>
																		<div class="rotater">
																			<div class="btn btn-icon">
																				<a href="#" title=""><i class="fa fa-html5"></i></a>
																			</div>
																		</div>
																		<div class="rotater">
																			<div class="btn btn-icon">
																				<a href="#" title=""><i class="fa fa-facebook"></i></a>
																			</div>
																		</div>
																		<div class="rotater">
																			<div class="btn btn-icon">
																				<a href="#" title=""><i
																					class="fa fa-google-plus"></i></a>
																			</div>
																		</div>
																		<div class="rotater">
																			<div class="btn btn-icon">
																				<a href="#" title=""><i class="fa fa-twitter"></i></a>
																			</div>
																		</div>
																		<div class="rotater">
																			<div class="btn btn-icon">
																				<a href="#" title=""><i class="fa fa-css3"></i></a>
																			</div>
																		</div>
																		<div class="rotater">
																			<div class="btn btn-icon">
																				<a href="#" title=""><i class="fa fa-instagram"></i></a>
																			</div>
																		</div>
																		<div class="rotater">
																			<div class="btn btn-icon">
																				<a href="#" title=""><i class="fa fa-dribbble"></i></a>
																			</div>
																		</div>
																		<div class="rotater">
																			<div class="btn btn-icon">
																				<a href="#" title=""><i class="fa fa-pinterest"></i></a>
																			</div>
																		</div>

																	</div>
																</li>
															</ul>
														</div>
														<div class="description">

															<p>
																Curabitur Lonely Cat Enjoying in Summer <a href="#"
																	title="">#mypage</a> ullamcorper ultricies nisi. Nam
																eget dui. Etiam rhoncus. Maecenas tempus, tellus eget
																condimentum rhoncus, sem quam semper libero, sit amet
																adipiscing sem neque sed ipsum. Nam quam nunc,
															</p>
														</div>
													</div>
												</div>
												<div class="coment-area">
													<ul class="we-comet">
														<li>
															<div class="comet-avatar">
																<img src="images/resources/comet-1.jpg" alt="">
															</div>
															<div class="we-comment">
																<div class="coment-head">
																	<h5>
																		<a href="time-line.html" title="">Jason borne</a>
																	</h5>
																	<span>1 year ago</span> <a class="we-reply" href="#"
																		title="Reply"><i class="fa fa-reply"></i></a>
																</div>
																<p>we are working for the dance and sing songs. this
																	video is very awesome for the youngster. please vote
																	this video and like our channel</p>
															</div>

														</li>
														<li>
															<div class="comet-avatar">
																<img src="images/resources/comet-2.jpg" alt="">
															</div>
															<div class="we-comment">
																<div class="coment-head">
																	<h5>
																		<a href="time-line.html" title="">Sophia</a>
																	</h5>
																	<span>1 week ago</span> <a class="we-reply" href="#"
																		title="Reply"><i class="fa fa-reply"></i></a>
																</div>
																<p>
																	we are working for the dance and sing songs. this video
																	is very awesome for the youngster. <i
																		class="em em-smiley"></i>
																</p>
															</div>
														</li>
														<li><a href="#" title="" class="showmore underline">more
																comments</a></li>
														<li class="post-comment">
															<div class="comet-avatar">
																<img src="images/resources/comet-2.jpg" alt="">
															</div>
															<div class="post-comt-box">
																<form method="post">
																	<textarea placeholder="Post your comment"></textarea>
																	<div class="add-smiles">
																		<span class="em em-expressionless" title="add icon"></span>
																	</div>
																	<div class="smiles-bunch">
																		<i class="em em---1"></i> <i class="em em-smiley"></i>
																		<i class="em em-anguished"></i> <i
																			class="em em-laughing"></i> <i class="em em-angry"></i>
																		<i class="em em-astonished"></i> <i
																			class="em em-blush"></i> <i
																			class="em em-disappointed"></i> <i
																			class="em em-worried"></i> <i
																			class="em em-kissing_heart"></i> <i
																			class="em em-rage"></i> <i
																			class="em em-stuck_out_tongue"></i>
																	</div>
																	<button type="submit"></button>
																</form>
															</div>
														</li>
													</ul>
												</div>
											</div>
										</div>
										<div class="central-meta item">
											<div class="user-post">
												<div class="friend-info">
													<figure>
														<img alt="" src="images/resources/friend-avatar10.jpg">
													</figure>
													<div class="friend-name">
														<ins>
															<a title="" href="time-line.html">Janice Griffith</a>
														</ins>
														<span>published: june,2 2018 19:PM</span>
													</div>
													<div class="description">

														<p>
															Curabitur World's most beautiful car in <a title=""
																href="#">#test drive booking !</a> the most beatuiful
															car available in america and the saudia arabia, you can
															book your test drive by our official website
														</p>
													</div>
													<div class="post-meta">
														<div class="linked-image align-left">
															<a title="" href="#"><img alt=""
																src="images/resources/page1.jpg"></a>
														</div>
														<div class="detail">
															<span>Love Maid - ChillGroves</span>
															<p>Lorem ipsum dolor sit amet, consectetur ipisicing
																elit, sed do eiusmod tempor incididunt ut labore et
																dolore magna aliqua...</p>
															<a title="" href="#">www.sample.com</a>
														</div>
														<div class="we-video-info">
															<ul>
																<li><span class="views" data-toggle="tooltip"
																	title="views"> <i class="fa fa-eye"></i> <ins>1.2k</ins>
																</span></li>
																<li><span class="comment" data-toggle="tooltip"
																	title="Comments"> <i class="fa fa-comments-o"></i>
																		<ins>52</ins>
																</span></li>
																<li><span class="like" data-toggle="tooltip"
																	title="like"> <i class="ti-heart"></i> <ins>2.2k</ins>
																</span></li>
																<li><span class="dislike" data-toggle="tooltip"
																	title="dislike"> <i class="ti-heart-broken"></i>
																		<ins>200</ins>
																</span></li>
																<li class="social-media">
																	<div class="menu">
																		<div class="btn trigger">
																			<i class="fa fa-share-alt"></i>
																		</div>
																		<div class="rotater">
																			<div class="btn btn-icon">
																				<a href="#" title=""><i class="fa fa-html5"></i></a>
																			</div>
																		</div>
																		<div class="rotater">
																			<div class="btn btn-icon">
																				<a href="#" title=""><i class="fa fa-facebook"></i></a>
																			</div>
																		</div>
																		<div class="rotater">
																			<div class="btn btn-icon">
																				<a href="#" title=""><i
																					class="fa fa-google-plus"></i></a>
																			</div>
																		</div>
																		<div class="rotater">
																			<div class="btn btn-icon">
																				<a href="#" title=""><i class="fa fa-twitter"></i></a>
																			</div>
																		</div>
																		<div class="rotater">
																			<div class="btn btn-icon">
																				<a href="#" title=""><i class="fa fa-css3"></i></a>
																			</div>
																		</div>
																		<div class="rotater">
																			<div class="btn btn-icon">
																				<a href="#" title=""><i class="fa fa-instagram"></i></a>
																			</div>
																		</div>
																		<div class="rotater">
																			<div class="btn btn-icon">
																				<a href="#" title=""><i class="fa fa-dribbble"></i></a>
																			</div>
																		</div>
																		<div class="rotater">
																			<div class="btn btn-icon">
																				<a href="#" title=""><i class="fa fa-pinterest"></i></a>
																			</div>
																		</div>

																	</div>
																</li>
															</ul>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- centerl meta -->
								<div class="col-lg-3">
									<aside class="sidebar static">
										<div class="widget friend-list stick-widget">
											<h4 class="widget-title">Friends</h4>
											<div id="searchDir"></div>
											<ul id="people-list" class="friendz-list">
												<li>
													<figure>	
														<img src="images/resources/friend-avatar.jpg" alt="">
														<span class="status f-online"></span>
													</figure>
													<div class="friendz-meta">
														<a href="time-line.html">bucky barnes</a> <i><a
															href="https://wpkixx.com/cdn-cgi/l/email-protection"
															class="__cf_email__"
															data-cfemail="f2859b9c869780819d9e969780b2959f939b9edc919d9f">[email&#160;protected]</a></i>
													</div>
												</li>
												<li>
													<figure>
														<img src="images/resources/friend-avatar2.jpg" alt="">
														<span class="status f-away"></span>
													</figure>
													<div class="friendz-meta">
														<a href="time-line.html">Sarah Loren</a> <i><a
															href="https://wpkixx.com/cdn-cgi/l/email-protection"
															class="__cf_email__"
															data-cfemail="ea888b98848f99aa8d878b8386c4898587">[email&#160;protected]</a></i>
													</div>
												</li>
												<li>
													<figure>
														<img src="images/resources/friend-avatar3.jpg" alt="">
														<span class="status f-off"></span>
													</figure>
													<div class="friendz-meta">
														<a href="time-line.html">jason borne</a> <i><a
															href="https://wpkixx.com/cdn-cgi/l/email-protection"
															class="__cf_email__"
															data-cfemail="2d474c5e42434f6d4a404c4441034e4240">[email&#160;protected]</a></i>
													</div>
												</li>
												<li>
													<figure>
														<img src="images/resources/friend-avatar4.jpg" alt="">
														<span class="status f-off"></span>
													</figure>
													<div class="friendz-meta">
														<a href="time-line.html">Cameron diaz</a> <i><a
															href="https://wpkixx.com/cdn-cgi/l/email-protection"
															class="__cf_email__"
															data-cfemail="6802091b07060a280f05090104460b0705">[email&#160;protected]</a></i>
													</div>
												</li>
												<li>

													<figure>
														<img src="images/resources/friend-avatar5.jpg" alt="">
														<span class="status f-online"></span>
													</figure>
													<div class="friendz-meta">
														<a href="time-line.html">daniel warber</a> <i><a
															href="https://wpkixx.com/cdn-cgi/l/email-protection"
															class="__cf_email__"
															data-cfemail="4e242f3d21202c0e29232f2722602d2123">[email&#160;protected]</a></i>
													</div>
												</li>
												<li>

													<figure>
														<img src="images/resources/friend-avatar6.jpg" alt="">
														<span class="status f-away"></span>
													</figure>
													<div class="friendz-meta">
														<a href="time-line.html">andrew</a> <i><a
															href="https://wpkixx.com/cdn-cgi/l/email-protection"
															class="__cf_email__"
															data-cfemail="1872796b77767a587f75797174367b7775">[email&#160;protected]</a></i>
													</div>
												</li>
												<li>

													<figure>
														<img src="images/resources/friend-avatar7.jpg" alt="">
														<span class="status f-off"></span>
													</figure>
													<div class="friendz-meta">
														<a href="time-line.html">amy watson</a> <i><a
															href="https://wpkixx.com/cdn-cgi/l/email-protection"
															class="__cf_email__"
															data-cfemail="711b10021e1f1331161c10181d5f121e1c">[email&#160;protected]</a></i>
													</div>
												</li>
												<li>

													<figure>
														<img src="images/resources/friend-avatar5.jpg" alt="">
														<span class="status f-online"></span>
													</figure>
													<div class="friendz-meta">
														<a href="time-line.html">daniel warber</a> <i><a
															href="https://wpkixx.com/cdn-cgi/l/email-protection"
															class="__cf_email__"
															data-cfemail="234942504c4d4163444e424a4f0d404c4e">[email&#160;protected]</a></i>
													</div>
												</li>
												<li>

													<figure>
														<img src="images/resources/friend-avatar2.jpg" alt="">
														<span class="status f-away"></span>
													</figure>
													<div class="friendz-meta">
														<a href="time-line.html">Sarah Loren</a> <i><a
															href="https://wpkixx.com/cdn-cgi/l/email-protection"
															class="__cf_email__"
															data-cfemail="d5b7b4a7bbb0a695b2b8b4bcb9fbb6bab8">[email&#160;protected]</a></i>
													</div>
												</li>
											</ul>
											<div class="chat-box">
												<div class="chat-head">
													<span class="status f-online"></span>
													<h6>Bucky Barnes</h6>
													<div class="more">
														<span><i class="ti-more-alt"></i></span> <span
															class="close-mesage"><i class="ti-close"></i></span>
													</div>
												</div>
												<div class="chat-list">
													<ul>
														<li class="me">
															<div class="chat-thumb">
																<img src="images/resources/chatlist1.jpg" alt="">
															</div>
															<div class="notification-event">
																<span class="chat-message-item"> Hi James! Please
																	remember to buy the food for tomorrow! I’m gonna be
																	handling the gifts and Jake’s gonna get the drinks </span> <span
																	class="notification-date"><time
																		datetime="2004-07-24T18:18" class="entry-date updated">Yesterday
																		at 8:10pm</time></span>
															</div>
														</li>
														<li class="you">
															<div class="chat-thumb">
																<img src="images/resources/chatlist2.jpg" alt="">
															</div>
															<div class="notification-event">
																<span class="chat-message-item"> Hi James! Please
																	remember to buy the food for tomorrow! I’m gonna be
																	handling the gifts and Jake’s gonna get the drinks </span> <span
																	class="notification-date"><time
																		datetime="2004-07-24T18:18" class="entry-date updated">Yesterday
																		at 8:10pm</time></span>
															</div>
														</li>
														<li class="me">
															<div class="chat-thumb">
																<img src="images/resources/chatlist1.jpg" alt="">
															</div>
															<div class="notification-event">
																<span class="chat-message-item"> Hi James! Please
																	remember to buy the food for tomorrow! I’m gonna be
																	handling the gifts and Jake’s gonna get the drinks </span> <span
																	class="notification-date"><time
																		datetime="2004-07-24T18:18" class="entry-date updated">Yesterday
																		at 8:10pm</time></span>
															</div>
														</li>
													</ul>
													<form class="text-box">
														<textarea placeholder="Post enter to post..."></textarea>
														<div class="add-smiles">
															<span title="add icon" class="em em-expressionless"></span>
														</div>
														<div class="smiles-bunch">
															<i class="em em---1"></i> <i class="em em-smiley"></i> <i
																class="em em-anguished"></i> <i class="em em-laughing"></i>
															<i class="em em-angry"></i> <i class="em em-astonished"></i>
															<i class="em em-blush"></i> <i class="em em-disappointed"></i>
															<i class="em em-worried"></i> <i
																class="em em-kissing_heart"></i> <i class="em em-rage"></i>
															<i class="em em-stuck_out_tongue"></i>
														</div>
														<button type="submit"></button>
													</form>
												</div>
											</div>
										</div>
										<!-- friends list sidebar -->
									</aside>
								</div>
								<!-- sidebar -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<footer>
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-md-4">
						<div class="widget">
							<div class="foot-logo">
								<div class="logo">
									<a href="index-2.html" title=""><img src="images/logo.png"
										alt=""></a>
								</div>
								<p>The trio took this simple idea and built it into the
									world’s leading carpooling platform.</p>
							</div>
							<ul class="location">
								<li><i class="ti-map-alt"></i>
									<p>33 new montgomery st.750 san francisco, CA USA 94105.</p></li>
								<li><i class="ti-mobile"></i>
									<p>+1-56-346 345</p></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-2 col-md-4">
						<div class="widget">
							<div class="widget-title">
								<h4>follow</h4>
							</div>
							<ul class="list-style">
								<li><i class="fa fa-facebook-square"></i> <a
									href="https://web.facebook.com/shopcircut/" title="">facebook</a></li>
								<li><i class="fa fa-twitter-square"></i><a
									href="https://twitter.com/login?lang=en" title="">twitter</a></li>
								<li><i class="fa fa-instagram"></i><a
									href="https://www.instagram.com/?hl=en" title="">instagram</a></li>
								<li><i class="fa fa-google-plus-square"></i> <a
									href="https://plus.google.com/discover" title="">Google+</a></li>
								<li><i class="fa fa-pinterest-square"></i> <a
									href="https://www.pinterest.com/" title="">Pintrest</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-2 col-md-4">
						<div class="widget">
							<div class="widget-title">
								<h4>Navigate</h4>
							</div>
							<ul class="list-style">
								<li><a href="about.html" title="">about us</a></li>
								<li><a href="contact.html" title="">contact us</a></li>
								<li><a href="terms.html" title="">terms & Conditions</a></li>
								<li><a href="#" title="">RSS syndication</a></li>
								<li><a href="sitemap.html" title="">Sitemap</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-2 col-md-4">
						<div class="widget">
							<div class="widget-title">
								<h4>useful links</h4>
							</div>
							<ul class="list-style">
								<li><a href="#" title="">leasing</a></li>
								<li><a href="#" title="">submit route</a></li>
								<li><a href="#" title="">how does it work?</a></li>
								<li><a href="#" title="">agent listings</a></li>
								<li><a href="#" title="">view All</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-2 col-md-4">
						<div class="widget">
							<div class="widget-title">
								<h4>download apps</h4>
							</div>
							<ul class="colla-apps">
								<li><a href="https://play.google.com/store?hl=en" title=""><i
										class="fa fa-android"></i>android</a></li>
								<li><a href="https://www.apple.com/lae/ios/app-store/"
									title=""><i class="ti-apple"></i>iPhone</a></li>
								<li><a href="https://www.microsoft.com/store/apps" title=""><i
										class="fa fa-windows"></i>Windows</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</footer>
		<!-- footer -->
		<div class="bottombar">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<span class="copyright"><a target="_blank"
							href="https://www.templateshub.net">Templates Hub</a></span> <i><img
							src="images/credit-cards.png" alt=""></i>
					</div>
				</div>
			</div>
		</div>
	</div>


	<script data-cfasync="false"
		src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
	<script src="js/main.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/script.js"></script>
	<script src="${pageContext.request.contextPath}/js/map-init.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8c55_YHLvDHGACkQscgbGLtLRdxBDCfI"></script>
</body>
</html>