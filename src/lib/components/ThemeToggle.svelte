<script>
	import { mode, toggleMode } from 'mode-watcher';
</script>

<button
	onclick={toggleMode}
	class="inline-flex items-center p-2.5 text-center"
	aria-label="Toggle color scheme"
>
	{#if mode.current === 'dark'}
		<span>☀️</span>
	{:else}
		<span>🌙</span>
	{/if}
</button>
