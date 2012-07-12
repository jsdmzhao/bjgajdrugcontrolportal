
import mx.transitions.easing.Elastic;
import mx.transitions.easing.None;
import mx.transitions.easing.Regular;
import mx.transitions.Tween;
import mx.utils.Delegate;
import NetConnection;
import NetStream;
import asclasses.Share;

class asclasses.VideoPlayer extends MovieClip {
	//-------------------------- Settings ----------------------------------<
	private var flv:String;
	private var previewImage:String;
	private var stafImage:String;
	private var autoResize:Boolean;
	private var autoPlay:Boolean;
	private var loop:Boolean;
	private var volume:Number;
	private var playerWidth:Number;
	private var playerHeight:Number;
	private var controlsPadding:Number;
	private var aspectRatio:String;
	private var keepAspectRatio:Boolean;
	private var showPreviewImage:Boolean;
	private var showFullScreenButton:Boolean;
	private var showShare:Boolean;
	private var showMiddlePlayButton:Boolean;
	private var watermarkPath:String;
	private var watermarkLink:String;
	private var showWatermark:Boolean;
	private var spaceKeyListener:Boolean;
	private var clickListener:Boolean;
	//----------------------------------------------------------------------<
	
	private static var mInstance:VideoPlayer;
	
	//----------------- VideoDisplay & MovieClips -------------------------------------<
	private var videoDisplay:Object;
	private var displayMC:MovieClip;
	private var controlsMC:MovieClip;
	private var shareDisplayMC:MovieClip;
	private var playPauseMC:MovieClip;
	private var stopMC:MovieClip;
	private var timelineMC:MovieClip;
	private var timesMC:MovieClip;
	private var fullScreenMC:MovieClip;
	private var shareMC:MovieClip;
	private var shareBtnMC:MovieClip;
	private var volumeMC:MovieClip;
	private var controlsBckMC:MovieClip;
	private var watermarkMC:MovieClip;
	private var clickableAreaMC:MovieClip;
	private var preloaderMC:MovieClip;
	private var middlePlayBtn:MovieClip;
	private var previewImageMC:MovieClip;
	//---------------------------------------------------------------------------------<
	
	//
	private var settingsXML:XML;
	private var connection_nc:NetConnection;
	private var stream_ns:NetStream;
	private var bytesLoadedInterval:Number;
	private var progressPosInterval:Number;
	private var playerPage:String;
	private var playerPath:String;
	private var scrubPosInterval:Number;
	private var volumeInterval:Number;
	private var totalTime:Number;
	private var flvSnd:Sound;
	private var mWidth:Number;
	private var mHeight:Number;
	private var flvWidth:Number;
	private var flvHeight:Number;
	private var wasPlaying:Boolean;
	private var youtubeData:MovieClip;
	private var metaDataLoaded:Boolean = false;
	private var tween1:Tween;
	private var tween2:Tween;
	private var tween3:Tween;
	//
	
	public static function getInstance():VideoPlayer {
		if (mInstance == undefined) {
			mInstance = new VideoPlayer();
		}
		return mInstance;
	}
	
	private function VideoPlayer() {
		mInstance = this;
		
		if (_root.htmlPage == undefined) {
			_root.htmlPage = "index.html";
		}
		var currURL:String = _root._url;
		playerPath = currURL.substring(0, currURL.lastIndexOf("/") + 1);
		playerPage = playerPath + _root.htmlPage;
		
		this.tabChildren = false;
		
		this.controlsMC._visible = false;
		this.middlePlayBtn._width = 0;
		this.middlePlayBtn._height = 0;
		
		//BEGIN: Load the settings from xml file
		settingsXML = new XML();
		settingsXML.ignoreWhite = true;
		settingsXML.onLoad = Delegate.create(this, settingsLoaded);
		if (_root.settingsFile == undefined) {
			_root.settingsFile = "settings.xml";
		}
		settingsXML.load(playerPath + _root.settingsFile);
		//END
	}
	
