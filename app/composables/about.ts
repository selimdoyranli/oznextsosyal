import type { BuildInfo } from '#shared/types'

export interface Team {
  github: string
  display: string
  twitter?: string
  mastodon: string
  link: string
  sponsors?: string
}

export const elkTeamMembers: Team[] = [
  {
    github: 'selimdoyranli',
    display: 'Selim Doyranlı',
    twitter: 'selimdoyranli',
    mastodon: 'selimdoyranli@gmail.com',
    link: 'https://selimdoyranli.com',
  },
].sort(() => Math.random() - 0.5)

export function useBuildInfo() {
  return useAppConfig().buildInfo as BuildInfo
}
