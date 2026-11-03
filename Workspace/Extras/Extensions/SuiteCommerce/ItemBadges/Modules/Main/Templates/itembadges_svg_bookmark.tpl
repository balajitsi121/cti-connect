<div class="itembadges-badge-container-individual itembadges-badge-container-individual-medium">
  <svg class="itembadges-badge-svg-{{position}}" width="{{svg.width}}px" height="64px" viewBox="0 0 {{svg.width}} {{svg.height}}" role="img" aria-label="{{alt}}" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
    <title>{{alt}}</title>
    <g id="Badges" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
      <g id="Badges">
        <path d="{{svg.shape}}" id="Rectangle" fill="{{textBgColor}}"></path>
        <text id="{{text}}" class="item-badges-svg-text" font-weight="{{textWeight}}" line-spacing="1" fill="{{textColor}}">
          <tspan {{#if flipVertical}} text-anchor="end" x="{{svg.textEnd}}" y="23" {{else}} x="{{svg.textStart}}" y="23" {{/if}}>{{text}}</tspan>
        </text>
      </g>
    </g>
  </svg>
</div>
