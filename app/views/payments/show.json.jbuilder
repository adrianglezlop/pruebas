json.array!(@credit.payments.order(:fecha_de_pago)) do |payment|
  json.extract! payment, :id, :folio,:fecha_de_pago,:recibo,:estatus,:importe,:pago,:interes
  json.activo payment.activo
  json.importe_formato Dinero.to_money payment.importe
  json.importe_con_pago payment.importe.to_f - payment.total_pagado.to_f 
  json.fecha_de_pago_formato payment.fecha_de_pago.strftime("%d/%m/%Y")
  json.interes_formato Dinero.to_money payment.interes
  json.importe_con_pago_formato Dinero.to_money (payment.importe.to_f - payment.total_pagado.to_f)
  json.ultimo_recibo payment.tickets.last
  json.ultimo_recibo_url tickets_path(payment.tickets.last)
end
