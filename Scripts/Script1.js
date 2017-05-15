   
        function pageLoad() {
            InitDialogs();
            Loading(false);
            
        }
        
       
function UpdateImg(ctrl, imgsrc) {
    var img = document.getElementById(ctrl);
    img.src = imgsrc;
}

       
      
// sets up all of the YUI dialog boxes
function InitDialogs() {

    DialogBox_Loading = new YAHOO.widget.Panel("waitBox", { fixedcenter: true, modal: true, visible: true, width: "230px", close: false, draggable: true });
    DialogBox_Loading.setHeader("Inserting Record, please wait...");
    DialogBox_Loading.setBody('<div style="text-align:center;"><img src="../Images/atom.gif" id="Image1" /></div>');
    DialogBox_Loading.render(document.body);
}

function Loading(b) {
   if (b == true && Page_IsValid == true) {

        DialogBox_Loading.show();
              
   }
    else {
       DialogBox_Loading.hide();
    }
}