	private function settingsLoaded():Void {
		//BEGIN: Set the settings variables
		if (settingsXML.firstChild.attributes.flv.toString().indexOf("http:") != -1) {
			flv = settingsXML.firstChild.attributes.flv.toString();
		}else {
			flv = playerPath + settingsXML.firstChild.attributes.flv.toString();
		}
		
		if (settingsXML.firstChild.attributes.previewImage.toString().indexOf("http:") != -1) {
			previewImage = settingsXML.firstChild.attributes.previewImage.toString();
		}else {
			previewImage = playerPath + settingsXML.firstChild.attributes.previewImage.toString();
		}
		
		if (settingsXML.firstChild.attributes.stafImage.toString().indexOf("http:") != -1) {
			stafImage = settingsXML.firstChild.attributes.stafImage.toString();
		}else {
			stafImage = playerPath + settingsXML.firstChild.attributes.stafImage.toString();
		}
		
		autoResize = settingsXML.firstChild.attributes.autoResize.toString() == "true" ? true : false;
		autoPlay = settingsXML.firstChild.attributes.autoPlay.toString() == "true" ? true : false;
		loop = settingsXML.firstChild.attributes.loop.toString() == "true" ? true : false;
		volume = Number(settingsXML.firstChild.attributes.volume.toString());
		playerWidth = Number(settingsXML.firstChild.attributes.playerWidth.toString());
		playerHeight = Number(settingsXML.firstChild.attributes.playerHeight.toString());
		controlsPadding = Number(settingsXML.firstChild.attributes.controlsPadding.toString());
		aspectRatio = settingsXML.firstChild.attributes.aspectRatio.toString();
		keepAspectRatio = settingsXML.firstChild.attributes.keepAspectRatio.toString() == "true" ? true : false;
		showPreviewImage = settingsXML.firstChild.attributes.showPreviewImage.toString() == "true" ? true : false;
		showFullScreenButton = settingsXML.firstChild.attributes.showFullScreenButton.toString() == "true" ? true : false;
		showShare = settingsXML.firstChild.attributes.showShare.toString() == "true" ? true : false;
		showMiddlePlayButton = settingsXML.firstChild.attributes.showMiddlePlayButton.toString() == "true" ? true : false;
		spaceKeyListener = settingsXML.firstChild.attributes.spaceKeyListener.toString() == "true" ? true : false;
		clickListener = settingsXML.firstChild.attributes.clickListener.toString() == "true" ? true : false;
		
		if (settingsXML.firstChild.attributes.watermarkPath.toString().indexOf("http:") != -1) {
			watermarkPath = settingsXML.firstChild.attributes.watermarkPath.toString();
		}else {
			watermarkPath = playerPath + settingsXML.firstChild.attributes.watermarkPath.toString();
		}
		watermarkLink = settingsXML.firstChild.attributes.watermarkLink.toString();
		showWatermark = settingsXML.firstChild.attributes.showWatermark.toString() == "true" ? true : false;
		totalTime = Number(settingsXML.firstChild.attributes.totalTime.toString());
		//END
		
		init();
	}
	
