import{u as S,r as d,p as N,q as T,b9 as p,j as e,a as s,L as a,F as m,t as g,ba as R,P as v}from"./index-2acb14b9.js";const H={background:"sunny",icon:"sunny",temperature:80,city:"Los Santos",feelsLike:85,windSpeed:4,hourly:[{type:"sunny",temperature:80},{type:"sunny",temperature:75},{type:"sunny",temperature:73},{type:"cloudy",temperature:65}]};function f(){var E;const o=S(v.Settings),[t,P]=d.useState({background:"sunny",icon:"sunny",temperature:0}),[n,h]=d.useState(null);d.useEffect(()=>{N("Weather",{action:"getData"},H).then(r=>{if(!r)return T("warning","No weather data received");P(r)})},[]),d.useEffect(()=>{p(`./assets/img/backgrounds/default/apps/weather/${t.background}.jpg`).then(r=>{h(r.dominant+"8d")})},[t]);const u=()=>{const i=new Date().getHours();return i>=21||i<=5},c=r=>o.weather&&o.weather.celcius?R(r):r,A={cloudy:a("APPS.WEATHER.TYPES.CLOUDY"),drizzle:a("APPS.WEATHER.TYPES.LIGHT_RAIN"),fog:a("APPS.WEATHER.TYPES.FOG"),"heavy-rain":a("APPS.WEATHER.TYPES.HEAVY_RAIN"),night:a("APPS.WEATHER.TYPES.CLEAR"),"partly-cloudy-night":a("APPS.WEATHER.TYPES.MOSTLY_CLEAR"),"partly-cloudy-sunny":a("APPS.WEATHER.TYPES.MOSTLY_CLEAR"),rain:a("APPS.WEATHER.TYPES.RAIN"),snow:a("APPS.WEATHER.TYPES.SNOW"),thunder:a("APPS.WEATHER.TYPES.THUNDER"),sunny:a("APPS.WEATHER.TYPES.CLEAR"),tornado:a("APPS.WEATHER.TYPES.TORNADO"),windy:a("APPS.WEATHER.TYPES.WINDY")};return e("div",{className:"weather-container",style:{backgroundImage:`url(./assets/img/backgrounds/default/apps/weather/${t.background}.jpg)`},children:[e("div",{className:"weather-info",children:[s("div",{className:"location",children:t.city}),e("div",{className:"temperature",children:[c(t.temperature),"°"]}),s("div",{className:"weather-type",children:A[t.icon]})]}),e("div",{className:"hourly-forecast",style:{backgroundColor:n},children:[e("div",{className:"info-header",children:[s("i",{className:"fal fa-clock"}),a("APPS.WEATHER.HOURLY_FORECAST")]}),e("div",{className:"content",children:[e("div",{className:"item",children:[s("div",{className:"time",children:a("APPS.WEATHER.NOW")}),s("img",{src:`./assets/img/icons/weather/${t.icon}.png`}),e("div",{className:"temp",children:[c(t.temperature),"°"]})]}),(E=t==null?void 0:t.hourly)==null?void 0:E.map((r,i)=>{let l=new Date().getHours();return e("div",{className:"item",children:[e("div",{className:"time",children:[l+i>12?l+i-12:l+i,s("span",{children:l+i>=12?"PM":"AM"})]}),s("img",{src:`./assets/img/icons/weather/${r.type}.png`}),e("div",{className:"temp",children:[c(r.temperature),"°"]})]},i)})]})]}),e("div",{className:"details",children:[e("div",{className:"item",style:{backgroundColor:n},children:[e("div",{className:"item-header",children:[s("i",{className:"fal fa-temperature-low"}),a("APPS.WEATHER.FEELS_LIKE")]}),e("div",{className:"item-content",children:[c(t.feelsLike??t.temperature),"°"]}),s("div",{className:"item-footer",children:(t==null?void 0:t.feelsLike)==t.temperature||!t.feelsLike?a("APPS.WEATHER.FEELS_LIKE_SAME"):t.feelsLike>t.temperature?a("APPS.WEATHER.FEELS_LIKE_HUMIDITY"):a("APPS.WEATHER.FEELS_LIKE_WIND")})]}),s("div",{className:"item",style:{backgroundColor:n},children:u()?e(m,{children:[e("div",{className:"item-header",children:[s("i",{className:"fas fa-sunrise"}),a("APPS.WEATHER.SUNRISE")]}),e("div",{className:"item-content",children:["3:31",s("span",{children:"AM"})]}),e("div",{className:"item-footer",children:[a("APPS.WEATHER.SUNSET"),": 10:09",s("span",{children:"PM"})]})]}):e(m,{children:[e("div",{className:"item-header",children:[s("i",{className:"fas fa-sunrise"}),a("APPS.WEATHER.SUNSET")]}),e("div",{className:"item-content",children:["10:09",s("span",{children:"PM"})]}),e("div",{className:"item-footer",children:[a("APPS.WEATHER.SUNRISE"),": 3:31",s("span",{children:"AM"})]})]})}),e("div",{className:"item",style:{backgroundColor:n},children:[e("div",{className:"item-header",children:[s("i",{className:"fas fa-wind"}),a("APPS.WEATHER.WIND")]}),e("div",{className:"wind-data",children:[g(t.windSpeed,1),s("span",{children:"m/s"})]}),s("img",{src:"./assets/img/icons/weather/wind.png"})]}),e("div",{className:"item",style:{backgroundColor:n},children:[e("div",{className:"item-header",children:[s("i",{className:"fas fa-dewpoint"}),a("APPS.WEATHER.PRECIPITATION")]}),s("div",{className:"item-content",children:"0 mm"}),s("div",{className:"item-subcontent",children:a("APPS.WEATHER.LAST_24H")}),e("div",{className:"item-footer",children:["0 mm ",a("APPS.WEATHER.EXPECTED_24H")]})]})]})]})}export{f as default};