
// checks that an input string looks like a valid email address.
var isEmail_re = /^\s*[\w\-\+_]+(\.[\w\-\+_]+)*\@[\w\-\+_]+\.[\w\-\+_]+(\.[\w\-\+_]+)*\s*$/;

var isAlnum_re = /^([a-z 0-9])+$/i;

var isChar_re = /^([a-z])+$/i;

var isTime_re = /^([01]?[0-9]|2[0-3])[:][0-5][0-9]$/;/*[:][0-5][0-9]*/

var isUrl_re = /^(([\w]+:)?\/\/)?(([\d\w]|%[a-fA-f\d]{2,2})+(:([\d\w]|%[a-fA-f\d]{2,2})+)?@)?([\d\w][-\d\w]{0,253}[\d\w]\.)+[\w]{2,4}(:[\d]+)?(\/([-+_~.\d\w]|%[a-fA-f\d]{2,2})*)*(\?(&?([-+_~.\d\w]|%[a-fA-f\d]{2,2})=?)*)?(#([-+_~.\d\w]|%[a-fA-f\d]{2,2})*)?$/;

var isInt_re = /^[0-9]+$/;

var isDecimal_re = /^[0-9]+\.[0-9]+$/;

var isTags_re = /<\/?[^>]+>/gi;

var isPhone_re = /^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}/;

var isPan_re = /^([a-zA-Z]){5}([0-9]){4}([a-zA-Z]){1}?$/;

var isZip_re = /^[0-9A-Za-z]{5,10}$/;

var isAbn_re = /^((\d){2,3}(\s)?){4}$/;

var isValid_price = /^([1-9][0-9]*|0)(\.[0-9]{2})?$/i;

var isUserType_re = /^[IC]{1}$/;

var isFax_re = /^[0-9\s\.()\-+\,]{8,20}$/;

var is_Alnumdas_re = /^[a-zA-Z\s0-9]+([\.\,_-]|[a-zA-Z\s0-9])+$/;/*/[^a-zA-Z0-9\s\p{P}]/*/

var is_Text_re = /^[\x00-\x7F]*$/;/*  /^[a-z A-Z0-9.,:;]+$/*/

//var is_Price_re = /^([1-9][0-9]*|0)(\.[0-9]{2})?$/i;

var is_Website_re = /^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$/;

var is_Date_re = /^(19|20)\d\d[-](0[1-9]|1[012])[-](0[1-9]|[12][0-9]|3[01])$/;

var lat_lang_re = /^-?([0-8]?[0-9]|90)\.[0-9]{1,6},-?((1?[0-7]?|[0-9]?)[0-9]|180)\.[0-9]{1,6}$/;

var is_password_reg = /^(?=.*\d)(?=.*[A-Za-z])[0-9A-Za-z!@#$%]{6,15}$/;


function validatePhone(txtPhone) {
    var filter = /^((\+[1-9]{1,4}[ \-]*)|(\([0-9]{2,3}\)[ \-]*)|([0-9]{2,4})[ \-]*)*?[0-9]{3,4}?[ \-]*[0-9]{3,4}?$/;
    if (filter.test(txtPhone)) {
        return true;
    }
    else {
        return false;
    }
}

function is_valid_password(s){
    return String(s).search(is_password_reg) != -1;
}

function is_Date(s) {
    return String(s).search(is_Date_re) != -1;
}

function is_Pan(s) {
    return String(s).search(isPan_re) != -1;
}

function isEmail(s)
{
    return String(s).search(isEmail_re) != -1;
}

function isGeocord(s)
{
    return lat_lang_re.test(s);
}



function isPrice(s)
{
    return String(s).search(isValid_price) != -1;
}

function isAlphaNumeric(s)
{
    return String(s).search(isAlnum_re) != -1;
}

function isValidZip(s) {
    return String(s).search(isZip_re) != -1;
}

function isValidFax(s) {
    return String(s).search(isFax_re) != -1;
}

function isValidAbn(s) {
    return String(s).search(isAbn_re) != -1;
}

function isPhone(s)
{
    return String(s).search(isPhone_re) != -1;
}

function isCharacter(s)
{
    return String(s).search(isChar_re) != -1;
}
function isInteger(s)
{
    return (s.toString().search(isInt_re) != -1);
}

function isDecimal(s)
{
    return (s.toString().search(isDecimal_re) == 0);
}

// Check if string is non-blank
var isNonblank_re = /\S/;
function isNonblank(s)
{
    return String(s).search(isNonblank_re) != -1
}

// Check if string is a whole number(digits only).
var isWhole_re = /^\s*\d+\s*$/;
function isWhole(s)
{
    return String(s).search(isWhole_re) != -1
}

// check 0-9 digit
function regIsDigit(fData)
{
    var reg = new RegExp("^[0-9]$");
    return (reg.test(fData));
}


function isTime(s)
{
    return String(s).search(isTime_re) != -1;
}


function isUrl(s)
{
    return String(s).search(is_Website_re) != -1;
}

function is_Alnumdas(s)
{
    return String(s).search(is_Alnumdas_re) != -1;
}

function is_Text(s)
{
    return String(s).search(is_Text_re) != -1;
}

function stripTags(s)
{
    return String(s).replace(/<\/?[^>]+>/gi, '');
}

function keyValid(e, validchars)
{
    var key = '', keychar = '';
    key = getKeyCode(e);
    if (key == null)
        return true;

    keychar = String.fromCharCode(key);
    keychar = keychar.toLowerCase();
    validchars = validchars.toLowerCase();
    if (validchars.indexOf(keychar) != -1)
        return true;
    if (key == null || key == 0 || key == 8 || key == 9 || key == 13 || key == 27)
        return true;
    return false;
}


function keyRestrict(e, validchars)
{
    var key = '', keychar = '';
    key = getKeyCode(e);
    if (key == null)
        return true;
    keychar = String.fromCharCode(key);
    keychar = keychar.toLowerCase();
    validchars = validchars.toLowerCase();
    if (validchars.indexOf(keychar) == -1)
        return true;
    if (key == null || key == 0 || key == 8 || key == 9 || key == 13 || key == 27)
        return true;
    return false;
}

function getKeyCode(e)
{
    if (window.event)
        return window.event.keyCode;
    else if (e)
        return e.which;
    else
        return null;
}









/*
 *  this function escape all the necessary characters
 */
function regex_escape(str) {
    return str.replace(new RegExp('[.\\\\+*?\\[\\^\\]$(){}=!<>|:\\-]', 'g'), '\\$&');
}