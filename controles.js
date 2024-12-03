function verif1() {
  var e = document.getElementById("ep").checked;
  var c = document.getElementById("cr").checked;
  var cpt = document.getElementById("nc").value;
  var cc = document.getElementById("cc").value;
  var s = document.getElementById("s").value;
  if (e == false && c == false) {
    alert("Choix obligatoire");
    return false;
  }
  var ch1 = cpt.substr(0, 4);
  var ch2 = cpt.substr(4, cpt.length);

  if (cpt == "" || !alpha(ch1) || isNaN(ch2) || cpt.find("/") == -1) {
    alert("num compte incorrect");
    return false;
  }
  if (cc == "" || cc.length != 8) {
    alert("cin incorrect");
    return false;
  }
  if (Number(s) >= 0) {
    alert("montant incorrect");
    return false;
  }
  return true;
}
function alpha(ch) {
  var i = 0;
  var ch = ch.toUpperCase(ch);
  while (i < ch.length && ch.charAt(i) <= "Z" && ch.charAt(i) >= "A") {
    i = i + 1;
  }
  return i === ch.length;
}
function verif2() {
  var d = document.getElementById("d").checked;
  var r = document.getElementById("r").checked;
  var m = document.getElementById("m").value;
  var ag = document.getElementById("ag").selectedIndex;
  var nc = document.getElementById("nc").value;
  if (d == false && r == false) {
    alert("Choix obligatoire");
    return false;
  }
  var ch1 = nc.substr(0, 4);
  var ch2 = nc.substr(4, nc.length);
  if (nc == "" || !alpha(ch1) || isNaN(ch2) || nc.find("/") == -1) {
    alert("num compte incorrect");
    return false;
  }
  if (ag == 0) {
    alert("choisissez  ");
    return false;
  }
  if (Number(s) >= 0) {
    alert("montant incorrect");
    return false;
  }
}
