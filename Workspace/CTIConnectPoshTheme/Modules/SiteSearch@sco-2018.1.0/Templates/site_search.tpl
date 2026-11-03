<div class="site-search dev-setup" data-type="site-search">
    <div class="site-search-content">
        <form class="site-search-content-form" method="GET" action="/search" data-action="search">

            <div class="site-search-new-container">
                {{!-- <div class="site-search-list-container">

                    <ul class="site-search-content-Categories-list">
                        <li><a class="site-search-content-Categories-list-item" data-type="search-category" data-value="all" href="#">
                            <span>All Categories</span>
                            <span><i class="fa fa-chevron-down" aria-hidden="true"></i></span>
                        </a></li>
                    </ul>
                </div> --}}

                <div class="site-search-content-input">

				    <div data-view="ItemsSeacher"></div>
                
				    <a class="site-search-input-reset" data-type="search-reset"><i class="site-search-input-reset-icon"></i></a>
                    <button class="site-search-button-submit" type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                </div>
            </div>
        </form>
    </div>
</div>



{{!----
The context variables for this template are not currently documented. Use the {{log this}} helper to view the context variables in the Console of your browser's developer tools.

----}}