	private function init():Void {
		//BEGIN: Set the important movieclips from player for easier access in the future
		playPauseMC = controlsMC.playPauseMC;
		stopMC = controlsMC.stopBtn;
		timelineMC = controlsMC.timelineMC;
		timesMC = controlsMC.timesMC;
		fullScreenMC = controlsMC.fullScreenBtn;
		shareBtnMC = controlsMC.shareBtn;
		shareMC = shareDisplayMC;
		volumeMC = controlsMC.volumeMC;
		controlsBckMC = controlsMC.controlsBckMC;
		videoDisplay = displayMC.videoDisplay;
		videoDisplay.smoothing = true;
		//END
		
		var aspectRatioArray:Array = aspectRatio.split(":");
		flvWidth = aspectRatioArray[0];
		flvHeight = aspectRatioArray[1];
		
		volumeMC.volumeScrubBtn._x = volumeMC.maskBarMC._x = Math.floor(volume / 100 * (volumeMC.volumeWedgeMC._width - 8)  + volumeMC.volumeWedgeMC._x + 4);
		
		playPauseMC.pauseBtn._visible = false;
		
		//BEGIN: Set the mouse actions for controls buttons
		playPauseMC.playBtn.onRelease = playPauseMC.pauseBtn.onRelease = Delegate.create(this, togglePlayPause);
		
		stopMC.onRelease = Delegate.create(this, stopRelease);
		
		middlePlayBtn.onRelease = Delegate.create(this, togglePlayPause);
		
		var stageListener:Object = new Object();
		if(autoResize){
			stageListener.onResize = Delegate.create(this, stageResize);
			
			mWidth = Stage.width;
			mHeight = Stage.height;
		}else {
			mWidth = playerWidth;
			mHeight = playerHeight;
		}
		
		if (showFullScreenButton){
			fullScreenMC.goFullScreenBtn.onRelease = Delegate.create(this, goFullScreen);
			fullScreenMC.goNormalScreenBtn.onRelease = Delegate.create(this, goFullScreen);
			
			fullScreenMC.goNormalScreenBtn._visible = false;
			
			stageListener.onFullScreen = Delegate.create(this, fullScreenEvent);
		}else {
			fullScreenMC._visible = false;
		}
		
		Stage.addListener(stageListener);
		
		if (showShare) {
			Share.getInstance().init();
			
			shareBtnMC.onRelease = Delegate.create(this, openShare);
		}else {
			shareBtnMC._visible = false;
		}

		volumeMC.volumeScrubBtn.onPress = Delegate.create(this, dragVol);
		volumeMC.volumeScrubBtn.onRelease = volumeMC.volumeScrubBtn.onReleaseOutside = Delegate.create(this, stopDragVol);
		volumeMC.volumeWedgeMC.onPress = Delegate.create(this, dragVol);
		volumeMC.volumeWedgeMC.onRelease = volumeMC.volumeWedgeMC.onReleaseOutside = Delegate.create(this, stopDragVol);
		volumeMC.speakerBtn.onPress = Delegate.create(this, muteVol);
		
		timelineMC.scrubBtn.onPress = Delegate.create(this, dragScrub);
		timelineMC.scrubBtn.onRelease = timelineMC.scrubBtn.onReleaseOutside = Delegate.create(this, stopDragScrub);
		timelineMC.progressBarMC.onPress = Delegate.create(this, dragScrub);
		timelineMC.progressBarMC.onRelease = timelineMC.progressBarMC.onReleaseOutside = Delegate.create(this, stopDragScrub);
		//END
		
		if (flv.indexOf("youtube.com/") != - 1) {// Check if the file is from YouTube
			getLink();
		}else {
			loadVideo();
		}
		
		if (showWatermark) {
			var mcLoader:MovieClipLoader = new MovieClipLoader();
			var mcLoaderListener:Object = new Object();
			mcLoaderListener.onLoadInit = Delegate.create(this, watermarkLoaded);
			mcLoader.addListener(mcLoaderListener);
			mcLoader.loadClip(watermarkPath, watermarkMC._target);			
		}
		
		if (showPreviewImage) {
			var mcLoader1:MovieClipLoader = new MovieClipLoader();
			var mcLoaderListener1:Object = new Object();
			mcLoaderListener1.onLoadInit = Delegate.create(this, previewImageLoaded);
			mcLoader1.addListener(mcLoaderListener1);
			mcLoader1.loadClip(previewImage, previewImageMC._target);
		}
		
		resizePlayer(mWidth, mHeight);
		
		videoDisplay._visible = false;
	}
	
	private function stageResize():Void {
		resizePlayer(Stage.width, Stage.height);
	}
	
	private function previewImageLoaded():Void {
		var proc1:Number = previewImageMC._width / mWidth;
		var proc2:Number = previewImageMC._height / (mHeight - controlsBckMC._height);
		if (proc1 > proc2) {
			previewImageMC._width = mWidth;
			previewImageMC._yscale = previewImageMC._xscale;
		}else {
			previewImageMC._height = (mHeight - controlsBckMC._height);
			previewImageMC._xscale = previewImageMC._yscale;
		}
		previewImageMC._x = Math.floor((mWidth - previewImageMC._width) / 2);
		previewImageMC._y = Math.floor((mHeight - controlsBckMC._height - previewImageMC._height) / 2);
		
		if (!metaDataLoaded) {
			previewImageMC._alpha = 0;
		}
	}
	
	private function watermarkLoaded():Void {
		if (!metaDataLoaded) {
			watermarkMC._visible = false;
		}
		watermarkMC._x = displayMC._x + displayMC._width - watermarkMC._width - 10;
		watermarkMC._y = displayMC._y + displayMC._height - watermarkMC._height - 10;
		watermarkMC.onRelease = Delegate.create(this, watermarkRelease);
	}
	
