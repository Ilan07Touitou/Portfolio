//function test(){document.getElementById("i1").src = "test.html";}
function fonction1(){
    let test = prompt("Bonjour; veuillez saisir une chaine de caractère : ");
    document.body.innerHTML=test; 
}

function fonction1Ilan(){
    var chaine = prompt("Veuillez saisir une phrase : ");
    document.write(chaine.toUpperCase()+"<br>");
    document.write(chaine.toLowerCase()+"<br>");
    document.write("La chaîne contient "+ chaine.length+" caractères "+"<br>");
    document.write("La première lettre est "+chaine.substr(0,1)+ "<br>");

}

function fonction2(){
    let a = 42; 
    let b = 7569;
    let result = a+b;
    alert(result);
}

function fonction2Ilan(){
    let aStr = prompt("Veuillez saisir un premier nombre : ");
    let bStr = prompt("Veuillez saisir un deuxième nombre : ");
    let a = parseFloat(aStr);
    let b = parseFloat(bStr);
    alert("La somme des deux nombres est : "+ (a+b));
}


function fonction3(){
    let Note_de_Maths = 11;
    let Note_de_francais = 9;
    let Note_histoire_geo = 16;
    let moyenne = (Note_de_Maths+Note_de_francais+Note_histoire_geo);
    alert("Votre moyenne est de : "+moyenne);
}
function fonction3Ilan(){
    let nbNotesStr = prompt("Combien de notes souhaitez vous saisir afin d'en faire la moyenne ?");
    let nbNotes = parseInt(nbNotesStr); 
    let notes = [];

    for(let i=0; i<nbNotes; i++){
        let Note=prompt("Veuillez saisir une note : ");
        Note = parseFloat(Note);
        notes.push(Note);
    }

    let somme = 0;
    for(let i = 0; i < notes.length;i++){
        somme+=notes[i];
    }
    let moyenne = somme / notes.length;
    alert("La moyenne de toutes les notes est de :"+moyenne);
}


function fonction4(){
    let budget = 1553.89;
    let achat = 1554.76;
    if(budget>=achat){
        alert("Le budget ("+budget+" €) est suffisant pour réaliser tout vos achats ("+achat+" €)");
    }
    else{
        alert("Le budget ("+budget+" €) n'est pas suffisant pour réaliser tout vos achats ("+achat+" €)");
    }
}
function fonction4Ilan(){
    let Budget = prompt("Veuillez saisir le budget dont vous disposez : ");
    Budget = parseInt(Budget);   

    let Achats = prompt("Veuillez saisir le montant total de vos achats : ");
    Achats = parseInt(Achats);

    if(Achats<= Budget){
        alert("Vous avez le budget nécessaire pour tout acheter, il vous restera : "+(Budget-Achats)+"€");
    }
    else{
        alert("Vous n'avez pas le budget nécessaire. Il vous manque : "+(Achats-Budget)+"€"); 
    }
}

function fonction5(){
    
    let HT=prompt("Quel est le prix de votre article Hors Taxes ?");
    let TTC=HT*1.2; 
    document.body.innerText=TTC; 
}
function fonction5Ilan(){
    let prixHT = prompt("Veuillez saisir le prix de votre article Hors Taxe : ");
    document.body.innerText = ("Le prix de votre article TTC est de : "+prixHT*1.2+"€"); //pourquoi la j'ai pu faire le calcul avec un prompt sans parse alors que dans les exos précédents (la moyenne)
}


function fonction6(){
    let HT = prompt("Quel est le prix de votre article Hors Taxes ?");
    let Taux_Tva = prompt("Quel est le Taux de la TVA ? ");
    Taux_Tva = (Taux_Tva/100)+1; 
    let TTC=HT*Taux_Tva; 
    document.body.innerHTML=TTC; 
}
function fonction6Ilan(){
    let prixHT = prompt("Veuillez saisir le prix de votre article Hors Taxe :  ");
    let TVA = prompt("Veuillez saisir le Taux de TVA : ");
    TVA = (TVA/100)+1; 
    document.body.innerText = ("Le prix de votre article TTC est de : "+(prixHT*TVA)+"€"); 
}

