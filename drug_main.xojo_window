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
   Height          =   400
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
   Width           =   600
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
      Left            =   437
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
      Left            =   437
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
      Top             =   359
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   143
   End
End
#tag EndWindow

#tag WindowCode
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
