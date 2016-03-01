# app/assets/javascripts/app.rolling.coffee



App.Rolling =

	rolla: (tDice) ->
		return Math.ceil(Math.random() * tDice)
	rng: (tDice, nDice) ->
		res = App.Rolling.rolla(tDice)
		resarray = [res];


			
		newroll = App.Rolling.rolla(tDice)
		
		$("textarea#roll_result_field").val(res);
	verify: ->
		nDice = document.getElementById('num_d').value

		tDice = document.getElementById('type_d').value
		try
			App.Rolling.rng(tDice, nDice)
		catch e
			console.log 'caught the error thrown manually'
			alert e



$(document).on "click", "[data-behavior~=test-js]", =>
	alert "non-operational, apologies"

$(document).on "click", "[data-behavior~=roll-dice]", =>
	App.Rolling.verify()
