{TinyMCE()}
<div class="card">
	<div class="card-header">
		New Sidebox<a class="btn btn-primary btn-sm pull-right" href="{$url}admin/sidebox">Back</a>
	</div>

	<div class="card-body">
	<form role="form" onSubmit="Sidebox.create(this); return false" id="submit_form">
		<div class="form-group row">
		<label class="col-sm-2 col-form-label" for="displayName">Headline</label>
		<div class="col-sm-10">
			<input class="form-control" type="text" name="displayName" id="displayName">
		</div>
		</div>

		<div class="form-group row">
		<label class="col-sm-2 col-form-label" for="type">Sidebox module</label>
		<div class="col-sm-10">
		<select class="form-control" id="type" name="type" onChange="Sidebox.toggleCustom(this)">
			{foreach from=$sideboxModules item=module key=name}
				<option value="{$name}">{$module.name}</option>
			{/foreach}
		</select>
		</div>
		</div>

		<div class="form-group row mb-3">
		<label class="col-sm-2 col-form-label" for="visibility">Visibility mode</label>
		<div class="col-sm-10">
		<select class="form-control" name="visibility" id="visibility" onChange="if(this.value == 'group'){ $('#groups').removeClass('d-none'); } else { $('#groups').addClass('d-none'); }">
			<option value="everyone" selected>Visible to everyone</option>
			<option value="group">Controlled per group</option>
		</select>
		</div>
		</div>

		<div id="groups" class="d-none form-group row">
			<span>Please manage the group visibility via <a target="_blank" href="{$url}admin/aclmanager/groups">the group manager</a> once you have created the sidebox.</span>
		</div>

		<div id="custom_field" class="mt-3">
			<textarea name="content" class="form-control tinymce" id="customContent"></textarea>
		</div>

		<button type="submit" class="btn btn-primary btn-sm mt-3">Submit sidebox</button>
	</form>
	</div>
</div>

<script>
	require([Config.URL + "application/themes/admin/assets/js/mli.js"], function()
	{
		new MultiLanguageInput($("#displayName"));
	});
</script>
