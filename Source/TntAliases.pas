unit TntAliases;

// Tnt Unicode functions/procedures/classes Aliases
// for fast codding

// Mohsen E.Davatgar - No Rights Reserved. 8/28/2021
// Tested with Delphi 7 Enterprise

interface

uses
  TntSystem, TntClasses, Controls, TntControls, Dialogs, TntForms, TntDialogs,
  TntFileCtrl, Graphics, Windows, TntGraphics, Classes, Menus, TntMenus,
  TntStdCtrls, SysUtils, TntSysUtils, TntWideStrUtils;

//Units that not yet implemented:   TntComCtrls;

const
  // TntSystem
  LoadResStringW: function(ResStringRec: PResStringRec): WideString = TntSystem.WideLoadResString;
  ParamCountW: function: Integer = TntSystem.WideParamCount;
  ParamStrW: function(Index: Integer): WideString = TntSystem.WideParamStr;

  //TntControls
  GetHintW: function(Control: TControl): WideString = TntControls.WideGetHint;
  GetShortHintW: function(const Hint: WideString): WideString = TntControls.WideGetShortHint;
  GetLongHintW: function(const Hint: WideString): WideString = TntControls.WideGetLongHint;

  //TntDialogs
  ShowMessageW: procedure(const Msg: WideString) = TntDialogs.WideShowMessage;
  ShowMessageFmtW: procedure(const Msg: WideString; Params: array of const) = TntDialogs.WideShowMessageFmt;
  ShowMessagePosW: procedure(const Msg: WideString; X, Y: Integer) = TntDialogs.WideShowMessagePos;
  InputQueryW: function(const ACaption, APrompt: WideString; var Value: WideString): Boolean = TntDialogs.WideInputQuery;
  InputBoxW: function(const ACaption, APrompt, ADefault: WideString): WideString = TntDialogs.WideInputBox;
  PromptForFileNameW: function(var AFileName: WideString; const AFilter: WideString = '';
    const ADefaultExt: WideString = ''; const ATitle: WideString = '';
    const AInitialDir: WideString = ''; SaveDialog: Boolean = False): Boolean = TntDialogs.WidePromptForFileName;

  //TntFileCtrl
  SelectDirectoryW: function(const Caption: WideString; const Root: WideString; var Directory: WideString): Boolean = TntFileCtrl.WideSelectDirectory;

  //TntGraphics
  CanvasTextRectW: procedure(Canvas: TCanvas; Rect: TRect; X, Y: Integer; const Text: WideString) = TntGraphics.WideCanvasTextRect;
  CanvasTextOutW: procedure(Canvas: TCanvas; X, Y: Integer; const Text: WideString) = TntGraphics.WideCanvasTextOut;
  CanvasTextExtentW: function(Canvas: TCanvas; const Text: WideString): TSize = TntGraphics.WideCanvasTextExtent;
  DCTextExtentW: function(hDC: THandle; const Text: WideString): TSize = TntGraphics.WideDCTextExtent;
  CanvasTextWidthW: function(Canvas: TCanvas; const Text: WideString): Integer = TntGraphics.WideCanvasTextWidth;
  CanvasTextHeightW: function(Canvas: TCanvas; const Text: WideString): Integer = TntGraphics.WideCanvasTextHeight;

  //TntMenus
  NewSubMenuW: function(const ACaption: WideString; hCtx: THelpContext; const AName: TComponentName; const Items: array of TTntMenuItem; AEnabled: Boolean): TTntMenuItem = TntMenus.WideNewSubMenu;
  NewItemW: function(const ACaption: WideString; AShortCut: TShortCut; AChecked, AEnabled: Boolean; AOnClick: TNotifyEvent; hCtx: THelpContext; const AName: TComponentName): TTntMenuItem = TntMenus.WideNewItem;

  ShortCutToTextW: function(WordShortCut: Word): WideString = TntMenus.WideShortCutToText;
  TextToShortCutW: function(Text: WideString): TShortCut = TntMenus.WideTextToShortCut;
  GetHotkeyW: function(const Text: WideString): WideString = TntMenus.WideGetHotkey;
  StripHotkeyW: function(const Text: WideString): WideString = TntMenus.WideStripHotkey;
  SameCaptionW: function(const Text1, Text2: WideString): Boolean = TntMenus.WideSameCaption;

  GetMenuItemCaptionW: function(MenuItem: TMenuItem {TNT-ALLOW TMenuItem}): WideString = TntMenus.WideGetMenuItemCaption;
  GetMenuItemHintW: function(MenuItem: TMenuItem {TNT-ALLOW TMenuItem}): WideString = TntMenus.WideGetMenuItemHint;

  //TntSysUtils
  LineSeparatorW = WideLineSeparator;

  GetModuleFileNameW: function(Instance: HModule): WideString = TntSysUtils.WideGetModuleFileName;
  SafeLoadLibraryW: function(const Filename: WideString; ErrorMode: UINT): HModule = TntSysUtils.WideSafeLoadLibrary;
  TextPosW: function(const SubStr, S: WideString): Integer = TntSysUtils.WideTextPos;
  TextPosExW: function(const SubStr, S: WideString; Offset: Integer = 1): Integer = TntSysUtils.WideTextPosEx;
  PosExW: function(const SubStr, S: WideString; Offset: Integer = 1): Integer = TntSysUtils.WidePosEx;
  IncludeTrailingBackslashW: function(const S: WideString): WideString = TntSysUtils.WideIncludeTrailingBackslash;
  IncludeTrailingPathDelimiterW: function(const S: WideString): WideString = TntSysUtils.WideIncludeTrailingPathDelimiter;
  ExcludeTrailingPathDelimiterW: function(const S: WideString): WideString = TntSysUtils.WideExcludeTrailingPathDelimiter;
  IsDelimiterW: function(const Delimiters, S: WideString; Index: Integer): Boolean = TntSysUtils.WideIsDelimiter;
  IsPathDelimiterW: function(const S: WideString; Index: Integer): Boolean = TntSysUtils.WideIsPathDelimiter;
  LastDelimiterW: function(const Delimiters, S: WideString): Integer = TntSysUtils.WideLastDelimiter;
  ChangeFileExtW: function(const Filename, Extension: WideString): WideString = TntSysUtils.WideChangeFileExt;
  ExtractFilePathW: function(const Filename: WideString): WideString = TntSysUtils.WideExtractFilePath;
  ExtractFileDirW: function(const Filename: WideString): WideString = TntSysUtils.WideExtractFileDir;
  ExtractFileDriveW: function(const Filename: WideString): WideString = TntSysUtils.WideExtractFileDrive;
  ExtractFileNameW: function(const Filename: WideString): WideString = TntSysUtils.WideExtractFileName;
  ExtractFileExtW: function(const Filename: WideString): WideString = TntSysUtils.WideExtractFileExt;
  ExtractRelativePathW: function(const BaseName, DestName: WideString): WideString = TntSysUtils.WideExtractRelativePath;
  ExpandFileNameW: function(const Filename: WideString): WideString = TntSysUtils.WideExpandFileName;
  ExtractShortPathNameW: function(const Filename: WideString): WideString = TntSysUtils.WideExtractShortPathName;
  FileCreateW: function(const Filename: WideString): Integer = TntSysUtils.WideFileCreate;
  FileOpenW: function(const Filename: WideString; Mode: LongWord): Integer = TntSysUtils.WideFileOpen;
  DirectoryExistsW: function(const Name: WideString): Boolean = TntSysUtils.WideDirectoryExists;
  FileExistsW: function(const Name: WideString): Boolean = TntSysUtils.WideFileExists;
  FileGetAttrW: function(const Filename: WideString): Cardinal = TntSysUtils.WideFileGetAttr;
  FileSetAttrW: function(const Filename: WideString; Attr: Integer): Boolean = TntSysUtils.WideFileSetAttr;
  FileIsReadOnlyW: function(const Filename: WideString): Boolean = TntSysUtils.WideFileIsReadOnly;
  FileSetReadOnlyW: function(const Filename: WideString; ReadOnly: Boolean): Boolean = TntSysUtils.WideFileSetReadOnly;
  ForceDirectoriesW: function(Dir: WideString): Boolean = TntSysUtils.WideForceDirectories;
  FileSearchW: function(const Name, DirList: WideString): WideString = TntSysUtils.WideFileSearch;
  RenameFileW: function(const OldName, NewName: WideString): Boolean = TntSysUtils.WideRenameFile;
  DeleteFileW: function(const Filename: WideString): Boolean = TntSysUtils.WideDeleteFile;
  CopyFileW: function(FromFile, ToFile: WideString; FailIfExists: Boolean): Boolean = TntSysUtils.WideCopyFile;
  FindFirstW: function(const Path: WideString; Attr: Integer; var F: TSearchRecW): Integer = TntSysUtils.WideFindFirst;
  FindNextW: function(var F: TSearchRecW): Integer = TntSysUtils.WideFindNext;
  CreateDirW: function(const Dir: WideString): Boolean = TntSysUtils.WideCreateDir;
  RemoveDirW: function(const Dir: WideString): Boolean = TntSysUtils.WideRemoveDir;
  GetCurrentDirW: function(): WideString = TntSysUtils.WideGetCurrentDir;
  SetCurrentDirW: function(const Dir: WideString): Boolean = TntSysUtils.WideSetCurrentDir;
  GetLocaleStrW: function(LocaleID: LCID; LocaleType: Integer; const Default: WideString): WideString = TntSysUtils.WideGetLocaleStr;
  SysErrorMessageW: function(ErrorCode: Integer): WideString = TntSysUtils.WideSysErrorMessage;
  LibraryErrorMessageW: function(const LibName: WideString; Dll: THandle; ErrorCode: Integer): WideString = TntSysUtils.WideLibraryErrorMessage;
  LoadPackageW: function(const Name: WideString): HModule = TntSysUtils.WideLoadPackage;
  FindCloseW: procedure(var F: TSearchRecW) = TntSysUtils.WideFindClose;

  //TntWideStrUtils
  LastCharW: function(const S: WideString): PWideChar = TntWideStrUtils.WideLastChar;
  QuotedStrW: function(const S: WideString; Quote: WideChar): WideString = TntWideStrUtils.WideQuotedStr;
  ExtractQuotedStrW: function(var Src: PWideChar; Quote: WideChar): WideString = TntWideStrUtils.WideExtractQuotedStr;
  DequotedStrW: function(const S: WideString; AQuote: WideChar): WideString = TntWideStrUtils.WideDequotedStr;

