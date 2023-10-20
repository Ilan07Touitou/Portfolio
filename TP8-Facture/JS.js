function resultat(){

    var P1 = document.getElementById("A1P").value;
    var Q1 = document.getElementById("A1Q").value;
    var P2 = document.getElementById("A2P").value;
    var Q2 = document.getElementById("A2Q").value;
    var P3 = document.getElementById("A3P").value;
    var Q3 = document.getElementById("A3Q").value;

    var R1 = Number(A1P)*Number(A1Q)
    var R2 = Number(A2P)*Number(A2Q)
    var R3 = Number(A3P)*Number(A3Q)

    var RTOT = Number(R1)+Number(R2)+Number(R3)

    A1R.value=R1
    A2R.value=R2
    A3R.value=R3

    RTOTAL.value=RTOT

    

}