	private function watermarkRelease():Void {
		getURL(watermarkLink, "_blank");
	}
	
	
	
	//---------------------- FullScreen Functions -------------------------------------<
	private function goFullScreen():Void {
		Stage["displayState"] = Stage["displayState"] == "normal" ? "fullScreen" : "normal";
	}
	
	private function fullScreenEvent(pState:Boolean):Void{
		if (pState) {
			fullScreenMC.goFullScreenBtn._visible = false;
			fullScreenMC.goNormalScreenBtn._visible = true;
			
			resizePlayer(Stage.width, Stage.height);
		}else {
			fullScreenMC.goFullScreenBtn._visible = true;
			fullScreenMC.goNormalScreenBtn._visible = false;
			
			if (autoResize){
				resizePlayer(Stage.width, Stage.height);
			}else {
				resizePlayer(playerWidth, playerHeight);
			}
		}
	}
	//---------------------------------------------------------------------------------<
	
	
	
	//-------------------------- Resize Functions -------------------------------------<
	/**
	 * This function can be called when the stage changing or anytime you want
	 * to rearrange the controls and resize the video area
	 * @param	pWidth
	 * @param	pHeight
	 */
	private function resizePlayer(pWidth:Number, pHeight:Number):Void {
		mWidth = pWidth;
		mHeight = pHeight;
		
		controlsMC._y = mHeight - controlsBckMC._height;
		controlsBckMC.controlsBck2._width = mWidth;
		controlsBckMC.controlsBck1.controlsBck1Middle._width = mWidth - 20;
		controlsBckMC.controlsBck1.controlsBck1Right._x = mWidth - 10;
		
		//BEGIN: Draw border around controls background
		controlsMC.controlsBrd.clear();
		controlsMC.controlsBrd.lineStyle(1, 0x000000, 100, true, "none", "square", "miter", 1);
		controlsMC.controlsBrd.moveTo(0, 0);
		controlsMC.controlsBrd.lineTo(mWidth - 1, 0);
		controlsMC.controlsBrd.lineTo(mWidth - 1, controlsMC._height - 1);
		controlsMC.controlsBrd.lineTo(0, controlsMC._height - 1);
		controlsMC.controlsBrd.lineTo(0, 0);
		//END
		
		playPauseMC._x = controlsPadding;
		stopMC._x = playPauseMC._x + playPauseMC._width + 2;
		timelineMC._x = stopMC._x + stopMC._width + controlsPadding;
		
		var lastX:Number = mWidth;
		
		if (showShare) {
			shareBtnMC._x = Math.floor(mWidth - controlsPadding - shareBtnMC._width);
			lastX = shareBtnMC._x;
		}
		
		if(showFullScreenButton){
			fullScreenMC._x = Math.floor(lastX - controlsPadding - fullScreenMC._width);
			lastX = fullScreenMC._x;
		}
		
		volumeMC._x = Math.floor(lastX - controlsPadding - 74);		
		timesMC._x = Math.floor(volumeMC._x - controlsPadding - timesMC._width);
		
		timelineMC.timelineBck._width = Math.floor(mWidth - timelineMC._x - (mWidth - timesMC._x) - controlsPadding);
		var proc:Number = Math.floor(stream_ns.time) / totalTime;
		timelineMC.scrubBtn._x = timelineMC.scrubBarMC._width = timelineMC.timelineBck._width * proc;
		
		checkBytesLoaded();
		
		//BEGIN: Draw border around progress bar background
		timelineMC.timelineBrd.clear();
		timelineMC.timelineBrd.lineStyle(1, 0x353535, 100, true, "none", "square", "miter", 1);
		timelineMC.timelineBrd.moveTo(0, 0);
		timelineMC.timelineBrd.lineTo(timelineMC.timelineBck._width, 0);
		timelineMC.timelineBrd.lineTo(timelineMC.timelineBck._width, timelineMC.timelineBck._height);
		timelineMC.timelineBrd.lineTo(0, timelineMC.timelineBck._height);
		timelineMC.timelineBrd.lineTo(0, 0);
		//END
		
		if (metaDataLoaded){
			//BEGIN: Resize the video
			if (keepAspectRatio) {
				setSizes(displayMC, mWidth, mHeight - controlsBckMC._height);
			}else {
				videoDisplay._width = mWidth;
				videoDisplay._height = mHeight - controlsMC._height;
			}
			//END
			
			clickableAreaMC._width = mWidth;
			clickableAreaMC._height = mHeight - controlsBckMC._height;
			
			if (showWatermark) {
				watermarkMC._x = displayMC._x + displayMC._width - watermarkMC._width - 10;
				watermarkMC._y = displayMC._y + displayMC._height - watermarkMC._height - 10;
			}
			
			if (showPreviewImage) {
				var proc1:Number = previewImageMC._width / mWidth;
				var proc2:Number = previewImageMC._height / (mHeight - controlsBckMC._height);
				if (proc1 > proc2) {
					previewImageMC._width = mWidth;
					previewImageMC._yscale = previewImageMC._xscale;
				}else {
					previewImageMC._height = (mHeight - controlsBckMC._height);
					previewImageMC._xscale = previewImageMC._yscale;
				}
				previewImageMC._x = Math.floor((mWidth - previewImageMC._width) / 2);
				previewImageMC._y = Math.floor((mHeight - controlsBckMC._height - previewImageMC._height) / 2);
			}
			
			if (showShare) {
				shareMC._x = Math.floor(mWidth / 2);
				shareMC._y = Math.floor(mHeight / 2);
				
				if (shareMC._visible) {
					shareMC.shareBckMC._width = Stage.width;
					shareMC.shareBckMC._height = Stage.height;
				}
			}
			
			if (showMiddleBtn) {
				middlePlayBtn._x = Math.floor((mWidth) / 2);
				middlePlayBtn._y = Math.floor((mHeight - controlsMC._height) / 2);
			}
		}else {
			preloaderMC._x = Math.floor((mWidth - preloaderMC._width) / 2);
			preloaderMC._y = Math.floor((mHeight - preloaderMC._height) / 2);
		}
	}
	
