{==============================================================================}
{ ChipDocs.org Clean-Room Altium Designer Native Library Builder              }
{ Component : AMS1117-3_3 (C6186_SOT-223)                                           }
{ Standard  : IPC-7351B / JEDEC TO-261 (SOT-223-4) + IEEE-315 + STEP AP214    }
{ Usage     : In Altium Designer -> File -> Run Script -> CreateCleanRoomComponent }
{==============================================================================}

Procedure CreateCleanRoomFootprint;
Var
  CurrentLib : IPCB_Library;
  NewFp      : IPCB_LibComponent;
  Pad        : IPCB_Pad2;
  Track      : IPCB_Track;
  Arc        : IPCB_Arc;
Begin
  If PCBServer = Nil Then Exit;
  CurrentLib := PCBServer.GetCurrentPCBLibrary;
  If CurrentLib = Nil Then
  Begin
    ShowMessage('Please open or create a .PcbLib document in Altium Designer first.');
    Exit;
  End;
  PCBServer.PreProcess;
  NewFp := PCBServer.CreatePCBLibComp;
  NewFp.Name := 'C6186_SOT-223';
  NewFp.Description := 'AMS1117-3_3 | Clean-Room IPC-7351B Footprint (chipdocs.org)';
  CurrentLib.RegisterComponent(NewFp);
  CurrentLib.CurrentComponent := NewFp;

  Pad := PCBServer.PCBObjectFactory(ePadObject, eNoDimension, eCreate_Default);
  Pad.Layer := eTopLayer;
  Pad.Name := '1';
  Pad.X := MMsToCoord(-2.290);
  Pad.Y := MMsToCoord(-3.030);
  Pad.TopXSize := MMsToCoord(0.790);
  Pad.TopYSize := MMsToCoord(2.000);
  Pad.TopShape := eRoundedRectangular;
  Pad.HoleSize := MMsToCoord(0.000);
  NewFp.AddPCBObject(Pad);
  Pad := PCBServer.PCBObjectFactory(ePadObject, eNoDimension, eCreate_Default);
  Pad.Layer := eTopLayer;
  Pad.Name := '2';
  Pad.X := MMsToCoord(0.000);
  Pad.Y := MMsToCoord(-3.030);
  Pad.TopXSize := MMsToCoord(0.790);
  Pad.TopYSize := MMsToCoord(2.000);
  Pad.TopShape := eRoundedRectangular;
  Pad.HoleSize := MMsToCoord(0.000);
  NewFp.AddPCBObject(Pad);
  Pad := PCBServer.PCBObjectFactory(ePadObject, eNoDimension, eCreate_Default);
  Pad.Layer := eTopLayer;
  Pad.Name := '3';
  Pad.X := MMsToCoord(2.290);
  Pad.Y := MMsToCoord(-3.030);
  Pad.TopXSize := MMsToCoord(0.790);
  Pad.TopYSize := MMsToCoord(2.000);
  Pad.TopShape := eRoundedRectangular;
  Pad.HoleSize := MMsToCoord(0.000);
  NewFp.AddPCBObject(Pad);
  Pad := PCBServer.PCBObjectFactory(ePadObject, eNoDimension, eCreate_Default);
  Pad.Layer := eTopLayer;
  Pad.Name := '4';
  Pad.X := MMsToCoord(0.000);
  Pad.Y := MMsToCoord(3.030);
  Pad.TopXSize := MMsToCoord(3.300);
  Pad.TopYSize := MMsToCoord(2.000);
  Pad.TopShape := eRoundedRectangular;
  Pad.HoleSize := MMsToCoord(0.000);
  NewFp.AddPCBObject(Pad);
  Track := PCBServer.PCBObjectFactory(eTrackObject, eNoDimension, eCreate_Default);
  Track.Layer := eTopOverlay;
  Track.Width := MMsToCoord(0.15);
  Track.X1 := MMsToCoord(-3.252); Track.Y1 := MMsToCoord(1.750);
  Track.X2 := MMsToCoord(3.252); Track.Y2 := MMsToCoord(1.750);
  NewFp.AddPCBObject(Track);
  Track := PCBServer.PCBObjectFactory(eTrackObject, eNoDimension, eCreate_Default);
  Track.Layer := eTopOverlay;
  Track.Width := MMsToCoord(0.15);
  Track.X1 := MMsToCoord(3.252); Track.Y1 := MMsToCoord(-1.750);
  Track.X2 := MMsToCoord(3.252); Track.Y2 := MMsToCoord(1.750);
  NewFp.AddPCBObject(Track);
  Track := PCBServer.PCBObjectFactory(eTrackObject, eNoDimension, eCreate_Default);
  Track.Layer := eTopOverlay;
  Track.Width := MMsToCoord(0.15);
  Track.X1 := MMsToCoord(-3.252); Track.Y1 := MMsToCoord(-1.750);
  Track.X2 := MMsToCoord(3.252); Track.Y2 := MMsToCoord(-1.750);
  NewFp.AddPCBObject(Track);
  Track := PCBServer.PCBObjectFactory(eTrackObject, eNoDimension, eCreate_Default);
  Track.Layer := eTopOverlay;
  Track.Width := MMsToCoord(0.15);
  Track.X1 := MMsToCoord(-3.252); Track.Y1 := MMsToCoord(-1.750);
  Track.X2 := MMsToCoord(-3.252); Track.Y2 := MMsToCoord(1.750);
  NewFp.AddPCBObject(Track);
  Track := PCBServer.PCBObjectFactory(eTrackObject, eNoDimension, eCreate_Default);
  Track.Layer := eMechanical15;
  Track.Width := MMsToCoord(0.05);
  Track.X1 := MMsToCoord(-3.500); Track.Y1 := MMsToCoord(-4.280);
  Track.X2 := MMsToCoord(3.500); Track.Y2 := MMsToCoord(-4.280);
  NewFp.AddPCBObject(Track);
  Track := PCBServer.PCBObjectFactory(eTrackObject, eNoDimension, eCreate_Default);
  Track.Layer := eMechanical15;
  Track.Width := MMsToCoord(0.05);
  Track.X1 := MMsToCoord(3.500); Track.Y1 := MMsToCoord(-4.280);
  Track.X2 := MMsToCoord(3.500); Track.Y2 := MMsToCoord(4.280);
  NewFp.AddPCBObject(Track);
  Track := PCBServer.PCBObjectFactory(eTrackObject, eNoDimension, eCreate_Default);
  Track.Layer := eMechanical15;
  Track.Width := MMsToCoord(0.05);
  Track.X1 := MMsToCoord(3.500); Track.Y1 := MMsToCoord(4.280);
  Track.X2 := MMsToCoord(-3.500); Track.Y2 := MMsToCoord(4.280);
  NewFp.AddPCBObject(Track);
  Track := PCBServer.PCBObjectFactory(eTrackObject, eNoDimension, eCreate_Default);
  Track.Layer := eMechanical15;
  Track.Width := MMsToCoord(0.05);
  Track.X1 := MMsToCoord(-3.500); Track.Y1 := MMsToCoord(4.280);
  Track.X2 := MMsToCoord(-3.500); Track.Y2 := MMsToCoord(-4.280);
  NewFp.AddPCBObject(Track);
  Arc := PCBServer.PCBObjectFactory(eArcObject, eNoDimension, eCreate_Default);
  Arc.Layer := eTopOverlay;
  Arc.XCenter := MMsToCoord(-3.135); Arc.YCenter := MMsToCoord(-3.030);
  Arc.Radius := MMsToCoord(0.18); Arc.LineWidth := MMsToCoord(0.18);
  Arc.StartAngle := 0; Arc.EndAngle := 360;
  NewFp.AddPCBObject(Arc);
  PCBServer.PostProcess;
  CurrentLib.Board.ViewManager_FullUpdate;
  ShowMessage('ChipDocs Clean-Room Footprint C6186_SOT-223 (4 pads) created successfully!');
End;

Procedure CreateCleanRoomComponent;
Begin
  CreateCleanRoomFootprint;
End;

Procedure CreateCleanRoomPart;
Begin
  CreateCleanRoomFootprint;
End;
