#tag Window
Begin Window drug_main
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   367
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   1040629759
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "Paramedic Drug Assistant"
   Visible         =   True
   Width           =   550
   Begin Label Label1
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "My Drugs"
      TextAlign       =   1
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   11
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   355
   End
   Begin Listbox drugsLB
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   1
      ColumnsResizable=   False
      ColumnWidths    =   "*"
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   314
      HelpTag         =   "These are the drugs you have saved.  If this is empty, get to work and enter some drugs!  You can also click on any saved drug and your drug card will be displayed."
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Generic Name	Trade Name"
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   0
      ShowDropIndicator=   False
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   33
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   355
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin PushButton addDrugB
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Add Drug"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   "Click here to add a drug to your list."
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   387
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   33
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   143
   End
   Begin PushButton quitB
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Quit"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   387
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   327
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   143
   End
   Begin PushButton deleteB
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Delete Selected"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   "Click here to add a drug to your list."
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   387
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   94
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   143
   End
   Begin PushButton flashCardB
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Flash Card Testing"
      Default         =   False
      Enabled         =   False
      Height          =   20
      HelpTag         =   "Click here to activate the flash card testing function.  Random questions about your drugs will be presented.  You will think through the answer and then click ""Check"" to see if you are correct.  Examples of questions include:\n\n1. What are the indications for metoprolol?\n\n2. What is the MOA of albuterol?"
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   387
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   126
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   143
   End
   Begin PushButton detailViewB
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "View/Edit Selected"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   "Click here to view or edit the details of the selected drug."
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   387
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   62
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   143
   End
   Begin PushButton aboutB
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "About"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   387
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   302
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   143
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Function deleteSelected(name_generic As Text) As Boolean
		  Dim dbFile As FolderItem
		  Dim db As New SQLiteDatabase
		  dbFile = GetFolderItem("drugs.sqlite")
		  db.DatabaseFile = dbFile
		  If db.Connect Then
		    // get drug id
		    Dim rsID As RecordSet
		    rsID = db.SQLSelect("SELECT id_reference FROM drugs WHERE name_generic='"+ name_generic +"'")
		    Dim id As Text = rsID.IdxField(1).StringValue.ToText
		    
		    Dim deleteDrug As String = "DELETE FROM drugs WHERE id_reference = '"+ id +"';"
		    db.SQLExecute(deleteDrug)
		    If db.Error Then
		      MsgBox(db.ErrorMessage)
		    End If 
		    db.Commit
		    
		    Dim deleteTN As String = "DELETE FROM trade_names WHERE id_reference = '"+ id +"';"
		    db.SQLExecute(deleteTN)
		    If db.Error Then
		      MsgBox(db.ErrorMessage)
		    End If 
		    db.Commit
		    
		    Dim deleteIND As String = "DELETE FROM ind WHERE id_reference = '"+ id +"';"
		    db.SQLExecute(deleteIND)
		    If db.Error Then
		      MsgBox(db.ErrorMessage)
		    End If 
		    db.Commit
		    
		    Dim deleteCON As String = "DELETE FROM con WHERE id_reference = '"+ id +"';"
		    db.SQLExecute(deleteCON)
		    If db.Error Then
		      MsgBox(db.ErrorMessage)
		    End If 
		    db.Commit
		    
		    Dim deleteSE As String = "DELETE FROM se WHERE id_reference = '"+ id +"';"
		    db.SQLExecute(deleteSE)
		    If db.Error Then
		      MsgBox(db.ErrorMessage)
		    End If 
		    db.Commit
		    
		    Dim deleteSC As String = "DELETE FROM sc WHERE id_reference = '"+ id +"';"
		    db.SQLExecute(deleteSC)
		    If db.Error Then
		      MsgBox(db.ErrorMessage)
		    End If 
		    db.Commit
		    
		    Dim deleteDOS As String = "DELETE FROM dose WHERE id_reference = '"+ id +"';"
		    db.SQLExecute(deleteDOS)
		    If db.Error Then
		      MsgBox(db.ErrorMessage)
		    End If 
		    db.Commit
		    
		    refreshDrugs
		    Return True
		    
		  Else
		    Return False
		  End If
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub refreshDrugs()
		  
		  Dim dbFile As FolderItem
		  Dim db As New SQLiteDatabase
		  dbFile = GetFolderItem("drugs.sqlite")
		  db.DatabaseFile = dbFile
		  If db.Connect Then
		    // Check for database records.  If none, dialog notifiying user of new test instance
		    Dim rs As RecordSet
		    rs = db.SQLSelect("SELECT name_generic FROM drugs ORDER BY name_generic")
		    
		    If db.Error Then
		      MsgBox("Error: " + db.ErrorMessage)
		      Return
		    End If
		    
		    If rs.RecordCount > 0 Then
		      drugsLB.DeleteAllRows
		      While Not rs.EOF
		        drugsLB.AddRow(rs.IdxField(1).StringValue)
		        rs.MoveNext
		      Wend
		      
		    Else
		      drugsLB.DeleteAllRows
		      Return
		    End If
		    
		  Else
		    MsgBox("The database couldn't be opened. If this continues, please contact the developer.  Error: " + db.ErrorMessage)
		    Return
		  End If
		  
		  
		  
		  
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events drugsLB
	#tag Event
		Sub Open()
		  refreshDrugs
		End Sub
	#tag EndEvent
	#tag Event
		Sub GotFocus()
		  refreshDrugs
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events addDrugB
	#tag Event
		Sub Action()
		  Dim d As New addDrug
		  d.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events quitB
	#tag Event
		Sub Action()
		  Quit
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events deleteB
	#tag Event
		Sub Action()
		  If drugsLB.ListIndex = -1 Then
		    MsgBox ("Error - you must select a drug before you can delete it.")
		    Return
		  End If
		  
		  Dim c As New confirmWindow
		  c.show
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events flashCardB
	#tag Event
		Sub Action()
		  If drugsLB.ListIndex = -1 Then
		    MsgBox ("Error - you must select a drug before you can delete it.")
		    Return
		  End If
		  
		  Dim c As New confirmWindow
		  c.show
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events detailViewB
	#tag Event
		Sub Action()
		  If drugsLB.ListIndex = -1 Then
		    MsgBox ("Error - you must select a drug before you can view or edit it.")
		    Return
		  End If
		  
		  
		  Dim p As Text = drugsLB.Cell(drugsLB.ListIndex, 0).ToText
		  
		  // get drug id
		  Dim id As Integer
		  Dim dbFile As FolderItem
		  Dim db As New SQLiteDatabase
		  dbFile = GetFolderItem("drugs.sqlite")
		  db.DatabaseFile = dbFile
		  If db.Connect Then
		    Dim rsID As RecordSet = db.SQLSelect("SELECT id_reference FROM drugs WHERE name_generic ='"+ p +"';")
		    id = Integer.FromText(rsID.IdxField(1).StringValue.ToText)
		  End If
		  
		  app.idTargetDrug = id
		  
		  Dim d As New drugDetail
		  d.show
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events aboutB
	#tag Event
		Sub Action()
		  Dim a As New About
		  a.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="CloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Placement"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LiveResize"
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
#tag EndViewBehavior