function fonction7(){
    let HT = prompt("Quel est le prix de votre article Hors Taxes ?");
    let Taux_Tva = prompt("Quel est le Taux de la TVA ? ");
    Taux_Tva = (Taux_Tva/100)+1; 
    let TTC=HT*Taux_Tva; 
    if(TTC>100){
        document.body.innerHTML = ('<h1 style="background-color:red; color:pink;">'+"Le prix de votre article TTC est de : "+prixTTC+"€"+'</h1>');
    }
    else{
        document.body.innerHTML = ('<h1 style="background-color:green; color:lightgreen;">'+"Le prix de votre article TTC est de : "+prixTTC+"€"+'</h1>');
    }
}
function fonction7Ilan(){
    let prixHT = prompt("Veuillez saisir le prix de votre article Hors Taxe :  ");
    let TVA = prompt("Veuillez saisir le Taux de TVA : ");
    TVA = (TVA/100)+1; 
    let prixTTC = prixHT*TVA;
    if(prixTTC > 100){
        document.body.innerHTML = ('<h1 style="background-color:red; color:pink;">'+"Le prix de votre article TTC est de : "+prixTTC+"€"+'</h1>');

    }
    else{
        document.body.innerHTML = ('<h1 style="background-color:green; color:lightgreen;">'+"Le prix de votre article TTC est de : "+prixTTC+"€"+'</h1>');
    }
}

function fonction8(){ //Ne fonctionne pas
    alert("Cette fonction ne fonctionne pas :/");
    document.getElementById("i2").src = "fonction8.html";
    document.getElementById('cocktail').innerText = 'Long Island Iced Tea';
    document.getElementById("i2").src = "fonction8.html";
}

function fonction9(){
    for(let i=10; i<=1000; i+=10){
        console.log(i);
    }
    alert("Les résultats ont correctement étés affichés dans la console.");

}
function fonction9Ilan(){
    let x =1;
    for(let i = 10; i<=1000;i+=10){
        console.log(i);
        x++; 
    }
    alert("Les résultats ont correctement étés affichés dans la console.");
} 

function fonction10(){
    let age = prompt("Quel âge avez-vous ?");
    if (age >= 18){
        alert("Vous êtes majeur ! ");
    }
    else{
        alert("Vous êtes mineur !");
    }
}
function fonction10Ilan(){
    let age = prompt("Veuillez saisir votre âge : ");
    if (age>=18 && age<125){
        alert("Vous êtes majeur.");
    }
    else if (age<18 && age>0){
        alert("Vous êtes mineur.");
    }
    else {
        alert("Veuillez rentrer un âge valide."); 
    }
}

function fonction11(){
    let CodePostal = 77000;
    while(CodePostal<=77999){
        console.log(CodePostal);
        CodePostal++; 
    }
}
function fonction11Ilan(){
    let CP = prompt("De quel département voulez vous avoir tous les Codes Postaux possibles ? (ex: 77)"); 
    CP = CP*1000; 
    if(CP>0){
       for(let i=0;i<1000;i++){
            console.log(CP);
            CP++; 
        } 
    }
    else{
        alert("Veuillez rentrer le numéro d'un département valide.");
    }  
}

function fonction12(){
    let n = 5; 
    let html = "";
    for (let i = 1; i<= 10; i++){
        html = html + n +" x "+ i +" = "+ (n*i)+"<br />";
    }
    document.body.innerHTML = html
}
    
function fonction12Ilan(){
    let html = "";
    let n = prompt("De quelle table voulez-vous l'affichage ?");
    if(n>0){
        for (let i = 1; i<= 10; i++){
            html = html + n +" x "+ i +" = "+ (n*i)+"<br />";
        }
    document.body.innerHTML = html
    } 
    else{
        alert("Merci de rentrer un âge valide."); 
    }

}
    
function fonction13(){
    let html="";
    for(let i = 1; i<=5; i++){
        for(let k=1;k<=i;k++){
            html = html+i;
        }
        html = html + '<br />';
    }
    document.body.innerHTML = html;
}

