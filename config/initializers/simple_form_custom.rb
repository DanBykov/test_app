# Use this setup block to configure all options available in SimpleForm.
SimpleForm.setup do |config|

# Custom wrappers ------------------------------------------------------------
  config.wrappers :form_2_10 do |b|
    b.use :html5
    b.use :placeholder
    b.wrapper tag: 'div', class: 'form-group' do |ba|
      ba.use :label, class: 'control-label col-md-2'
      ba.wrapper tag: 'div', class: 'col-md-10' do |bb|
        bb.wrapper tag: 'div', class: 'input-icon right' do |bc|
          bc.use :input, class: 'form-control'
          bc.use :hint, wrap_with: { tag: 'span', class: 'help-block' }
        end
      end
    end
  end
end
