function getOffsetTop (el, p) {
    var _t = el.offsetTop;
    while (el = el.offsetParent) {
        if (el == p) break;
        _t += el.offsetTop;
    }

    return _t;
};
function getOffsetLeft (el, p) {
    var _l = el.offsetLeft;
    while (el = el.offsetParent) {
        if (el == p) break;
        _l += el.offsetLeft;
    }

    return _l;
};
var tt;
var curMenu;
function mouseover (th, menu) {
    if (tt) clearTimeout(tt);
    displayMenu(false);
    menu = document.getElementById('menu' + menu);

    menu.style.left = getOffsetLeft(th) + 'px';
    menu.style.top = getOffsetTop(th) + th.offsetHeight + 'px';

    curMenu = menu;
    displayMenu(true);
}
function mouseout () {
    tt = setTimeout('displayMenu(false)', 200);
}
function _mouseover () {
    if (tt) clearTimeout(tt);
    displayMenu(true);
}
function _mouseout () {
    displayMenu(false);
}
function displayMenu (display) {
    if (curMenu) {
        curMenu.style.display = display ? 'block' : 'none';
    }
}
function doZoom(size){
	document.getElementById('textbody').style.fontSize=size+'px'
}
