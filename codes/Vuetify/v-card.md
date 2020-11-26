# v-card

[公式 Doc](https://vuetifyjs.com/en/components/cards/)

## tag

```html
<!-- 4 basic components -->
<v-card>
  <v-card-title>タイトルと</v-card-title>
  <v-card-subtitle>サブタイトルと</v-card-subtitle>
  <v-card-text>本文と</v-card-text>
  <v-card-actions>アクションがある</v-card-actions>
</v-card>
```

## props

```
<v-card
  elevation="0..24" ...影の度合いを調節
  flat              ...影をなくす
  nuxt              ...nuxt-link対応
  outlined          ...影をなくして、線で囲む
  tile              ...角丸をなくす
>
</v-card>
```

<p class="codepen" data-height="265" data-theme-id="dark" data-default-tab="html,result" data-user="msickpaler" data-slug-hash="KKgKamm" style="height: 265px; box-sizing: border-box; display: flex; align-items: center; justify-content: center; border: 2px solid; margin: 1em 0; padding: 1em;" data-pen-title="v-card example1">
  <span>See the Pen <a href="https://codepen.io/msickpaler/pen/KKgKamm">
  v-card example1</a> by msickpaler (<a href="https://codepen.io/msickpaler">@msickpaler</a>)
  on <a href="https://codepen.io">CodePen</a>.</span>
</p>
<script async src="https://static.codepen.io/assets/embed/ei.js"></script>

他にも props 沢山あるよ：[v-card API](https://vuetifyjs.com/en/api/v-card/#props)
