<template>
  <div class="logo">
    <img alt="oznextsosyal" src="/logo.svg">
    oznextsosyal
  </div>
</template>

<style lang="ts" scoped>
css({
  '.logo': {
    display: 'flex',
    flexDirection: 'row',
    alignItems: 'center',
    gap: '0.5rem',
    fontSize: '1.5rem',
  },
  'img': {
    flexShrink: 0,
    aspectRatio: '1/1',
    height: '2.5rem',
  },
})
</style>
