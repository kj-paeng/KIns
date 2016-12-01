program easyBIKE;

uses
  Windows,
  Forms,
  SysUtils,
  Dialogs,
  IniFiles,
  uMain in 'uMain.pas' {frmMain},
  uCloseQuery in 'uCloseQuery.pas' {frmCloseQuery},
  uDM in 'uDM.pas' {frmDM: TDataModule},
  uAbout in 'uAbout.pas' {frmAboutBox},
  uPartCode in 'uPartCode.pas' {frmPartCode},
  uVehicleRegist in 'uVehicleRegist.pas' {frmVehicleRegist},
  uCustomer in 'uCustomer.pas' {frmCustomer},
  uBikeTrade in 'uBikeTrade.pas' {frmBikeTrade},
  uRepair in 'uRepair.pas' {frmRepair},
  uSellBike in 'uSellBike.pas' {frmSellBike},
  uPopupCust in 'uPopupCust.pas' {frmPopupCust},
  uPopupBike in 'uPopupBike.pas' {frmPopupBike},
  uQryBikeStock in 'uQryBikeStock.pas' {frmQryBikeStock},
  uPartIn in 'uPartIn.pas' {frmPartIn},
  uPartOut in 'uPartOut.pas' {frmPartOut},
  uQryPartStock in 'uQryPartStock.pas' {frmQryPartStock},
  uRptBike in 'uRptBike.PAS' {rptBike},
  uQryRptBike in 'uQryRptBike.pas' {frmQryRptBike},
  uRptPart in 'uRptPart.PAS' {rptPart},
  uQryRptPart in 'uQryRptPart.pas' {frmQryRptPart},
  uRptCust in 'uRptCust.PAS' {rptCust},
  uZipPopup in 'uZipPopup.pas' {frmZipPopup},
  Unit1 in 'Unit1.pas' {Form1},
  uQuoteBike in 'uQuoteBike.pas' {frmQuoteBike},
  uCommonProcs in 'uCommonProcs.pas',
  uMemberReg in 'uMemberReg.pas' {frmMemberReg},
  uBikeQuoteList in 'uBikeQuoteList.pas' {frmBikeQuoteList},
  uLogIn in 'uLogIn.pas' {frmLogIn},
  uInitForm in 'uInitForm.pas' {frmInitForm},
  uPointView in 'uPointView.pas' {frmPointView},
  uReq_Complain in 'uReq_Complain.pas' {frmReq_Complain},
  uProgressDisp in 'uProgressDisp.pas' {frmProgressDisp},
  uRptCustList in 'uRptCustList.PAS' {rptCustList},
  uRptCustDM in 'uRptCustDM.PAS' {rptCustDM},
  uPartCodeInput in 'uPartCodeInput.pas' {frmPartCodeInput},
  uRepairCust in 'uRepairCust.pas' {frmRepairCust},
  uRepairCustList in 'uRepairCustList.pas' {frmRepairCustList},
  uRepairCustParts in 'uRepairCustParts.pas' {frmRepairCustParts},
  uPartLookup in 'uPartLookup.pas' {frmPartLookup},
  uToolHint in 'uToolHint.pas',
  uRepairReceipt in 'uRepairReceipt.pas' {frmRepairReceipt},
  uRptRepairReceipt in 'uRptRepairReceipt.PAS' {rptRepairReceipt},
  uLegalPrivacy in 'uLegalPrivacy.pas' {frmLegalPrivacy},
  uSupplier in 'uSupplier.pas' {frmSupplier},
  uCheckRepairSpec in 'uCheckRepairSpec.pas' {frmCheckRepairSpec},
  uRptCheckRepairSpec in 'uRptCheckRepairSpec.PAS' {rptCheckRepairSpec},
  uDBBackup in 'uDBBackup.pas' {frmDBBackup},
  uQryRptCust in 'uQryRptCust.pas' {frmQryRptCust},
  uQryRptRepair in 'uQryRptRepair.pas' {frmQryRptRepair},
  uAutoInsApp in 'uAutoInsApp.pas' {frmAutoInsApp},
  uAutoQuoteList in 'uAutoQuoteList.pas' {frmAutoQuoteList},
  uConverter in 'uConverter.pas' {frmConverter},
  uPartCategory in 'uPartCategory.pas' {frmPartCategory},
  uCalendar in 'uCalendar.pas' {frmCalendar},
  uCalendarPeriod in 'uCalendarPeriod.pas' {frmCalendarPeriod},
  uSchedulerDetail in 'uSchedulerDetail.pas' {frmSchedulerDetail},
  uScheduler in 'uScheduler.pas' {frmScheduler},
  uQryRptIns in 'uQryRptIns.pas' {frmQryRptIns},
  uTaxReceiptCheck in 'uTaxReceiptCheck.pas' {frmTaxReceiptCheck},
  uRptTaxReceipt in 'uRptTaxReceipt.PAS' {RptTaxReceipt},
  uSMS in 'uSMS.pas' {frmSMS},
  uSMSMng in 'uSMSMng.pas' {frmSMSMng},
  uHelpDesk in 'uHelpDesk.pas' {frmHelpDesk},
  uPreventCode in 'uPreventCode.pas' {frmPreventCode},
  uPrevention in 'uPrevention.pas' {frmPrevention},
  uPreventSMS in 'uPreventSMS.pas' {frmPreventSMS},
  Debug in 'debug.pas';

{$R *.RES}

var
  UpdateFile: String;

begin

  // Check update
  try
    BBINI := TIniFile.Create(BBUDDY_INI);
    UpdateFile := BBINI.ReaDString('UPDATE', 'RUN', '');

    if not (trim(UpdateFile) = '') then
    begin
      if WinExec(PChar(UpdateFile), SW_SHOWNORMAL) < 32 then
      begin
        Application.MessageBox('easy BIKE 엡데이트 프로그램을 찾을 수 없습니다.', '찾기 실패', MB_OK);
      end
      else
      begin
        BBIni.DeleteKey('UPDATE', 'RUN');
        Exit;
      end
    end;
  finally
    BBINI.Free;
  end;

  if TfrmLogin.Execute then
  begin
    Application.Initialize;
    Application.Title := 'easy BIKE Shop Manager';

    Application.ShowHint := false;
    HintWindowClass := TBBHintWindow;
    Application.ShowHint := True;

    Application.CreateForm(TfrmDM, frmDM);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
  end
  else
  begin
    Application.MessageBox('프로그램을 종료합니다.', 'easy BIKE 로그인 실패 ');
  end;
end.

