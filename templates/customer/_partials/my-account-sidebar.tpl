<div class="c-account-sidebar__row u-mb-1">
    <div class="c-account-sidebar__avatar">
        {$customer.firstname|substr:0:1}{$customer.lastname|substr:0:1}
    </div>
    <p class="u-mb-0">{l s='Hello' d='Shop.Theme.Global'},
        <br><span class="u-font-weight-bold">{$customer.firstname} {$customer.lastname}</span></p>
</div>

<div class="list-group u-mb-1">
    {if !$configuration.is_catalog}
        <div class="u-mb-1">
            <a class="c-account-sidebar__row /js list-group-item-action{if $urls.current_url == $urls.pages.history} is-active{/if}"
               id="history-link" href="{$urls.pages.history}">
                {include file="_partials/icon.tpl" icon="box-seam" class="c-icon--16 u-mr-2"}
                {l s='Order history' d='Shop.Theme.Customeraccount'}
            </a>
        </div>
    {/if}

    <a class="c-account-sidebar__row /js list-group-item-action{if $urls.current_url == $urls.pages.identity} is-active{/if}"
       id="identity-link"
       href="{$urls.pages.identity}">
        {include file="_partials/icon.tpl" icon="person-circle" class="c-icon--16 u-mr-2"}
        {l s='Mes informations' d='Shop.Theme.Customeraccount'}
    </a>
    {if $customer.addresses|count}
        <a class="c-account-sidebar__row /js list-group-item-action{if $urls.current_url == $urls.pages.addresses} is-active{/if}"
           id="addresses-link"
           href="{$urls.pages.addresses}">
            {include file="_partials/icon.tpl" icon="geo-alt-fill" class="c-icon--16 u-mr-2"}
            {l s='Mes adresses' d='Shop.Theme.Customeraccount'}
        </a>
    {else}
        <a class="c-account-sidebar__row /js list-group-item-action{if $urls.current_url == $urls.pages.address} is-active{/if}"
           id="address-link"
           href="{$urls.pages.address}">
            {l s='Add first address' d='Shop.Theme.Customeraccount'}
        </a>
    {/if}

    {if !$configuration.is_catalog}
        <a class="c-account-sidebar__row /js list-group-item-action{if $urls.current_url == $urls.pages.order_slip} is-active{/if}"
           id="order-slips-link" href="{$urls.pages.order_slip}">
            {include file="_partials/icon.tpl" icon="receipt" class="c-icon--16 u-mr-2"}
            {l s='Credit slips' d='Shop.Theme.Customeraccount'}
        </a>
    {/if}

    {if $configuration.voucher_enabled && !$configuration.is_catalog}
        <a class="c-account-sidebar__row /js list-group-item-action{if $urls.current_url == $urls.pages.discount} is-active{/if}"
           id="discounts-link" href="{$urls.pages.discount}">
            {include file="_partials/icon.tpl" icon="tag-fill" class="c-icon--16 u-mr-2"}
            {l s='Vouchers' d='Shop.Theme.Customeraccount'}
        </a>
    {/if}

    {if $configuration.return_enabled && !$configuration.is_catalog}
        <a class="c-account-sidebar__row /js list-group-item-action{if $urls.current_url == $urls.pages.order_follow} is-active{/if}"
           id="returns-link" href="{$urls.pages.order_follow}">
          <span class="link-item">
            {include file="_partials/icon.tpl" icon="arrow-counterclockwise" class="c-icon--16 u-mr-2"}
              {l s='Merchandise returns' d='Shop.Theme.Customeraccount'}
          </span>
        </a>
    {/if}


</div>

<div class="">
    <a class="c-account-sidebar__row /js list-group-item-action" href="{$urls.actions.logout}">
        {l s='Logout' d='Shop.Theme.Customeraccount'}
    </a>
</div>
{*

<div class="row account-links">

  <a class="col-lg-4 col-md-6 col-sm-6 col-12" id="identity-link" href="{$urls.pages.identity}">
        <span class="link-item">
          <i class="material-icons">&#xE853;</i>
            {l s='Information' d='Shop.Theme.Customeraccount'}
        </span>
  </a>

    {if $customer.addresses|count}
      <a class="col-lg-4 col-md-6 col-sm-6 col-12" id="addresses-link" href="{$urls.pages.addresses}">
          <span class="link-item">
            <i class="material-icons">&#xE56A;</i>
              {l s='Addresses' d='Shop.Theme.Customeraccount'}
          </span>
      </a>
    {else}
      <a class="col-lg-4 col-md-6 col-sm-6 col-12" id="address-link" href="{$urls.pages.address}">
          <span class="link-item">
            <i class="material-icons">&#xE567;</i>
              {l s='Add first address' d='Shop.Theme.Customeraccount'}
          </span>
      </a>
    {/if}

    {if !$configuration.is_catalog}
      <a class="col-lg-4 col-md-6 col-sm-6 col-12" id="history-link" href="{$urls.pages.history}">
          <span class="link-item">
            <i class="material-icons">&#xE916;</i>
              {l s='Order history and details' d='Shop.Theme.Customeraccount'}
          </span>
      </a>
    {/if}

    {if !$configuration.is_catalog}
      <a class="col-lg-4 col-md-6 col-sm-6 col-12" id="order-slips-link" href="{$urls.pages.order_slip}">
          <span class="link-item">
            <i class="material-icons">&#xE8B0;</i>
              {l s='Credit slips' d='Shop.Theme.Customeraccount'}
          </span>
      </a>
    {/if}

    {if $configuration.voucher_enabled && !$configuration.is_catalog}
      <a class="col-lg-4 col-md-6 col-sm-6 col-12" id="discounts-link" href="{$urls.pages.discount}">
          <span class="link-item">
            <i class="material-icons">&#xE54E;</i>
              {l s='Vouchers' d='Shop.Theme.Customeraccount'}
          </span>
      </a>
    {/if}

    {if $configuration.return_enabled && !$configuration.is_catalog}
      <a class="col-lg-4 col-md-6 col-sm-6 col-12" id="returns-link" href="{$urls.pages.order_follow}">
          <span class="link-item">
            <i class="material-icons">&#xE860;</i>
              {l s='Merchandise returns' d='Shop.Theme.Customeraccount'}
          </span>
      </a>
    {/if}

    {block name='display_customer_account'}
        {hook h='displayCustomerAccount'}
    {/block}

</div>
*}