function seconnecter(){
    var login = prompt("Veuillez saisir votre identifiant de connexion :");
    var password = prompt("Entrer votre mot de passe :");
    if (login == "admin" && password == "admin"){
        document.write("Bienvenue : "   +login);
    }
    else{
        alert("Accès refusé");
    }
}

function seconnecter2(){
    var login = prompt("Veuillez saisir votre identifiant de connexion :");
    var password = prompt("Entrer votre mot de passe :");
    if (login == "admin" && password == "admin"){
        document.write("Bienvenue : "   +login);
    }
    else{
        alert("Accès refusé");
    }
}

function seconnecter2(){
    window.location.href='connexion2.html'
}

function login(){
    var login = document.getElementById("t1").value;
    var password = document.getElementById("h1").value;

    if (login == "admin" && password == "admin"){
        window.location.href='yes.html'
    }
    else{
        window.location.href='no.html'
    }
}

function affichagetab(){
    document.write('<table border=2px width=30%');
    for(let i = 0; i<=5; i++){
        document.write('<tr><td>*</td><td>*</td><td>*</td></tr>');
    }
    document.write('</table>');
}

function affichagetab2(){
    document.write('<table border=2px width=30%');
    var x = prompt("Veuillez saisir le nombre de lignes");
    for(let i = 1; i<=x; i++){
        document.write('<tr><td>*</td><td>*</td><td>*</td></tr>');
    }
    document.write('</table>');
}

function swich(){
    var c = prompt("Bonjour, veuillez saisir une couleur pour le fond de la page : ")
    switch(c){
        case "rouge" :
            document.body.style.background = "red";
         break;
        case "bleu" :
            document.body.style.background = "lightblue";
        break;
        case "jaune" :
            document.body.style.background = "lightyellow";
        break;
        case "vert" :
            document.body.style.background = "lightgreen";
        break;
        default :
            alert("Couleur non reconnue");
            document.body.style.background = "white";
    }
}

function cdc(){
    var chaine = prompt("Donnez un mot");
    document.write(chaine.toUpperCase()+"<br>");
    document.write(chaine.toLowerCase()+"<br>");
    document.write("La chaîne contient "+ chaine.length+" caractères "+"<br>");
    document.write("La première lettre est "+chaine.substr(0,1)+ "<br>");

}

function seconnecter3(){
    var i=0;
        do {
        var id = prompt("Veuillez saisir votre nom d'utilsateur : ");
        var mdp = prompt("Veuillez saisir votre mot de passe : ");

        if (id=="admin" && mdp=="admin")
        {
            document.write("Bienvenue : "+id);
            break;
        }

        else{
            alert("Accès refusé");
            i++;
        }}
            while (i<3);
            if (i==3)
            alert("Délai dépassé ! ALERTE INTRU BRUTEFORCE");
}
