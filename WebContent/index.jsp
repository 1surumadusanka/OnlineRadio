
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>MusicJ</title>

<!-- Bootstrap core CSS -->
<link href="assets/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="assets/css/cover.css" rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="assets/js/ie-emulation-modes-warning.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<!-- Importing audiojs player js -->
<script src="http://kolber.github.io/audiojs/demos/jquery.js"></script>
<script src="assets/js/audio.min.js"></script>

<script>
	$(function() {
		// Setup the player to autoplay the next track
		var a = audiojs.createAll({
			trackEnded : function() {
				var next = $('ol li.playing').next();
				if (!next.length)
					next = $('ol li').first();
				next.addClass('playing').siblings().removeClass('playing');
				audio.load($('a', next).attr('data-src'));
				audio.play();
			}
		});

		// Load in the first track
		var audio = a[0];
		first = $('ol a').attr('data-src');
		$('ol li').first().addClass('playing');
		audio.load(first);

		// Load in a track on click
		$('ol li').click(function(e) {
			e.preventDefault();
			$(this).addClass('playing').siblings().removeClass('playing');
			audio.load($('a', this).attr('data-src'));
			audio.play();
		});
		// Keyboard shortcuts
		$(document).keydown(function(e) {
			var unicode = e.charCode ? e.charCode : e.keyCode;
			// right arrow
			if (unicode == 39) {
				var next = $('li.playing').next();
				if (!next.length)
					next = $('ol li').first();
				next.click();
				// back arrow
			} else if (unicode == 37) {
				var prev = $('li.playing').prev();
				if (!prev.length)
					prev = $('ol li').last();
				prev.click();
				// spacebar
			} else if (unicode == 32) {
				audio.playPause();
			}
		})
	});
</script>

<style type="text/css" media="screen">
#RemoveListnumber {
	list-style: none;
}
</style>
</head>

<body>

	<div class="site-wrapper">

		<div class="site-wrapper-inner">

			<div class="cover-container">

				<div class="masthead clearfix">
					<div class="inner">
						<h3 class="masthead-brand">MusicJ</h3>
						<nav>
							<ul class="nav masthead-nav">
								<li class="active"><a href="#">Home</a></li>
								<li><a href="#">Features</a></li>
								<li><a href="#">Contact</a></li>
							</ul>
						</nav>
					</div>
				</div>

				<div class="inner cover">
					<p class="lead">MusicJ is a music and audio files streaming service that provides streaming for everyone.</p>
					<p class="lead"></p>
				</div>

				<div class="row">
					<div class="col-md-2 col-md-offset-2">
						<audio preload></audio>
					</div>
				</div>

				<div class="row" style="padding-top: 25px;">

					<ol id="RemoveListnumber">
						<li><a href="#"
							data-src="http://kolber.github.io/audiojs/demos/mp3/01-dead-wrong-intro.mp3">dead
								wrong intro</a></li>
						<li><a href="#"
							data-src="http://kolber.github.io/audiojs/demos/mp3/02-juicy-r.mp3">juicy-r</a></li>
						<li><a href="#"
							data-src="http://kolber.github.io/audiojs/demos/mp3/03-its-all-about-the-crystalizabeths.mp3">it's
								all about the crystalizabeths</a></li>
						<li><a href="#"
							data-src="http://kolber.github.io/audiojs/demos/mp3/04-islands-is-the-limit.mp3">islands
								is the limit</a></li>
						<li><a href="#"
							data-src="http://kolber.github.io/audiojs/demos/mp3/05-one-more-chance-for-a-heart-to-skip-a-beat.mp3">one
								more chance for a heart to skip a beat</a></li>
						<li><a href="#"
							data-src="http://kolber.github.io/audiojs/demos/mp3/06-suicidal-fantasy.mp3">suicidal
								fantasy</a></li>
						<li><a href="#"
							data-src="http://kolber.github.io/audiojs/demos/mp3/07-everyday-shelter.mp3">everyday
								shelter</a></li>
						<li><a href="#"
							data-src="http://kolber.github.io/audiojs/demos/mp3/08-basic-hypnosis.mp3">basic
								hypnosis</a></li>
						<li><a href="#"
							data-src="http://kolber.github.io/audiojs/demos/mp3/09-infinite-victory.mp3">infinite
								victory</a></li>
						<li><a href="#"
							data-src="http://kolber.github.io/audiojs/demos/mp3/10-the-curious-incident-of-big-poppa-in-the-nighttime.mp3">the
								curious incident of big poppa in the nighttime</a></li>
						<li><a href="#"
							data-src="http://kolber.github.io/audiojs/demos/mp3/11-mo-stars-mo-problems.mp3">mo
								stars mo problems</a></li>
					</ol>

					<div class="mastfoot">
						<div class="inner">
							<img
								src="https://developer.android.com/images/brand/en_app_rgb_wo_45.png"
								alt="Google app on play">
								<img
								src="https://developer.android.com/images/brand/en_app_rgb_wo_45.png"
								alt="Google app on play">
						</div>
					</div>


				</div>
			</div>

		</div>



	</div>

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
