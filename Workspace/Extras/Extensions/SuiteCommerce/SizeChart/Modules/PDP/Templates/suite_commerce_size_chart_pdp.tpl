{{#if isAssociatedToSizeChart }}
  <div class="size-chart-link-container">
        <a href="/{{sizeChartPageURL}}/{{sizeChartUrlComponent}}/"
           data-action="openSizeChart"
           title="{{hyperlinkText}}"
           class="open-size-chart-action"
           data-sizechartid="{{sizeChartId}}">
            {{{translate hyperlinkText}}}
        </a>
  </div>
{{/if}}

