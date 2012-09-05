<!DOCTYPE html>
<html>
	<head>
		<title>index</title>
		<meta charset="utf-8" />
		<script type="text/javascript" src="../s/js/jquery-1.7.1.min.js"></script>
		<script type="text/javascript" src="../s/js/jquery.masonry.min.js"></script>
		<link type="text/css" rel="stylesheet" href="../s/css/malacca.css" />
		<script type="text/javascript">
			
		</script>
	</head>
	<body>
		<?php
			$appId = $_GET["appId"];
			if($appId == 1) {
				echo '<div id="content">
					<div class="swoosh lockup-container application large screenshots">
						<div class="title">
							<h2>心情</h2>
						</div>
						<div num-items="5" class="content iphone-screen-shots items5">
							<div class="pictures">
								<img src="../s/i/mza_4164642792797373939.320x480-75.jpg"></img>
								<img src="../s/i/mza_4904451656745497859.320x480-75.jpg"></img>
								<img src="../s/i/mza_5367531123982200757.320x480-75.jpg"></img>
								<img src="../s/i/mza_7235493356429869552.320x480-75.jpg"></img>
								<img src="../s/i/mza_9115300682707977707.320x480-75.jpg"></img>
							</div>
						</div>
					</div>
				</div>
				<div id="description">
					<div class="swoosh lockup-container application large screenshots">
						<div class="title">
							<h2>介绍</h2>
						</div>
						<div class="content">
							<p>
								记录生活•分享感动——欢迎使用心晴!<br />
								心晴是一款用于记录生活中的真实感悟和有趣瞬间,并与亲密好友分享这一切的应用。
							</p>
						</div>
					</div>
					<div class="swoosh lockup-container application large screenshots">
						<div class="title">
							<h2>获得应用</h2>
						</div>
						<div class="content">
							<a href="http://itunes.apple.com/us/app/xin-qing/id515799792?ls=1&mt=8" target="_blank"><img src="../s/i/iphone.gif"></img></a>
							<img src="../s/i/android.gif"></img>
						</div>
					</div>
				</div>';
			} else {
				echo '<div id="content">
					<div class="swoosh lockup-container application large screenshots">
						<div class="title">
							<h2>iReader</h2>
						</div>
						<div num-items="5" class="content iphone-screen-shots items5">
							<div class="pictures">
								<img src="../s/i/mza_1869869334935025107.320x480-75.jpg"></img>
								<img src="../s/i/mza_1821717854052603674.320x480-75.jpg"></img>
								<img src="../s/i/mza_3997519144964078150.320x480-75.jpg"></img>
								<img src="../s/i/mza_4362481729045875302.320x480-75.jpg"></img>
								<img src="../s/i/mza_8970139342945944382.320x480-75.jpg"></img>
							</div>
						</div>
					</div>
				</div>
				<div id="description">
					<div class="swoosh lockup-container application large screenshots">
						<div class="title">
							<h2>介绍</h2>
						</div>
						<div class="content">
							<p>
								iReader拥有海量优质图书资源,ebk/epub/umd/txt主流格式全支持,快速优雅阅读体验,体贴入微分享机制,让您随时随地尽享阅读趣味。<br />
								2012年,掌阅科技与盛大文学、中信出版、磨铁图书、长江文艺等出版机构达成战略合作,强强联手,全力出击!
							</p>
						</div>
					</div>
					<div class="swoosh lockup-container application large screenshots">
						<div class="title">
							<h2>获得应用</h2>
						</div>
						<div class="content">
							<a href="http://itunes.apple.com/cn/app/zhang-yueireader/id463150061?mt=8" target="_blank"><img src="../s/i/iphone.gif"></img></a>
							<img src="../s/i/android.gif"></img>
						</div>
					</div>
				</div>';
			}
		?>
		<script type="text/javascript" src="../s/js/malacca.js"></script>
	</body>
</html>