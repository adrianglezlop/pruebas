json.array!(@agents) do |agent|
  json.extract! agent, :id, :clave, :nombre_del_agente, :apellido_materno, :apellido_paterno, :nombre_1, :nombre_2, :RFC, :calle, :numero_interior, :numero_exterior, :colonia, :codigo_postal, :municipio, :estado, :CURP, :seguro_social, :INE, :nacionalidad, :fecha_de_nacimiento, :ciudad_de_nacimiento, :estado_de_nacimiento, :pais_de_nacimiento, :sexo, :telefono_de_casa, :telefono_celular, :correo_electronico_1, :correo_electronico_2, :cuenta_bancaria, :banco, :comision_por_cobranza, :comision_por_colocacion, :monto_maximo_de_prestamo, :permitir_prestamo_multiple
  json.nombre_completo agent.nombre_completo
  json.url agent_url(agent, format: :json)
end
