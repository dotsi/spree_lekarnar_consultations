jQuery ->
  rowTemplate = Handlebars.compile('<tr><td>{{name}}</td><td><button data-hook="remove">Remove</button></td></tr>')

  $('#consultations_areas [data-hook="add_product_to_consultation_button"]').on 'click', ->
    product = $('#variant_id').data('product')
    if product
      $('[data-hook="consultation_variants_table"] tbody').prepend rowTemplate(product)
      $('#consultations_areas input[type="hidden"].variant_autocomplete')
        .data('product', null)
        .select2('data', null)

    return false # prevent button behaviour (jump to top)

  $('#consultations_areas').on 'click', 'button[data-hook="remove"]', ->
    $(this).parents('tr').remove()
    return false

  $('#consultations_areas .variant_autocomplete').select2
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
    formatSelection: (product, container) ->
      # attach data to hidden field (#variant_id)
      $(@element).data
        product:
          sku: product.sku
          name: product.name
      product.name


  $('#consultations_areas #consultation_taxon_id').select2()
