Imports System

' Day 6 Part 1

Public Class Test
    Public Shared Sub Main()
        Dim x, y As Integer
        Dim dsBuffer As String
        Dim dsLength As Integer
        Dim snippet As String
        Dim charSnip As String
        Dim rSnip As String
        Dim foundIndex As Integer
        
        dsBuffer = Console.ReadLine()
        dsLength = dsBuffer.Length()
        
        foundIndex = -1
        
        For num As Integer = 0 To dsLength-4 Step 1
        snippet = dsBuffer.Substring(num, 4)
        
        foundIndex = num
        FOR index As Integer = 0 To snippet.Length()-1 Step 1
        charSnip = snippet.Substring(index, 1)
        rSnip = snippet.Substring(0, index) & "X" & snippet.Substring(index+1)
        If rSnip.Contains(charSnip) Then
            foundIndex = -1
        End If
        Next
        If foundIndex > 4 Then
            Console.WriteLine(foundIndex + 4)
            EXIT FOR
        End If
        Next
        
        
    End Sub
End Class