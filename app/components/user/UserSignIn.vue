<script setup lang="ts">
const input = ref<HTMLInputElement | undefined>()

const { oauth } = useSignIn(input)

onMounted(async () => {
  input?.value?.focus()
})
</script>

<template>
  <form text-center justify-center items-center max-w-150 py6 flex="~ col gap-3" @submit.prevent="oauth">
    <div flex="~ center" items-end mb2 gap-x-2>
      <NavLogo class="w-12 h-12" />
      <div text-3xl>
        {{ $t('action.sign_in') }}
      </div>
    </div>
    <p text-1xl>
      mastoturk.org üzerinde giriş yap ya da kaydol, tekrar bu site üzerinde kullanabilirsin.
    </p>
    <button flex="~ row" gap-x-2 items-center btn-solid mt2>
      {{ $t('action.sign_in') }}
    </button>
  </form>
</template>