	/**
	 * This function calculate the max values of video that can have to fit in the available space
	 * and set it to the properly coordonates
	 */
	function setSizes(pMC:MovieClip, newWidth:Number, newHeight:Number):Void {
		var currWidth:Number = pMC._width;
		var currHeight:Number = pMC._height;
		
		var proc1:Number = newWidth / flvWidth;
		var proc2:Number = newHeight / flvHeight;
		
		if (proc1 > proc2) {
			pMC._height = newHeight;
			pMC._xscale = pMC._yscale;
		}else{
			pMC._width = newWidth;
			pMC._yscale = pMC._xscale;
		}
			
		pMC._x = Math.floor((newWidth - pMC._width)/2);
		pMC._y = Math.floor((newHeight - pMC._height) / 2);
	}
	//---------------------------------------------------------------------------------<
	
	
	
	//------------------------------ Generate Link ------------------------------------<
	/**
	 * Get the link header for extracting the video_id and t parameters for YouTube videos
	 */
	private function getLink():Void {
		youtubeData = this.createEmptyMovieClip ("youtubeData", getNextHighestDepth ());
		
		if (flv.indexOf("watch") != - 1) {
			flv = "http://www.youtube.com/watch?v=" + flv.split("youtube.com/watch?v=")[1];
		}else {
			flv = "http://www.youtube.com/watch?v=" + flv.split("youtube.com/v/")[1];
		}
		
		youtubeData.onData = Delegate.create(this, linkResult);
		youtubeData.loadVariables(playerPath + "getLink.php?link=" + escape(flv), "GET");
	}
	
	/**
	 * Extracting video_id and t parameters from YouTube links and create the new path for the video that we need to play
	 * @param	pLink
	 */
	private function linkResult():Void {
		flv = "http://cache.googlevideo.com/get_video?video_id=" + youtubeData.video_id + "&t=" + youtubeData.t +"&origin=youtube.com";
		
		loadVideo();
	}
	//---------------------------------------------------------------------------------<
	
	
	
