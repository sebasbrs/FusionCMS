<pp style="visibility: visible; background-image: url({$api_item_icons}/medium/{$icon}.jpg);">
<div></div>
</pp>
<!--nstart-->

<span class='q{$item.quality}' style='font-size: 16px'>{$item.name}</span><br />

{if $item.isHeroic}<div class="q2">Heroic</div>{/if}

{if $item.level}<span class='q'>{lang("item_level", "tooltip")} {$item.level}</span><br />{/if}
<!--nend-->

{if $item.account_wide}Account Bound<br />{/if}
{if $item.bind}{$item.bind}<br />{/if}
{if $item.unique}{$item.unique}<br />{/if}
{if $item.slot}<div style='float:left;'>{$item.slot}</div>{/if}
<div style='float:right;'>{$item.type}</div>
<div style="clear:both;"></div>
{if $item.armor}{$item.armor} {lang("armor", "tooltip")}<br />{/if}

{if $item.damage_min}
	<div style='float:left;'>{$item.damage_min} - {$item.damage_max} {$item.damage_type} {lang("damage", "tooltip")}</div>
	<div style='float:right;margin-left:15px;'>{lang("speed", "wow_tooltip")} {$item.speed}</div><br />
	({$item.dps} {lang("dps", "tooltip")})<br />
{/if}

{if count($item.attributes.regular) > 0}
	{foreach from=$item.attributes.regular item=attribute}
		{$attribute.text}
	{/foreach}
{/if}

{if $item.holy_res}+ {$item.holy_res} {lang("holy", "tooltip")}<br />{/if}
{if $item.nature_res}+ {$item.nature_res} {lang("nature", "tooltip")}<br />{/if}
{if $item.fire_res}+ {$item.fire_res} {lang("fire", "tooltip")}<br />{/if}
{if $item.frost_res}+ {$item.frost_res} {lang("frost", "tooltip")}<br />{/if}
{if $item.shadow_res}+ {$item.shadow_res} {lang("shadow", "tooltip")}<br />{/if}
{if $item.arcane_res}+ {$item.arcane_res} {lang("arcane", "tooltip")}<br />{/if}

<div class="q2" id="item-enchantments"></div>

<div id="item-sockets">
	{if $item.sockets}{$item.sockets}{/if}
</div>

<div class="q0" id="item-socket-bonus"></div>

{if $item.durability}{lang("durability", "tooltip")} {$item.durability} / {$item.durability}<br />{/if}
{if $item.required}{lang("requires_level", "tooltip")} {$item.required}<br />{/if}

{if $item.AllowableClass}Classes: {foreach from=$item.AllowableClass key=classId item=className}<a href="https://www.wowhead.com/class={$classId}" class="color-c{$classId}">{$className}</a>{if !$className@last}, {/if}{/foreach}<br />{/if}

{if count($item.attributes.spells) > 0}
	{foreach from=$item.attributes.spells item=attribute}
		{$attribute.text}
	{/foreach}
{/if}

{if count($item.spells) > 0}
	{foreach from=$item.spells item=spell}
		<a class="q2" href="https://wowhead.com/?spell={$spell.id}" target="_blank">
			{$spell.trigger}

			{if !strlen($spell.text)}
				{lang("unknown_effect", "tooltip")}
			{else}
				{$spell.text}
			{/if}
		</a>
		<br />
	{/foreach}
{/if}