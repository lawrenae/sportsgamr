$(document).ready(function(){
    //-------------Winner-------------------
	$("#Reds").mouseover(function(){
        if($(this).attr("selected") !== "selected"){
		    $(this).css("background-color", "#EEE");
        }
	});
	$("#Reds").mouseout(function(){
		if($(this).attr("selected") !== "selected"){
			$(this).css("background-color", "");
        }
	});
	$("#Reds").mousedown(function(){
		$(this).attr("selected", "selected");
		$(this).css("background-color", "#CCC");
		$("#Rockies").removeAttr("selected");
		$("#Rockies").css("background-color", "");
        calculate_winner_return();
        calculate_total_return();
	});
	$("#Winner_Bet").keyup(function(){
		calculate_winner_return();
        calculate_total_return();
	});
	$("#Rockies").mouseover(function(){
        if($(this).attr("selected") !== "selected"){
		    $(this).css("background-color", "#EEE");
        }
	});
	$("#Rockies").mouseout(function(){
		if($(this).attr("selected") !== "selected"){
			$(this).css("background-color", "");	
		}
	});
	$("#Rockies").mousedown(function(){
		$(this).attr("selected", "selected");
		$(this).css("background-color", "#CCC");
		$("#Reds").removeAttr("selected");
		$("#Reds").css("background-color", "");
        calculate_winner_return();
        calculate_total_return();
	});
	//------------------Point Spread--------------
    $("#Run_More").mouseover(function(){
        if($(this).attr("selected") !== "selected"){
            $(this).css("background-color", "#EEE");
        }
    });
    $("#Run_More").mouseout(function(){
        if($(this).attr("selected") !== "selected"){
            $(this).css("background-color", "");
        }
    });
    $("#Run_More").mousedown(function(){
        $(this).attr("selected", "selected");
        $(this).css("background-color", "#CCC");
        $("#Run_Less").removeAttr("selected");
        $("#Run_Less").css("background-color", "");
        calculate_point_spread_return();
        calculate_total_return();
    });
    $("#Run_Bet").keyup(function(){
        calculate_point_spread_return();
        calculate_total_return();
    });
    $("#Run_Less").mouseover(function(){
        if($(this).attr("selected") !== "selected"){
            $(this).css("background-color", "#EEE");
        }
    });
    $("#Run_Less").mouseout(function(){
        if($(this).attr("selected") !== "selected"){
            $(this).css("background-color", "");
        }
    });
    $("#Run_Less").mousedown(function(){
        $(this).attr("selected", "selected");
        $(this).css("background-color", "#CCC");
        $("#Run_More").removeAttr("selected");
        $("#Run_More").css("background-color", "");
        calculate_point_spread_return();
        calculate_total_return();
    });
    //------------------Total Point--------------
    $("#Total_Run_More").mouseover(function(){
        if($(this).attr("selected") !== "selected"){
            $(this).css("background-color", "#EEE");
        }
    });
    $("#Total_Run_More").mouseout(function(){
        if($(this).attr("selected") !== "selected"){
            $(this).css("background-color", "");
        }
    });
    $("#Total_Run_More").mousedown(function(){
        $(this).attr("selected", "selected");
        $(this).css("background-color", "#CCC");
        $("#Total_Run_Less").removeAttr("selected");
        $("#Total_Run_Less").css("background-color", "");
        calculate_total_points_return();
        calculate_total_return();
    });
    $("#Total_Run_Bet").keyup(function(){
        calculate_total_points_return();
        calculate_total_return();
    });
    $("#Total_Run_Less").mouseover(function(){
        if($(this).attr("selected") !== "selected"){
            $(this).css("background-color", "#EEE");
        }
    });
    $("#Total_Run_Less").mouseout(function(){
        if($(this).attr("selected") !== "selected"){
            $(this).css("background-color", "");
        }
    });
    $("#Total_Run_Less").mousedown(function(){
        $(this).attr("selected", "selected");
        $(this).css("background-color", "#CCC");
        $("#Total_Run_More").removeAttr("selected");
        $("#Total_Run_More").css("background-color", "");
        calculate_total_points_return();
        calculate_total_return();
    });


	function calculate_wins(amount, odds){
		if(odds > 0){
			return amount * odds /100;
		}else if(odds < 0){
			return amount * 100/(-odds);
		}else{
			return 0;
		}
	}
	
	function calculate_winner_return(){
		var reds_odds = -159;
		var rockies_odds = 149;

		var amount = parseInt($("#Winner_Bet").attr("value"));
		var odds;
		if($("#Reds").attr("selected")){
			odds = reds_odds;
		}else if($("#Rockies").attr("selected")){
            odds = rockies_odds;
        }
		if(!isNaN(amount) && odds !== undefined){
			var result = calculate_wins(amount, odds).toFixed(2);
			$("#Winner_Return").text("+" + result.toString());
		}else{
			$("#Winner_Return").text("");
            if(odds == undefined){
                alert("Please select the team first.");
            }
		}
	}

    function calculate_point_spread_return(){
        var reds_odds = -110;
        var rockies_odds = -110;

        var amount = parseInt($("#Run_Bet").attr("value"));
        var odds;
        if($("#Run_More").attr("selected")){
            odds = reds_odds;
        }else if($("#Run_Less").attr("selected")){
            odds = rockies_odds;
        }
        if(!isNaN(amount) && odds !== undefined){
            var result = calculate_wins(amount, odds).toFixed(2);
            $("#Run_Return").text("+" + result.toString());
        }else{
            $("#Run_Return").text("");
            if(odds == undefined){
                alert("Please select the point spread first.");
            }
        }
    }

    function calculate_total_points_return(){
        var reds_odds = -120;
        var rockies_odds = 100;

        var amount = parseInt($("#Total_Run_Bet").attr("value"));
        var odds;
        if($("#Total_Run_More").attr("selected")){
            odds = reds_odds;
        }else if($("#Total_Run_Less").attr("selected")){
            odds = rockies_odds;
        }
        if(!isNaN(amount) && odds !== undefined){
            var result = calculate_wins(amount, odds).toFixed(2);
            $("#Total_Run_Return").text("+" + result.toString());
        }else{
            $("#Total_Run_Return").text("");
            if(odds == undefined){
                alert("Please select the total runs first.");
            }
        }
    }

    function calculate_total_return(){
        var winner_bet = parseInt($("#Winner_Bet").attr("value"));
        if(isNaN(winner_bet)){winner_bet = 0;}
        var run_bet = parseInt($("#Run_Bet").attr("value"));
        if(isNaN(run_bet)){run_bet = 0;}
        var total_run_bet = parseInt($("#Total_Run_Bet").attr("value"));
        if(isNaN(total_run_bet)){total_run_bet = 0;}
        $("#Total_Bet").text((winner_bet + run_bet + total_run_bet).toString());

        var winner_return = parseFloat($("#Winner_Return").text().substring(1));
        if(isNaN(winner_return)){winner_return = 0;}
        var run_return = parseFloat($("#Run_Return").text().substring(1));
        if(isNaN(run_return)){run_return = 0;}
        var total_run_return = parseFloat($("#Total_Run_Return").text().substring(1));
        if(isNaN(total_run_return)){total_run_return = 0;}
        $("#Total_Return").text((winner_return + run_return + total_run_return).toString());

    }

    $("#Place_Bet").mousedown(function(){
        $("#Winner_Bet").prop('disabled', true);
        $("#Run_Bet").prop('disabled', true);
        $("#Total_Run_Bet").prop('disabled', true);
        alert("Your bet has been placed.");
    });
});