	private function loadVideo():Void {
		connection_nc = new NetConnection();
		connection_nc.connect(null);
		stream_ns = new NetStream(connection_nc);
		stream_ns.setBufferTime(5);
		
		videoDisplay.attachVideo(stream_ns);		
		volumeMC.attachAudio(stream_ns);
		flvSnd = new Sound(volumeMC);
			
		stream_ns.onMetaData = Delegate.create(this, flvOnMetaData);
		stream_ns.onStatus = Delegate.create(this, checkStatus);
		stream_ns.play(flv);
		
		volumeMC.volumeScrubBtn._x = volumeMC.maskBarMC._x = Math.floor((volume / 100 ) * (volumeMC.volumeWedgeMC._width - 8)) + volumeMC.volumeWedgeMC._x + 4;
		flvSnd.setVolume(volume);
		volumeMC.speakerBtn.gotoAndStop(Math.round(volume / 33) + 1);
		
		bytesLoadedInterval = setInterval(this, "checkBytesLoaded", 10);
	}
	
	private function checkStatus(infoObject:Object) {
		if (!metaDataLoaded && infoObject["code"] != "NetStream.Play.Start") {
			flvOnMetaData();
		}
	}
	
	private function checkBytesLoaded():Void {
		var pctLoaded:Number = stream_ns.bytesLoaded / stream_ns.bytesTotal;
		timelineMC.progressBarMC._width = Math.floor(pctLoaded * (timelineMC.timelineBck._width - 3));
		if (pctLoaded >= 1) {
			clearInterval(bytesLoadedInterval);
		}
	}
	
	private function flvOnMetaData(infoObject:Object):Void {
		if (!metaDataLoaded) {
			clickableAreaMC._width = mWidth;
			clickableAreaMC._height = mHeight - controlsBckMC._height;
			
			if (keepAspectRatio){
				if (infoObject["width"] != undefined) {
					flvWidth = infoObject["width"];
					flvHeight = infoObject["height"];
				}
				
				videoDisplay._width = flvWidth;
				videoDisplay._height = flvHeight;
				
				setSizes(displayMC, mWidth, mHeight - controlsBckMC._height);
			}else {
				videoDisplay._width = mWidth;
				videoDisplay._height = mHeight - controlsBckMC._height;
				
				displayMC._x = 0;
				displayMC._y = 0;
			}
			
			if (showWatermark) {
				watermarkMC._x = displayMC._x + displayMC._width - watermarkMC._width - 10;
				watermarkMC._y = displayMC._y + displayMC._height - watermarkMC._height - 10;
				
				watermarkMC._visible = true;
			}
			
			if (showShare) {
				shareMC._x = Math.floor(mWidth / 2);
				shareMC._y = Math.floor(mHeight / 2);
			}
			
			if (showMiddleBtn) {
				middlePlayBtn._x = Math.floor((mWidth) / 2);
				middlePlayBtn._y = Math.floor((mHeight - controlsMC._height) / 2);
			}
			
			if (infoObject["duration"] != undefined) {
				totalTime = Math.floor(infoObject["duration"]);
			}
			
			var seconds:String = String(Math.floor(totalTime)%60);
			var minutes:String = String(Math.floor(totalTime - Number(seconds)) / 60);
			if (seconds.length == 1) {
				seconds = "0" + seconds;
			}
			if (minutes.length == 1) {
				minutes = "0" + minutes;
			}
			timesMC.totalTimeBox.text = minutes + ":" + seconds;
			
			if (spaceKeyListener) {
				var keyListener:Object = new Object();
				keyListener.onKeyDown = Delegate.create(this, checkSpacePress);
				Key.addListener(keyListener);
			}
			
			if (clickListener) {
				clickableAreaMC.onPress = Delegate.create(this, displayPress);
				clickableAreaMC.useHandCursor = false;
			}
			
			this.controlsMC._visible = true;
			this.preloaderMC._visible = false;
			
			stream_ns.pause();
			if (autoPlay) {
				togglePlayPause();
				videoDisplay._visible = true;
			}else {
				showMiddleBtn();
				displayPreviewImage();
			}
		}else {
			if (!loop) {
				showMiddleBtn();
				displayPreviewImage();
				if (playPauseMC.pauseBtn._visible) {
					togglePlayPause();
				}
			}
		}
		
		metaDataLoaded = true;
	}
	
