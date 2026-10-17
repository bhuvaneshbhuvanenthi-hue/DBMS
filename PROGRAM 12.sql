Form1 Coding 
Dim cn1 As New ADODB.Connection 
Dim rs1 As New ADODB.Recordset 
Dim rs2 As New ADODB.Recordset 
Dim n As String 
Private Sub Combo1_LostFocus() 
s2 = "select * from product where pname='" & Combo1.Text & "' " 
Set rs2 = New ADODB.Recordset 
rs2.CursorType = adOpenDynamic 
rs2.LockType = adLockOptimistic 
rs2.ActiveConnection = cn1  
30  
rs2.Open s2 
Text4.Text = rs2(4) 
Text2.Text = rs2(2) 
End Sub 
Private Sub Command1_Click() 
Me.Hide 
Form2.Show 
End Sub 
Private Sub Command2_Click() 
Form1.Show 
End Sub 
Private Sub Command3_Click() 
End 
End Sub 
Private Sub Command5_Click() 
rs1.AddNew 
rs1.Fields(0) = Text1.Text 
rs1.Fields(1) = Text5.Text 
rs1.Fields(2) = Combo1.Text 
rs1.Fields(3) = Text3.Text 
rs1.Fields(4) = Text6.Text 
rs2.Fields(2) = rs2.Fields(2) - Text3.Text 
rs2.Update 
rs1.Update 
DataGrid1.Refresh 
Text2.Text = "" 
Text3.Text = "" 
Text4.Text = "" 
Text6.Text = "" 
Combo1.Text = "" 
Text1.Text = rs1.RecordCount + 1 
rs1.MoveNext 
rs1.MovePrevious 
End Sub 
Private Sub Command6_Click() 
Text2.Text = "" 
Text3.Text = "" 
Text4.Text = "" 
Text6.Text = "" 
Combo1.Text = "" 
End Sub 
Private Sub Form_Load() 
Text5.Text = Date$ 
s2 = "select * from product" 
s1 = "select * from billproduct" 
Set cn1 = New ADODB.Connection  
31  
cn1.CursorLocation = adUseClient 
'cn1.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data 
Source=E:\Railway\Railway Reservation.mdb;Persist Security Info=False" 
cn1.ConnectionString = "Provider=MSDAORA.1;Password=tiger;User ID=scott;Data 
Source=common;Persist Security Info=True" 
cn1.Open 
Set rs1 = New ADODB.Recordset 
rs1.CursorType = adOpenDynamic 
rs1.LockType = adLockOptimistic 
rs1.ActiveConnection = cn1 
rs1.Open s1 
Set DataGrid1.DataSource = rs1 
Text1.Text = rs1.RecordCount + 1 
Set rs2 = New ADODB.Recordset 
rs2.CursorType = adOpenDynamic 
rs2.LockType = adLockOptimistic 
rs2.ActiveConnection = cn1 
rs2.Open s2 
If rs2.RecordCount > 0 Then 
rs2.MoveFirst 
For i = 0 To rs2.RecordCount - 1 
Combo1.AddItem (rs2.Fields(1).Value) 
rs2.MoveNext 
Next 
End If 
rs2.Close 
End Sub 
Private Sub Text3_LostFocus() 
Text6.Text = Text4.Text * Text3.Text 
End Sub 
Form2 Coding 
Dim cn1 As New ADODB.Connection 
Dim rs1 As New ADODB.Recordset 
Dim n As String 
Private Sub Command1_Click() 
Form2.Show 
End Sub 
Private Sub Command2_Click() 
Me.Hide 
Form1.Show 
End Sub 
Private Sub Command3_Click() 
End 
End Sub 
Private Sub Command5_Click() 
Department of IT  
32  
rs1.AddNew 
rs1.Fields(0) = Text1.Text 
rs1.Fields(1) = Text3.Text 
rs1.Fields(2) = Text2.Text 
rs1.Fields(3) = Text5.Text 
rs1.Fields(4) = Text4.Text 
rs1.Update 
DataGrid1.Refresh 
Text2.Text = "" 
Text3.Text = "" 
Text4.Text = "" 
Text5.Text = "" 
Text1.Text = rs1.RecordCount + 1 
rs1.MoveNext 
rs1.MovePrevious 
End Sub 
Private Sub Command6_Click() 
Text2.Text = "" 
Text3.Text = "" 
Text4.Text = "" 
Text5.Text = "" 
End Sub 
Private Sub Form_Load() 
Text5.Text = Date$ 
s1 = "select * from product" 
Set cn1 = New ADODB.Connection 
cn1.CursorLocation = adUseClient 
'cn1.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data 
Source=E:\Railway\Railway Reservation.mdb;Persist Security Info=False" 
cn1.ConnectionString = "Provider=MSDAORA.1;Password=tiger;User ID=scott;Data 
Source=common;Persist Security Info=True" 
cn1.Open 
Set rs1 = New ADODB.Recordset 
rs1.CursorType = adOpenDynamic 
rs1.LockType = adLockOptimistic 
rs1.ActiveConnection = cn1 
rs1.Open s1 
Set DataGrid1.DataSource = rs1 
Text1.Text = rs1.RecordCount + 1 
End Sub 
SQL 
Create table product(pno number(5),pname varchar(20),sqty number(5),pdate date,rate 
number(5)); 
Create table billproduct(billno number(5),billdate date,icecream varchar(20),orderqty 
number(5),rate number(5)); 
Department of IT 

 
 
Output 
Form1 
 
Form2 
 
