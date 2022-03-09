Feature: Transacciones bancarias por aplicacion
  yo como usuario poseedor de una cuenta bancaria
  necesito realizar transferencias y pagos desde la aplicacion bancaria
  Para pagar mis deudas

  Scenario: Transferencia bancaria a otras cuentas
    Given  El usuario se encuentra en el apartado de transferencia a otras cuentas desde la aplicacion bancaria
    When ingresa los datos para realizar la transferencia
      | numeroCuenta | valorTransferencia |
      | 00000000001  | 1000               |
    Then el usuario deberia observar el comprobante de pago generado despues de la transaccion

  Scenario: Pago tarjetas de credito
    Given el usuario se encuentra en el apartado de pago de tarjetas desde la aplicacion bancaria
    When el selecciona la tarjeta de credito y realiza el pago de esta
    Then deberia de observar el monto que se pago descontado de sus ahorros

  Scenario:Pago de facturas
    Given el usuario accede al apartado de pago de facturas
    When el usuario selecciona la factura inscrita a pagar e ingresa el valor a pagar
      | valorPago |
    Then el deberia de ver el mensaje de pago exitoso y el comprobante de la factura paga
