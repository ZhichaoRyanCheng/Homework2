<meme2>
	<div class="egg-frame" each="{item in items}">
	<!-- <div class="egg-frame" each="{items}"> -->
		<!-- <img src={item.URL}/-->
		<img src={item.URL}/>
		<p>{item.caption}</p>
	</div>


	<script type="text/javascript">

		this.items = [
			{
				URL: "https://media.giphy.com/media/XzJkMwXaLSQH6/giphy.gif",
				caption: "You are doing great!!"
			}
		]
	</script>

	<style>
		:scope {
			display: block;
		}

		.egg-frame {
			background-color: yellow;
			width: 30%;
			display: inline-block;
			border: 1px solid #CCC;
			border-radius: 6px;
			margin: 2px;
			padding: 10px;
		}
		img{
			width:100%;
		}
	</style>
</meme2>
