[{if $tree}]
[{defun name="category_options" list=$tree sSpacer=""}]
    [{foreach from=$list item=ocat}]
        [{if $ocat->getIsVisible()}]
            <option value="[{$ocat->oxcategories__oxid->value}]"[{if $oView->getSearchCatId() == $ocat->oxcategories__oxid->value}] selected[{/if}]>[{$sSpacer}][{ $ocat->oxcategories__oxtitle->value }][{ if $ocat->getNrOfArticles() > 0 }] ([{$ocat->getNrOfArticles()}])[{/if}]</option>
            [{fun name="category_options" list=$ocat->getSubCats() sSpacer="-$sSpacer "}]
        [{/if}]
    [{/foreach}]
[{/defun}]
[{/if}]