//TntDialogs
function CreateMessageDialogW(const Msg: WideString; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons): TTntForm; overload;
function CreateMessageDialogW(const Msg: WideString; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons; DefaultButton: TMsgDlgBtn): TTntForm; overload;

function MessageDlgW(const Msg: WideString; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons; HelpCtx: Longint): Integer; overload;
function MessageDlgW(const Msg: WideString; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons; HelpCtx: Longint; DefaultButton: TMsgDlgBtn): Integer; overload;

function MessageDlgPosW(const Msg: WideString; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons; HelpCtx: Longint; X, Y: Integer): Integer; overload;
function MessageDlgPosW(const Msg: WideString; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons; HelpCtx: Longint; X, Y: Integer; DefaultButton: TMsgDlgBtn): Integer; overload;

function MessageDlgPosHelpW(const Msg: WideString; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons; HelpCtx: Longint; X, Y: Integer;
  const HelpFileName: WideString): Integer; overload;
function MessageDlgPosHelpW(const Msg: WideString; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons; HelpCtx: Longint; X, Y: Integer;
  const HelpFileName: WideString; DefaultButton: TMsgDlgBtn): Integer; overload;

//TntSysUtils
function WrapTextW(const Line, BreakStr: WideString; const BreakChars: TSysCharSet;
  MaxCol: Integer): WideString; overload;
