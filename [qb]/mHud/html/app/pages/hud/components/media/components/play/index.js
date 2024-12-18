import importTemplate from '../../../../../../utils/importTemplate.js'
import inlinesvg from '../../../../../../utils/inlineSvg.js'


const Play = {
  data() {
    return {
      musicUrl: '',
      musicTime: {
        maxDuration: 0,
        timeStamp: 0,
      },
    }
  },
  methods: {
    PlayClick() {
      let audio = new Audio('./assets/sounds/click.ogg');
      audio.play();
      audio.volume = 0.10;
    },
    AddToPlaylist(id) {
      if (this.currentSongInformations.name && this.musicTime.maxDuration > 0) {
        postNUI('addToPlaylist', {
          id,
          url: this.currentSongInformations.url,
          name: this.currentSongInformations.name,
          coverUrl: this.currentSongInformations.coverUrl,

        })
      }
    },
    ...Vuex.mapMutations({
      setCurrentMediaPlayPage: 'hud/setCurrentMediaPlayPage',
      setCurrentSongInformations: 'media/setCurrentSongInformations',
      setCurrentPlaylist: 'media/setCurrentPlaylist',

    }),
    toMMSS(val) {
      var sec_num = parseInt(val, 10); // don't forget the second param
      var hours = Math.floor(sec_num / 3600);
      var minutes = Math.floor((sec_num - (hours * 3600)) / 60);
      var seconds = sec_num - (hours * 3600) - (minutes * 60);

      if (hours < 10) { hours = "0" + hours; }
      if (minutes < 10) { minutes = "0" + minutes; }
      if (seconds < 10) { seconds = "0" + seconds; }
      return minutes + ':' + seconds;
    },
    messageHandler(event) {
      switch (event.data.action) {
        case "SET_MUSIC_TIME":
          this.musicTime = event.data.payload
          break
        default:
          break;
      }
    },
    PrevMusic() {
      if (!isNaN(this.currentPlaylist.currentMusicIndex) && this.currentPlaylist.data.musics && this.currentPlaylist.data.musics.length > 0) {
        let index = this.currentPlaylist.currentMusicIndex - 1
        if (!this.currentPlaylist.data.musics[index]) {
          this.setCurrentPlaylist({
            type: 'currentMusicIndex',
            value: this.currentPlaylist.data.musics.length - 1,
          })
          const music = this.currentPlaylist.data.musics[this.currentPlaylist.data.musics.length - 1]
          postNUI('musicAction', {
            type: 'play',
            url: music.url,
            name: music.name,
          })
          this.setCurrentSongInformations({
            type: 'name',
            value: music.name,
          })
          this.setCurrentSongInformations({
            type: 'url',
            value: music.url,
          })
          this.setCurrentSongInformations({
            type: 'coverUrl',
            value: music.coverUrl,
          })
        } else {
          const music = this.currentPlaylist.data.musics[index]
          this.setCurrentPlaylist({
            type: 'currentMusicIndex',
            value: index,
          })
          postNUI('musicAction', {
            type: 'play',
            url: music.url,
            name: music.name,
          })
          this.setCurrentSongInformations({
            type: 'name',
            value: music.name,
          })
          this.setCurrentSongInformations({
            type: 'url',
            value: music.url,
          })
          this.setCurrentSongInformations({
            type: 'coverUrl',
            value: music.coverUrl,
          })
        }
      }
    },
    NextMusic() {
      if (!isNaN(this.currentPlaylist.currentMusicIndex) && this.currentPlaylist.data.musics && this.currentPlaylist.data.musics.length > 0) {
        let index = this.currentPlaylist.currentMusicIndex + 1
        if (!this.currentPlaylist.data.musics[index]) {
          this.setCurrentPlaylist({
            type: 'currentMusicIndex',
            value: 0,
          })
          const music = this.currentPlaylist.data.musics[0]
          postNUI('musicAction', {
            type: 'play',
            url: music.url,
            name: music.name,
          })
          this.setCurrentSongInformations({
            type: 'name',
            value: music.name,
          })
          this.setCurrentSongInformations({
            type: 'url',
            value: music.url,
          })
          this.setCurrentSongInformations({
            type: 'coverUrl',
            value: music.coverUrl,
          })
        } else {
          const music = this.currentPlaylist.data.musics[index]
          this.setCurrentPlaylist({
            type: 'currentMusicIndex',
            value: index,
          })
          postNUI('musicAction', {
            type: 'play',
            url: music.url,
            name: music.name,
          })
          this.setCurrentSongInformations({
            type: 'name',
            value: music.name,
          })
          this.setCurrentSongInformations({
            type: 'url',
            value: music.url,
          })
          this.setCurrentSongInformations({
            type: 'coverUrl',
            value: music.coverUrl,
          })
        }
      }
    },
    VolumeUp() {
      postNUI('musicAction', {
        type: 'volume-up',
      })
    },
    VolumeDown() {
      postNUI('musicAction', {
        type: 'volume-down',
      })
    },
    ToggleMusic() {
      postNUI('musicAction', {
        type: 'toggle'
      })
    },
    SetTimeStamp(e) {
      if (this.currentSongInformations.name && this.musicTime.maxDuration > 0) {
        const pos =
          (e.pageX - this.$refs.musicbar.getClientRects()[0].x) /
          this.$refs.musicbar.getClientRects()[0].width;
        postNUI('musicAction', {
          type: 'timestamp',
          payload: pos * this.musicTime.maxDuration,
        })
      }
    },
    async getSpotifyCover(songName) {
      const clientId = this.SpotifyclientId // Spotify API Client ID
      const clientSecret = this.SpotifyclientSecret // Spotify API Client Secret
      const authResponse = await fetch("https://accounts.spotify.com/api/token", {
        method: "POST",
        headers: {
          "Content-Type": "application/x-www-form-urlencoded",
          "Authorization": "Basic " + btoa(clientId + ":" + clientSecret)
        },
        body: "grant_type=client_credentials"
      });
      const authData = await authResponse.json();
      const accessToken = authData.access_token;

      const searchResponse = await fetch(`https://api.spotify.com/v1/search?q=${encodeURIComponent(songName)}&type=track&limit=1`, {
        headers: {
          "Authorization": "Bearer " + accessToken
        }
      });

      const searchData = await searchResponse.json();
      if (searchData.tracks.items.length === 0) {
        console.log("Şarkı bulunamadı.");
        return false;
      }
      const firstTrack = searchData.tracks.items[0];
      return firstTrack.album.images[0].url
    },
    PlayMusic() {
      if (this.musicUrl) {
        $.getJSON('https://noembed.com/embed?url=', { format: 'json', url: this.musicUrl }, (data) => {
          this.setCurrentSongInformations({
            type: 'name',
            value: data.title,
          })
          this.setCurrentSongInformations({
            type: 'url',
            value: this.musicUrl,
          })
          this.getSpotifyCover(data.title).then((coverUrl) => {
            this.setCurrentSongInformations({
              type: 'coverUrl',
              value: coverUrl,
            })
          })

          postNUI('musicAction', {
            type: 'play',
            url: this.musicUrl,
            name: data.title,
          })
        });

      }
    },
  },
  components: {
    inlinesvg
  },
  computed: {
    ...Vuex.mapGetters({


    }),
    ...Vuex.mapState({
      currentMediaPlayPage: state => state.hud.currentMediaPlayPage,
      currentSongInformations: state => state.media.currentSongInformations,
      myPlaylists: state => state.media.myPlaylists,
      currentPlaylist: state => state.media.currentPlaylist,
      locales: state => state.hud.locales,
      SpotifyclientId: state => state.media.SpotifyclientId,
      SpotifyclientSecret: state => state.media.SpotifyclientSecret,
    }),

  },
  created() {
    window.addEventListener('message', this.messageHandler);

  },
  beforeDestroy() {
    window.removeEventListener('message', this.messageHandler);

  },
  template: await importTemplate('./app/pages/hud/components/media/components/play/index.html')
}
export default Play