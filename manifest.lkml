project_name: "customer_analytics"


#localization_settings: {
#  localization_level: permissive
#  default_locale: es_ES
#}

constant: big_number_format {
  value: "
  {% if value < 0 %}
  {% assign abs_value = value  %}
  {% assign pos_neg = '-' %}
  {% else %}
  {% assign abs_value = value  %}
  {% assign pos_neg = '' %}
  {% endif %}

  {% if abs_value >=1000000000 %}
  {{pos_neg}}{{ abs_value | divided_by: 1000000000.0 | round: 2 }}B
  {% elsif abs_value >=1000000 %}
  {{pos_neg}}{{ abs_value | divided_by: 1000000.0 | round: 2 }}M
  {% elsif abs_value >=1000 %}
  {{pos_neg}}{{ abs_value | divided_by: 1000.0 | round: 2 }}K
  {% else %}
  {{pos_neg}}{{ abs_value }}
  {% endif %}
  "
}

constant: big_money_format {
  value: "
  {% if value < 0 %}
  {% assign abs_value = value  %}
  {% assign pos_neg = '-' %}
  {% else %}
  {% assign abs_value = value  %}
  {% assign pos_neg = '' %}
  {% endif %}

  {% if abs_value >=1000000000 %}
  {{pos_neg}}${{ abs_value | divided_by: 1000000000.0 | round: 2 }}B
  {% elsif abs_value >=1000000 %}
  {{pos_neg}}${{ abs_value | divided_by: 1000000.0 | round: 2 }}M
  {% elsif abs_value >=1000 %}
  {{pos_neg}}${{ abs_value | divided_by: 1000.0 | round: 2 }}K
  {% else %}
  {{pos_neg}}${{ abs_value }}
  {% endif %}
  "
}