function WrapTextW(const Line: WideString; MaxCol: Integer): WideString; overload;

function FileAgeW(const Filename: WideString): Integer; overload;
function FileAgeW(const Filename: WideString; out FileDateTime: TDateTime): Boolean; overload;

type
  //General
  StringW = WideString;
  PCharW = ^CharW;
  CharW = WideChar;

  //TntClasses
  TFileStreamW = class(TTntFileStream);
  TMemoryStreamW = class(TTntMemoryStream);
  TResourceStreamW = class(TTntResourceStream);
  TStringListW = class(TTntStringList);
  TStringsW = class(TTntStrings);
  TStringStreamW = class(TTntWideStringStream);

implementation

function CreateMessageDialogW(const Msg: WideString; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons): TTntForm; overload;
begin
  Result := TntDialogs.WideCreateMessageDialog(Msg, DlgType, Buttons);
end;

function CreateMessageDialogW(const Msg: WideString; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons; DefaultButton: TMsgDlgBtn): TTntForm; overload;
begin
  Result := TntDialogs.WideCreateMessageDialog(Msg, DlgType, Buttons, DefaultButton);
end;

function MessageDlgW(const Msg: WideString; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons; HelpCtx: Longint): Integer; overload;
begin
  Result := TntDialogs.WideMessageDlg(Msg, DlgType, Buttons, HelpCtx);
