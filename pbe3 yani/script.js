// JavaScript Document
/*function NumError() {
                var messageerr, val1, val2;
                messageerr = document.getElementById("p01");
                messageerr.innerHTML = "";
                val1 = document.getElementById("num1").value;
                val2 = document.getElementById("num2").value;
                try {
                    if(val1 == "") || (val2 == "")
                        throw "Don't leave input empty";
                    
                    if(isNaN(val1)) 
                        throw "Enter numeric only at Value 1";
                    val1 = Number(val1);
                    
                    if(isNaN(val2)) 
                        throw "Enter numeric only at Value 2";
                    val2 = Number(val2);
                }
                catch(err) {
                    window.alert(err);
                }
                
                
            }
*/
function addnum(){
                if(num1 == ""){
                    num1=parseInt(document.calcu.v1.value);
                    num2=parseInt(document.calcu.v2.value);
                    num3=num1+num2;
                    document.calcu.totalnum.value=num3;
                }
                else{
                    window.alert("input");

                }
                
            }

function subnum(){
                num1=parseInt(document.calcu.v1.value);
                num2=parseInt(document.calcu.v2.value);
                num3=num1-num2;
                document.calcu.totalnum.value=num3;
            }

function mulnum(){
                num1=parseInt(document.calcu.v1.value);
                num2=parseInt(document.calcu.v2.value);
                num3=num1*num2;
                document.calcu.totalnum.value=num3;
            }

function divnum(){
                num1=parseInt(document.calcu.v1.value);
                num2=parseInt(document.calcu.v2.value);
                num3=num1/num2;
                document.calcu.totalnum.value=num3;
            }