function fonction14(){
    let html = ""; 
    let obj=0; 

    while(obj<=20){
        html = html +obj+ "<br />";
        obj+=2; 
    }
    document.body.innerHTML = html; 
}

function fonction15(){
    let tableau = "<table>";
    let lignes = 5; 
    let colonnes = 3; 

    for(let i = 1; i<=lignes; i++){
        tableau = tableau + "<tr>";
        for (let k =1;k<=colonnes;k++){
            tableau = tableau + "<td>Yolo</td>";
        }
        tableau = tableau + "</tr>"; 
    }
    tableau = tableau + "</table>";
    document.body.innerHTML = tableau;
}

function fonction16(){
    let lignes = prompt("Veuillez saisir le nombre de lignes ?"); 
    let colonnes = prompt("Veuillez saisir le nombre de colonnes ?");
    let tableau = "<table>";

    for(let i = 1; i<=lignes; i++){
        tableau = tableau + "<tr>";
        for (let k =1;k<=colonnes;k++){
            tableau = tableau + "<td>Yolo</td>";
        }
        tableau = tableau + "</tr>"; 
    }
    tableau = tableau + "</table>";
    document.body.innerHTML = tableau;

}

function fonction17(){
    let html = "<ul>";
    let nalea = 10;
    for(let i=0; i<nalea; i++){
        html = html + "<li>" + Math.floor(Math.random()*100) + "</li>";
    }
    html = html + "</ul>";
    document.body.innerHTML = html; 
}

function fonction18(){
    let html = "<ul>";
    let nalea = 10;
    for(let i=0; i<nalea; i++){
        let tmp = Math.floor(Math.random()*11); 
        if(tmp == 10){
            console.log("Le nombre 10 fait parti du tirage");
        }
        html = html + "<li>" + tmp + "</li>";
    }
    html = html + "</ul>";
    document.body.innerHTML = html; 
}

function fonction19(){
    let html = "<ul>";
    let nalea = 10; 
    let nalea10 = 0;
    for(let i=0; i<nalea; i++){
        let tmp = Math.floor(Math.random()*11); 
        if(tmp == 10){
            nalea10++; 
        }
        html = html + "<li>" + tmp + "</li>";

    }
    html = html + "</ul>";
    html = html + "<p> Il y a eu "+nalea10+" tirages de 10.</p>";
    document.body.innerHTML = html; 
}

function fonction20(){
    let r = Math.floor(Math.random() * 256);
    let g = Math.floor(Math.random() * 256);
    let b = Math.floor(Math.random() * 256);
    let color = "rgb("+r+" , "+g+" , "+b+" )";
    document.body.style.background = color 
}

function Valider(){
    var Ori = document.getElementById("case11").value;
    var Cara = document.getElementById("case12").value; 
    let compteur = 0; 

    if(Ori.length>=1){
        if(Cara=>1){
            for(let i = 0; i<Ori.length;i++){
                if(Ori[i]==Cara){
                    compteur++; 
                }
            }
            alert("La chaine mesure : "+Ori.length+" caractères.");
            alert("La chaîne saisie est : "+Ori.toUpperCase()+" en majuscule.");
            alert("La chaîne saisie est : "+Ori.toLowerCase()+" en minuscule.");
            alert("Le caractère : '"+Cara+"', apparait "+compteur+" fois dans la chaîne : "+Ori+"."); 
        }
        else{
            alert("Veuillez saisir un caractère");
        }
    }
    else{
        alert("Veuillez saisir une phrase.");
    }
}

function Rechercher(){
    var Ori = document.getElementById("case21").value;
    let Caras = document.getElementById("case22").value;

    if (Ori === "" || Caras  === "") {
        alert("Veuillez entrer une chaîne de caractères et une suite de caractères à rechercher.");
    }
    else{
        
    var regex = new RegExp(Caras , 'g');
    var occurrences = (Ori.match(regex) || []).length;
    alert("Le nombre d'occurrences de '" + Caras  + "' dans la chaîne est : " + occurrences);
    }
}
