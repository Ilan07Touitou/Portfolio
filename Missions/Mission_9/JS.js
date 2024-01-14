function ajouterLigne() {
    var lastRow = document.getElementById('tbody').rows.length - 1;
    var templateRow = document.getElementById('modeleLigne');
    var newRow = templateRow.cloneNode(true);

    document.getElementById('tbody').insertBefore(newRow, document.getElementById('lastLigne'));
}


function Calculer() {
    var total = 0;

    var listePrix = document.getElementsByClassName("prix");
    var listQuantite = document.getElementsByClassName("quantite");
    var listeTotal = document.getElementsByClassName("total");

    var remise = parseFloat(document.getElementById("remise").value) || 0;
    var imposition = parseFloat(document.getElementById("taxe").value) || 0;
    var expedition = parseFloat(document.getElementById("expedition").value) || 0;

    for (var i = 0; i < listePrix.length; i++) {
        var totalLigne = parseFloat(listQuantite[i].value) * parseFloat(listePrix[i].value);
        listeTotal[i].innerText = totalLigne.toFixed(2);
        total += totalLigne;
    }

    var sous_total = total;
    document.getElementById("sous_total").innerText = sous_total.toFixed(2) + " €";

    var sous_total_remise = (sous_total - remise);
    document.getElementById("sous_total_remise").innerText = sous_total_remise.toFixed(2) + " €";

    var taxe_total = (sous_total * (imposition / 100));
    document.getElementById("taxe_total").innerHTML = taxe_total.toFixed(2);

    var solde_total = sous_total_remise + taxe_total + expedition;
    document.getElementById("solde_du").innerHTML = solde_total.toFixed(2);
}