	private function stopRelease():Void {
		stream_ns.seek(0);
		stream_ns.pause(true);
		playPauseMC.pauseBtn._visible = false;
		playPauseMC.playBtn._visible = true;
		
		showMiddleBtn();
		displayPreviewImage();
		
		clearInterval(scrubPosInterval);
		
		timesMC.elapsedTimeBox.text = "00:00";
		timelineMC.scrubBtn._x = 4;
	}
	
	public function togglePlayPause():Void {
		stream_ns.pause();
		playPauseMC.pauseBtn._visible = !playPauseMC.pauseBtn._visible;
		playPauseMC.playBtn._visible = !playPauseMC.playBtn._visible;
		
		if (playPauseMC.pauseBtn._visible) {
			hidePreviewImage();
			hideMiddleBtn();
			
			var proc:Number = (timelineMC.scrubBtn._x - 4)/ (timelineMC.timelineBck._width - 7);
			if (proc == 1) {
				stream_ns.seek(0);
			}
			clearInterval(scrubPosInterval);
			scrubPosInterval = setInterval(this, "scrubPos", 10);
		}else {
			showMiddleBtn();
			
			clearInterval(scrubPosInterval);
		}
	}
	
	
	
	//---------------------------- Volume Functions -----------------------------------<
	private function dragVol():Void {
		volumeInterval = setInterval(this, "setVol", 10);
	}
	
	private function stopDragVol():Void {
		clearInterval(volumeInterval);
	}
	
	private function setVol():Void {
		if (volumeMC._xmouse < volumeMC.volumeWedgeMC._x + 4) {
			volumeMC.volumeScrubBtn._x = volumeMC.maskBarMC._x = volumeMC.volumeWedgeMC._x + 4;
		}else if (volumeMC._xmouse > volumeMC.volumeWedgeMC._x + volumeMC.volumeWedgeMC._width - 4) {
			volumeMC.volumeScrubBtn._x = volumeMC.maskBarMC._x = volumeMC.volumeWedgeMC._x + volumeMC.volumeWedgeMC._width - 4;
		}else {
			volumeMC.volumeScrubBtn._x = volumeMC.maskBarMC._x = volumeMC._xmouse;
		}
		var pVolume = (volumeMC.volumeScrubBtn._x -  volumeMC.volumeWedgeMC._x - 4)/ (volumeMC.volumeWedgeMC._width - 8) * 100;
		flvSnd.setVolume(pVolume);
		if (pVolume == 0){
			volumeMC.speakerBtn.gotoAndStop(5);
		}else {
			volumeMC.speakerBtn.gotoAndStop(Math.round(pVolume / 33) + 1);
		}
	}
	
	private function muteVol():Void {
		if (volumeMC.speakerBtn._currentframe != 5) {
			volumeMC.volumeScrubBtn._x = volumeMC.maskBarMC._x = volumeMC.volumeWedgeMC._x + 4;
			volume = flvSnd.getVolume();
			flvSnd.setVolume(0);
			volumeMC.speakerBtn.gotoAndStop(5);
		}else {
			volumeMC.volumeScrubBtn._x = volumeMC.maskBarMC._x = Math.floor((volume / 100 ) * (volumeMC.volumeWedgeMC._width - 8)) + volumeMC.volumeWedgeMC._x + 4;
			flvSnd.setVolume(volume);
			volumeMC.speakerBtn.gotoAndStop(Math.round(volume / 33) + 1);
		}
	}
	//---------------------------------------------------------------------------------<
	
	
	
	//---------------------------- Scrub Functions ------------------------------------<
	private function dragScrub():Void {
		hidePreviewImage();
		timelineMC.scrubBtn._x = timelineMC._xmouse;
		if (playPauseMC.pauseBtn._visible) {
			togglePlayPause();
			wasPlaying = true;
		}else {
			wasPlaying = false;
		}
		timelineMC.scrubBtn.startDrag(false, 4, timelineMC.scrubBtn._y, timelineMC.progressBarMC._width, timelineMC.scrubBtn._y);
		
		clearInterval(bytesLoadedInterval);
		clearInterval(progressPosInterval);
		progressPosInterval = setInterval(this, "progressPos", 10);
	}
	
