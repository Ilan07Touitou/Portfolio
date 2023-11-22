function resultat(){
    var P1 = document.getElementById("A1P").value;
    var P2 = document.getElementById("A2P").value;
    var P3 = document.getElementById("A3P").value;

    var Q1 = document.getElementById("A1Q").value;
    var Q2 = document.getElementById("A2Q").value;
    var Q3 = document.getElementById("A3Q").value;

    var R1 = Number(P1)*Number(Q1);
    var R2 = Number(P2)*Number(Q2);
    var R3 = Number(P3)*Number(Q3);

    var RTOT = Number(R1)+Number(R2)+Number(R3);
    
    A1R.value=R1;
    A2R.value=R2;
    A3R.value=R3;

    RTOTAL.value=RTOT;

}