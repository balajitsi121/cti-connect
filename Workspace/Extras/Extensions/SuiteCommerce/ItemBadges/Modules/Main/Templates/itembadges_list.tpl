<div class="itembadges-wrapper">
    <div class="itembadges-badge-row {{#if showText}}itembadges-show{{/if}}" style="
        {{#if textBgColor}}
            background:{{textBgColor}};
        {{/if}}
        {{#if areBothElementsVisibile}}
            position: absolute;
        {{/if}}">
        <div class="itembadges-badge" style="
            {{#if textColor}}
                color:{{textColor}};
            {{/if}}
            {{#if textWeight}}
                font-weight:{{textWeight}};
            {{/if}}">
            {{{text}}}
        </div>
    </div>
    <div class="itembadges-image-row {{#if showImage}}itembadges-show{{/if}}">
        <img class="itembadges-cell-image"
            {{#if shapeImage}}
                src="{{resizeImage shapeImage}}"
            {{/if}}
            data-id="{{shapeId}}"
            data-name="{{shapeName}}"
            {{#if alt.length}}​
                alt="{{alt}}"
            {{else}}
                alt="{{shapeName}}"
            {{/if}}
            itemprop="image">
    </div>
</div>

