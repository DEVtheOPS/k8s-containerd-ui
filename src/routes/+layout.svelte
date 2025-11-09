<script lang="ts">
	import favicon from '$lib/assets/favicon.svg';
	import 'flowbite';
	import '../app.css';
	import { ModeWatcher, toggleMode } from 'mode-watcher';
	import ThemeToggle from '$lib/components/ThemeToggle.svelte';

	let { children } = $props();
</script>

<svelte:head>
	<link rel="icon" href={favicon} />
</svelte:head>
<ModeWatcher />
<div class="min-h-screen bg-gray-50 transition-colors dark:bg-gray-800">
	<!-- Top Navigation Bar -->
	<nav class="border-gray-200 bg-white p-2 dark:bg-gray-900">
		<div class="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
			<ThemeToggle />
		</div>
	</nav>

	<!-- Main Content -->
	<main class="flex-1">
		{@render children()}
	</main>
</div>