end;

function MessageDlgW(const Msg: WideString; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons; HelpCtx: Longint; DefaultButton: TMsgDlgBtn): Integer; overload;
begin
  Result := TntDialogs.WideMessageDlg(Msg, DlgType, Buttons, HelpCtx, DefaultButton);
end;

function MessageDlgPosW(const Msg: WideString; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons; HelpCtx: Longint; X, Y: Integer): Integer; overload;
begin
  Result := TntDialogs.WideMessageDlgPos(Msg, DlgType, Buttons, HelpCtx, X, Y);
end;

function MessageDlgPosW(const Msg: WideString; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons; HelpCtx: Longint; X, Y: Integer; DefaultButton: TMsgDlgBtn): Integer; overload;
begin
  Result := TntDialogs.WideMessageDlgPos(Msg, DlgType, Buttons, HelpCtx, X, Y, DefaultButton);
end;

function MessageDlgPosHelpW(const Msg: WideString; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons; HelpCtx: Longint; X, Y: Integer;
  const HelpFileName: WideString): Integer; overload;
begin
  Result := TntDialogs.WideMessageDlgPosHelp(Msg, DlgType, Buttons, HelpCtx, X, Y, HelpFileName);
end;

function MessageDlgPosHelpW(const Msg: WideString; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons; HelpCtx: Longint; X, Y: Integer;
  const HelpFileName: WideString; DefaultButton: TMsgDlgBtn): Integer; overload;
begin
  Result := TntDialogs.WideMessageDlgPosHelp(Msg, DlgType, Buttons, HelpCtx, X, Y, HelpFileName, DefaultButton);
end;

function WrapTextW(const Line, BreakStr: WideString; const BreakChars: TSysCharSet;
  MaxCol: Integer): WideString; overload;
begin
  Result := TntSysUtils.WideWrapText(Line, BreakStr, BreakChars, MaxCol);
end;

function WrapTextW(const Line: WideString; MaxCol: Integer): WideString; overload;
begin
  Result := TntSysUtils.WideWrapText(Line, MaxCol);
end;

function FileAgeW(const Filename: WideString): Integer; overload;
begin
  Result := TntSysUtils.WideFileAge(Filename);
end;

function FileAgeW(const Filename: WideString; out FileDateTime: TDateTime): Boolean; overload;
begin
  Result := TntSysUtils.WideFileAge(Filename, FileDateTime);
end;

end.
