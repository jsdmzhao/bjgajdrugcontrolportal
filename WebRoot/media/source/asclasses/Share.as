/**
* ...
* @author Bogdan Nitica - bnitica@gmail.com
* @version 1.1
*/
import mx.utils.Delegate;
import flash.external.ExternalInterface;
import asclasses.VideoPlayer;
import mx.transitions.easing.Regular;
import mx.transitions.Tween;

class asclasses.Share extends MovieClip {
	private static var mInstance:Share;
	
	private var shareBckMC:MovieClip;
	private var shareBoxMC:MovieClip;
	private var responseMC:MovieClip;
	
	private var wasPlaying:Boolean;
	
	private var tween1:Tween;
	private var tween2:Tween;
	private var tween3:Tween;
	private var tween4:Tween;
	
	public static function getInstance():Share {
		if (mInstance == undefined) {
			mInstance = new Share();
		}
		return mInstance;
	}
	
	private function Share() {
		mInstance = this;
		this._visible = false;
		shareBckMC.onRelease = Delegate.create(this, close);
		shareBckMC.useHandCursor = false;
		
		shareBoxMC.closeBtn.onRelease = Delegate.create(this, close);
		shareBoxMC.linkBtn.onRelease = Delegate.create(this, linkRelease);
		shareBoxMC.embedBtn.onRelease = Delegate.create(this, embedRelease);
		shareBoxMC.sendBtn.onRelease = Delegate.create(this, sendRelease);
		
		responseMC = this.createEmptyMovieClip ("responseMC", getNextHighestDepth ());
		responseMC.onData = Delegate.create(this, responseResult);
	}
	
	public function init():Void {
		shareBoxMC.linkTxt.text = VideoPlayer.getInstance().getPlayerPage;
		
		shareBoxMC.embedTxt.text = '<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0" width="550" height="400" id="videoPlayer" align="middle">\n';
		shareBoxMC.embedTxt.text += '	<param name="allowScriptAccess" value="sameDomain" />\n';
		shareBoxMC.embedTxt.text += '	<param name="allowFullScreen" value="true" />\n';
		shareBoxMC.embedTxt.text += '	<param name="movie" value="' + _root._url + '" />\n';
		shareBoxMC.embedTxt.text += '	<param name="quality" value="high" />\n';
		shareBoxMC.embedTxt.text += '	<param name="bgcolor" value="#000000" />\n';
		shareBoxMC.embedTxt.text += '	<param name="flashvars" value="htmlPage=' + _root.htmlPage + '&settingsFile=' + _root.settingsFile + '" />\n';
		shareBoxMC.embedTxt.text += '	<embed src="' + _root._url + '" flashvars="htmlPage=' + _root.htmlPage + '&settingsFile=' + _root.settingsFile + '" quality="high" bgcolor="#000000" width="550" height="400" name="videoPlayer" align="middle" allowScriptAccess="sameDomain" allowFullScreen="true" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />\n';
		shareBoxMC.embedTxt.text += '	</script>\n';
		shareBoxMC.embedTxt.text += '</object>';
	}
	
	private function linkRelease():Void {
		System.setClipboard(shareBoxMC.linkTxt.text);
		Selection.setFocus(shareBoxMC.linkTxt);
	}
	
	private function embedRelease():Void {
		System.setClipboard(shareBoxMC.embedTxt.text);
		Selection.setFocus(shareBoxMC.embedTxt);
	}
	
	private function sendRelease():Void {
		if (validateEmail(shareBoxMC.yourEmailTxt.text)) {
			if (validateEmail(shareBoxMC.friendEmailTxt.text)) {
				var sendLink:String;
				sendLink = VideoPlayer.getInstance().getPlayerPath + "staf.php?";
				sendLink += "playerPath=" + escape(VideoPlayer.getInstance().getPlayerPath);
				sendLink += "&imgPath=" + escape(VideoPlayer.getInstance().getStafImage);
				sendLink += "&playerPage=" + escape(VideoPlayer.getInstance().getPlayerPage);
				sendLink += "&toEmail=" + escape(shareBoxMC.friendEmailTxt.text);
				sendLink += "&fromEmail=" + escape(shareBoxMC.yourEmailTxt.text);
				responseMC.loadVariables(sendLink, "GET");
				shareBoxMC.errorTxt.text = "";
			}else {
				shareBoxMC.errorTxt.text = "Your friend's email is invalid!";
			}
		}else {
			shareBoxMC.errorTxt.text = "Your email is invalid!";
		}
	}
	
	private function responseResult():Void {
		shareBoxMC.errorTxt.text = "Email Sent!";
		
		_global['setTimeout'](this, "clearStaf", 1000);
	}
	
	private function clearStaf():Void {
		shareBoxMC.errorTxt.text = "";
		shareBoxMC.yourEmailTxt.text = "";
		shareBoxMC.friendEmailTxt.text = "";
	}
	
