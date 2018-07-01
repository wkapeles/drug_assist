#tag Class
Protected Class App
Inherits Application
	#tag Event
		Sub Open()
		  // check for databases present...if none, create them...else, use them.
		  
		  // drugs.sqlite
		  Dim drugFile As FolderItem
		  Dim drugDB As New SQLiteDatabase
		  drugFile = GetFolderItem("drugs.sqlite")
		  drugDB.DatabaseFile = drugFile
		  If drugDB.Connect Then
		    drug_main.show
		    Return
		  Else 
		    Dim drugF As FolderItem
		    drugF = New FolderItem("drugs.sqlite")
		    Dim dF As New SQLiteDatabase
		    dF.DatabaseFile = drugF
		    If dF.CreateDatabaseFile Then
		      dF.SQLExecute("CREATE TABLE drugs ( id_reference INTEGER PRIMARY KEY, name_generic TEXT, moa TEXT, class TEXT, notes TEXT );")
		      dF.SQLExecute("CREATE TABLE trade_names ( id_reference INTEGER PRIMARY KEY, id_drug_fk INTEGER, name_trade TEXT);")
		      dF.SQLExecute("CREATE TABLE ind ( id_reference INTEGER PRIMARY KEY, id_drug_fk INTEGER, indication TEXT );")
		      dF.SQLExecute("CREATE TABLE con ( id_reference INTEGER PRIMARY KEY, id_drug_fk INTEGER, contraindication TEXT);")
		      dF.SQLExecute("CREATE TABLE se ( id_reference INTEGER PRIMARY KEY, id_drug_fk INTEGER, side_effect TEXT);")
		      dF.SQLExecute("CREATE TABLE sc ( id_reference INTEGER PRIMARY KEY, id_drug_fk INTEGER, special_condition TEXT);")
		      dF.SQLExecute("CREATE TABLE dose ( id_reference INTEGER PRIMARY KEY, id_drug_fk INTEGER, dose TEXT);")
		      drug_main.show
		      Return
		    Else
		      MsgBox("Drug database not created. If problem persists, please contact developer.  Error: " + dF.ErrorMessage)
		      Quit
		    End If
		  End If
		  
		  
		  
		  
		  
		End Sub
	#tag EndEvent


	#tag Constant, Name = kEditClear, Type = String, Dynamic = False, Default = \"&Delete", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"&Delete"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"&Delete"
	#tag EndConstant

	#tag Constant, Name = kFileQuit, Type = String, Dynamic = False, Default = \"&Quit", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"E&xit"
	#tag EndConstant

	#tag Constant, Name = kFileQuitShortcut, Type = String, Dynamic = False, Default = \"", Scope = Public
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"Cmd+Q"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"Ctrl+Q"
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="showInstructions"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