	private function progressPos():Void {
		timelineMC.scrubBarMC._width = timelineMC.scrubBtn._x;
		var proc:Number = (timelineMC.scrubBtn._x - 4) / (timelineMC.timelineBck._width - 7);
		stream_ns.seek(Math.floor(totalTime * proc));
		stream_ns.pause(true);
		setElapsedTime();
	}
	
	private function stopDragScrub():Void {
		timelineMC.scrubBtn.stopDrag();
		clearInterval(progressPosInterval);
		if (wasPlaying) {
			togglePlayPause();
		}
		
		if (timelineMC.progressBarMC._width < timelineMC.timelineBck._width - 3) {
			bytesLoadedInterval = setInterval(this, "checkBytesLoaded", 10);
		}
	}
	
	private function scrubPos():Void {
		var proc:Number = stream_ns.time / totalTime;
		timelineMC.scrubBtn._x = timelineMC.scrubBarMC._width = Math.floor((timelineMC.timelineBck._width - 7) * proc) + 4;

		if (int(proc) == 1) {
			stream_ns.seek(0);
			if (!loop) {
				togglePlayPause();
				
				timesMC.elapsedTimeBox.text = "00:00";
				timelineMC.scrubBtn._x = 4;
			}
		}else {
			setElapsedTime();
		}
	}
	//---------------------------------------------------------------------------------<
	
	
	
	//----------------------------- Middle and Preview Image Functions ----------------<
	private function displayPreviewImage():Void {
		if (showPreviewImage && !shareMC._visible){
			videoDisplay._visible = false;
			tween3.stop();
			tween3 = new Tween(this.previewImageMC, "_alpha", Regular.easeInOut, this.previewImageMC._alpha, 100, 0.4, true);
		}else {
			videoDisplay._visible = true;
		}
	}
	private function hidePreviewImage():Void {
		if (showPreviewImage && !shareMC._visible){
			videoDisplay._visible = true;
			tween3.stop();
			tween3 = new Tween(this.previewImageMC, "_alpha", Regular.easeInOut, this.previewImageMC._alpha, 0, 0.4, true);
		}
	}
	
	private function showMiddleBtn():Void {
		if (showMiddlePlayButton && !shareMC._visible){
			tween1.stop();
			tween1 = new Tween(this.middlePlayBtn, "_width", Elastic.easeInOut, this.middlePlayBtn._width, 80, 1, true);
			tween2.stop();
			tween2 = new Tween(this.middlePlayBtn, "_height", Elastic.easeInOut, this.middlePlayBtn._height, 80, 1, true);
		}
	}
	
	private function hideMiddleBtn():Void {
		if (showMiddlePlayButton && !shareMC._visible){
			tween1.stop();
			tween1 = new Tween(this.middlePlayBtn, "_width", Elastic.easeInOut, this.middlePlayBtn._width, 0, 1, true);
			tween2.stop();
			tween2 = new Tween(this.middlePlayBtn, "_height", Elastic.easeInOut, this.middlePlayBtn._height, 0, 1, true);
		}
	}
	//---------------------------------------------------------------------------------<
	
	
	
	private function setElapsedTime():Void {
		var proc:Number = stream_ns.time / totalTime;
		var seconds:String = String(Math.floor(totalTime * proc)%60);
		var minutes:String = String(Math.floor(totalTime * proc - Number(seconds)) / 60);
		if (seconds.length == 1) {
			seconds = "0" + seconds;
		}
		if (minutes.length == 1) {
			minutes = "0" + minutes;
		}
		if (!isNaN(seconds) && !isNaN(minutes)){
			timesMC.elapsedTimeBox.text = minutes + ":" + seconds;
		}
	}
	
	private function checkSpacePress():Void {
		if (Key.isDown(Key.SPACE)) {
			togglePlayPause();
		}
	}
	
	private function displayPress():Void {
		togglePlayPause();
	}
	
	private function openShare():Void {
		shareDisplayMC.show();
	}
	
	public function get getPlayerPath():String {
		return playerPath;
	}
	
	public function get getPlayerPage():String {
		return playerPage;
	}
	
	public function get getStafImage():String {
		return stafImage;
	}
	
	public function get getPauseBtn():MovieClip {
		return playPauseMC.pauseBtn;
	}
}