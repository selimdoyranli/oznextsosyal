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
      <img :src="`/${''}logo.svg`" w-12 h-12 mxa height="48" width="48" :alt="$t('app_logo')" class="rtl-flip">
      <div text-3xl>
        {{ $t('action.sign_in') }}
      </div>
    </div>
    <div>
      {{ $t('user.server_address_label') }}
    </div>
    <button flex="~ row" gap-x-2 items-center btn-solid mt2>
      {{ $t('action.sign_in') }}
    </button>
  </form>
</template>
