jQuery ->
  # Autocomplete dropdown for selecting categories
  $('#consultation_taxon_id').select2()

  $('[data-hook="add_variant_to_consultation_button"]').on 'click', ->
    if variant = $('#consultation_classification_variant_id').data('variant')
      $.ajax
        type: "POST"
        dataType: 'script'
        data:
          "consultation_classification[variant_id]": variant.id
        success: ->
          $('#consultation_classification_variant_id')
            .data('variant', null)
            .select2('data', null)
        error: ->
          alert "Error adding the product. Relation exists already?"
    return false

  $('#consultation_classification_variant_id').select2
    placeholder: "Select a variant"
    minimumInputLength: 4
    allowClear: true
    ajax:
      url: Spree.routes.variants_search
      datatype: "json"
      data: (term, page) ->
        q: term
      results: (data, page) ->
        results: data

    # We use Spree built-in template which should already be loaded
    formatResult: formatVariantResult
    
    # Text displayed in the select menu
    formatSelection: (variant, container) ->
      # attach data to hidden field (#consultation_classification_variant_id)
      $(@element).data
        variant:
          id: variant.id
          sku: variant.sku
          name: variant.name
      variant.name

