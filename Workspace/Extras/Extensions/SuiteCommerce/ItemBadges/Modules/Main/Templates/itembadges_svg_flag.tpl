<div class="itembadges-badge-container-individual itembadges-badge-container-individual-small">
  <svg class="itembadges-badge-svg-{{position}}" width="{{svg.width}}px" height="{{svg.height}}px" viewBox="0 0 {{svg.width}} {{svg.height}}" role="img" aria-label="{{alt}}" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
    <title>{{alt}}</title>
    <g id="Badges" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
      <g id="Badges">
        <g id="Flag-top-left">
          <g id="Flag">
            <path d="{{svg.shape}}" id="Combined-Shape" fill="{{textBgColor}}" {{#if flipVertical}} transform="scale(-1, 1) translate(-{{svg.width}},0)" {{/if}}></path>
            <text id="{{text}}" class="item-badges-svg-text" font-weight="{{textWeight}}" line-spacing="15" fill="{{textColor}}">
              <tspan text-anchor="middle" x="{{svg.textMiddle}}" y="{{svg.textHeight}}">{{text}}</tspan>
            </text>
          </g>
        </g>
      </g>
    </g>
  </svg>
</div>