	private function validateEmail(email):Boolean {		
		var emailCorrect = undefined;
		var fstLett = email.substring(0, 1);
		var lastLett = email.substring(email.length, -1);
		var minLettAfterLastPoint = 2;
		var maxLettAfterLastPoint = 4;
		var minLettBeforeAt = 1;
		var maxLettBeforeAt = 20;
		var minLettAfterAt = maxLettAfterLastPoint;
		var firstAt = email.indexOf("@", 0);
		var lastAt = email.lastIndexOf("@", email.length);
		var strBeforeAt = email.substring(0, firstAt);
		var lettBeforeAt = email.charAt(firstAt-1);
		var lettAfterAt = email.charAt(firstAt+1);
		var firstScore = email.indexOf("-", 0);
		var lastScore = email.lastIndexOf("-", email.length);
		var lettBeforeScore = email.charAt(firstScore-1);
		var lettAfterScore = email.charAt(firstScore+1);
		var firstUnderscore = email.indexOf("_", 0);
		var lastUnderscore = email.lastIndexOf("_", email.length);
		var lettBeforeUnderscore = email.charAt(firstUnderscore-1);
		var lettAfterUnderscore = email.charAt(firstUnderscore+1);
		var firstPoint = email.indexOf(".", 0);
		var lastPoint = email.lastIndexOf(".", email.length);
		var lettAfterLastPoint = email.length-lastPoint-1;
		var morePoints = email.indexOf("..", 0);
		var moreScore = email.indexOf("--", 0);
		var extensionScore = email.indexOf("-", lastPoint);
		var extensionUnderscore = email.indexOf("_", lastPoint);
		if (!isNaN(fstLett) || !isNaN(lastLett) || fstLett == "." || fstLett == "-" || fstLett == "_" || lastLett == "." || lastLett == "-" || lastLett == "_" || firstAt == -1 || firstAt>=(email.length-minLettAfterAt) || firstAt == 0 || firstAt !== lastAt || firstPoint == 0 || lastPoint == -1 || lettAfterLastPoint<minLettAfterLastPoint || lettAfterLastPoint>maxLettAfterLastPoint || lettBeforeAt == "." || lettBeforeAt == "_" || lettBeforeAt == "-" || lettBeforeAt == " " || lettAfterAt == "." || lettAfterAt == "_" || lettAfterAt == "-" || lettAfterAt == " " || lettBeforeScore == "." || lettBeforeScore == "_" || lettBeforeScore == "@" || lettAfterScore == "." || lettAfterScore == "_" || lettAfterScore == "@" || lettBeforeUnderscore == "." || lettBeforeUnderscore == "-" || lettBeforeUnderscore == "@" || lettAfterUnderscore == "." || lettAfterUnderscore == "-" || lettAfterUnderscore == "@" || morePoints !== -1 || moreScore !== -1 || extensionScore !== -1 || extensionUnderscore !== -1 || strBeforeAt.length<minLettBeforeAt || strBeforeAt.length>maxLettBeforeAt) {
			emailCorrect = false;
		} else {
			emailCorrect = true;
		}
		return emailCorrect;
	}
	
	public function show():Void {
		tween1.stop();
		tween1 = new Tween(this.shareBckMC, "_width", Regular.easeInOut, 0, Stage.width, 0.3, true);
		tween2.stop();
		tween2 = new Tween(this.shareBckMC, "_height", Regular.easeInOut, 0, Stage.height, 0.3, true);
		
		tween3.stop();
		tween3 = new Tween(this.shareBoxMC, "_width", Regular.easeInOut, 0, 300, 0.3, true);
		tween4.stop();
		tween4 = new Tween(this.shareBoxMC, "_height", Regular.easeInOut, 0, 200, 0.3, true);
		
		this._visible = true;
		
		wasPlaying = VideoPlayer.getInstance().getPauseBtn._visible;
		
		if (wasPlaying) {
			VideoPlayer.getInstance().togglePlayPause();
		}
	}
	
	private function close():Void {
		tween1.stop();
		tween1 = new Tween(this.shareBckMC, "_width", Regular.easeInOut, this.shareBckMC._width, 0, 0.3, true);
		tween2.stop();
		tween2 = new Tween(this.shareBckMC, "_height", Regular.easeInOut, this.shareBckMC._height, 0, 0.3, true);
		
		tween3.stop();
		tween3 = new Tween(this.shareBoxMC, "_width", Regular.easeInOut, this.shareBoxMC._width, 0, 0.3, true);
		tween4.stop();
		tween4 = new Tween(this.shareBoxMC, "_height", Regular.easeInOut, this.shareBoxMC._height, 0, 0.3, true);
		
		_global['setTimeout'](this, "hideStaf", 300);
	}
	
	private function hideStaf():Void {
		this._visible = false;
		
		if (wasPlaying) {
			VideoPlayer.getInstance().togglePlayPause();
		}
	}
	
}