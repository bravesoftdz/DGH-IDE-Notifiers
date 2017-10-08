(**

  This project file defineds a DLL for a wizard / expert / plug-in for the RAD Studio IDE for
  logging various notifications generated by the RAD Studio IDE.

  @Author  David Hoyle
  @Version 1.0
  @Date    09 Jul 2017

**)
Library DGHIDENotifiers2009;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

{$R 'DGHIDENotificationsSplashScreenIcons.res' '..\DGHIDENotificationsSplashScreenIcons.RC'}

uses
  SysUtils,
  Classes,
  DGHDockableIDENotificationsForm in '..\Source\DGHDockableIDENotificationsForm.pas' {frmDockableIDENotifications},
  DGHIDENotificationTypes in '..\Source\DGHIDENotificationTypes.pas',
  DGHIDENotifiersIDENotifications in '..\Source\DGHIDENotifiersIDENotifications.pas',
  DGHIDENotifiersVersionControlNotififications in '..\Source\DGHIDENotifiersVersionControlNotififications.pas',
  DGHIDENotifiersWizard in '..\Source\DGHIDENotifiersWizard.pas',
  DGHIDENotifiersMainUnit in '..\Source\DGHIDENotifiersMainUnit.pas',
  DGHIDENotifiersCompileNotifications in '..\Source\DGHIDENotifiersCompileNotifications.pas',
  DGHIDENotifiersMessageNotifications in '..\Source\DGHIDENotifiersMessageNotifications.pas',
  DGHIDENotifiersIDEInsightNotifications in '..\Source\DGHIDENotifiersIDEInsightNotifications.pas',
  DGHIDENotificationsAboutBox in '..\Source\DGHIDENotificationsAboutBox.pas',
  DGHIDENotificationsCommon in '..\Source\DGHIDENotificationsCommon.pas',
  DGHIDENotificationsSplashScreen in '..\Source\DGHIDENotificationsSplashScreen.pas',
  DGHIDENotifiersProjectStorageNotifications in '..\Source\DGHIDENotifiersProjectStorageNotifications.pas',
  DGHIDENotifiersEditorNotifications in '..\Source\DGHIDENotifiersEditorNotifications.pas',
  DGHIDENotifiersDebuggerNotifications in '..\Source\DGHIDENotifiersDebuggerNotifications.pas',
  DGHIDENotifiersModuleNotifications in '..\Source\DGHIDENotifiersModuleNotifications.pas',
  DGHIDENotifiersProjectNotifications in '..\Source\DGHIDENotifiersProjectNotifications.pas',
  DGHIDENotifiersFormNotifications in '..\Source\DGHIDENotifiersFormNotifications.pas',
  DGHIDENotifiersMessageTokens in '..\Source\DGHIDENotifiersMessageTokens.pas',
  DGHIDENotifiersModuleNotiferCollection in '..\Source\DGHIDENotifiersModuleNotiferCollection.pas';

{$R *.res}


Begin

End.
