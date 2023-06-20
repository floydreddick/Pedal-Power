Public Class PedalPower
  Private rpm As Integer
  Private torque As Integer
  Private wattage As Integer
  Private efficiency As Integer

' Constructor
Public Sub New(ByVal rpms As Integer, ByVal torques As Integer)
    rpm = rpms
    torque = torques
End Sub

'Compute wattage
Public Sub ComputeWattage()
    wattage = (rpm * torque) / 5252
End Sub

'Compute efficiency
Public Sub ComputeEfficiency()
    efficiency = (wattage / rpm) * 100
End Sub

' Getters and setters
Public Sub setRPM(ByVal rpms As Integer)
    rpm = rpms
End Sub

Public Sub setTorque(ByVal torques As Integer)
    torque = torques
End Sub

Public Function getRPM() As Integer
    Return rpm
End Function

Public Function getTorque() As Integer
    Return torque
End Function

Public Function getWattage() As Integer
    Return wattage
End Function

Public Function getEfficiency() As Integer
    Return efficiency
End Function

End Class