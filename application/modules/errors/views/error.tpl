<div class="text-center">
	{if isset($is404) && $is404}
		<h2 class="h1 mt-5">4 <i class="fas fa-cog fa-spin"></i> 4</h2>
		<h4 class="h4 mb-5">{lang("lost", "error")}</h4>
		<p class="my-4">{lang("404_long", "error")}</p>
	{else}
		<h2 class="h2 my-5">{lang("lost", "error")}</h2>
		<p class="my-4 fw-bold">{$errorMessage}</p>
	{/if}

	<a href="{$url}" class="nice_button rounded mt-4">{lang("button_home", "error")}</a>
</div>
