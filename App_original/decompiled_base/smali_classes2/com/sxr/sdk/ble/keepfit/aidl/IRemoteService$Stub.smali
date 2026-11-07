.class public abstract Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;
.super Landroid/os/Binder;
.source "IRemoteService.java"

# interfaces
.implements Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_SetScreenLightTime:I = 0x6b

.field static final TRANSACTION_closeConnection:I = 0xc

.field static final TRANSACTION_connectAiServerNotification:I = 0x64

.field static final TRANSACTION_connectBt:I = 0x8

.field static final TRANSACTION_connectFtp:I = 0x52

.field static final TRANSACTION_disconnectBt:I = 0xb

.field static final TRANSACTION_editDeviceDialCustom:I = 0x37

.field static final TRANSACTION_getAdvSensorOfflineData:I = 0x62

.field static final TRANSACTION_getBandFunction:I = 0x24

.field static final TRANSACTION_getConnectedDevice:I = 0xa

.field static final TRANSACTION_getCurSportData:I = 0xf

.field static final TRANSACTION_getDataByDay:I = 0x1d

.field static final TRANSACTION_getDeviceBatery:I = 0x14

.field static final TRANSACTION_getDeviceCode:I = 0x29

.field static final TRANSACTION_getDeviceDial:I = 0x34

.field static final TRANSACTION_getDeviceDialCustom:I = 0x38

.field static final TRANSACTION_getDeviceFileState:I = 0x53

.field static final TRANSACTION_getDeviceInfo:I = 0x15

.field static final TRANSACTION_getDeviceRssi:I = 0x2f

.field static final TRANSACTION_getDeviceSystemStateInfo:I = 0x58

.field static final TRANSACTION_getDialServerInfo:I = 0x4a

.field static final TRANSACTION_getEcgHistory:I = 0x2d

.field static final TRANSACTION_getEqInfo:I = 0x4c

.field static final TRANSACTION_getMediaFileState:I = 0x55

.field static final TRANSACTION_getMultipleSportData:I = 0x22

.field static final TRANSACTION_getOtaInfo:I = 0x27

.field static final TRANSACTION_getOxygenOfflineData:I = 0x61

.field static final TRANSACTION_getWifiState:I = 0x50

.field static final TRANSACTION_isAuthrize:I = 0x4

.field static final TRANSACTION_isConnectBt:I = 0x9

.field static final TRANSACTION_notifyDownloadFtpFileCompleted:I = 0x56

.field static final TRANSACTION_openAiAudioState:I = 0x69

.field static final TRANSACTION_openAiState:I = 0x66

.field static final TRANSACTION_openRawDataNotification:I = 0x63

.field static final TRANSACTION_openSDKLog:I = 0x26

.field static final TRANSACTION_openWifiApMode:I = 0x5c

.field static final TRANSACTION_queryAiState:I = 0x67

.field static final TRANSACTION_queryOfflineSpeechRecognitionState:I = 0x6d

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_registerCallback2:I = 0x2

.field static final TRANSACTION_saveFileToSystemAlbum:I = 0x68

.field static final TRANSACTION_scanDevice:I = 0x7

.field static final TRANSACTION_scanWifi:I = 0x51

.field static final TRANSACTION_sendPhoneCallState:I = 0x39

.field static final TRANSACTION_sendPhoneVolume:I = 0x3f

.field static final TRANSACTION_sendVibrationSignal:I = 0x10

.field static final TRANSACTION_sendWeather:I = 0x1f

.field static final TRANSACTION_setAILang:I = 0x57

.field static final TRANSACTION_setAiChatState:I = 0x59

.field static final TRANSACTION_setAiCommandType:I = 0x6c

.field static final TRANSACTION_setAiConnectionMethod:I = 0x60

.field static final TRANSACTION_setAiExtraAction:I = 0x65

.field static final TRANSACTION_setAlarm:I = 0x16

.field static final TRANSACTION_setAntiLost:I = 0x20

.field static final TRANSACTION_setAppId:I = 0x3d

.field static final TRANSACTION_setAppState:I = 0x5d

.field static final TRANSACTION_setAutoHeartMode:I = 0x1a

.field static final TRANSACTION_setBPAdjust:I = 0x32

.field static final TRANSACTION_setBindedInfo:I = 0x40

.field static final TRANSACTION_setBloodOxygenMode:I = 0x4b

.field static final TRANSACTION_setBloodPressureMode:I = 0x21

.field static final TRANSACTION_setChatgptContent:I = 0x48

.field static final TRANSACTION_setContactCrc:I = 0x3b

.field static final TRANSACTION_setContactInfo:I = 0x3c

.field static final TRANSACTION_setDeviceCode:I = 0x28

.field static final TRANSACTION_setDeviceDialState:I = 0x35

.field static final TRANSACTION_setDeviceFileState:I = 0x54

.field static final TRANSACTION_setDeviceHeartRateArea:I = 0x25

.field static final TRANSACTION_setDeviceInfo:I = 0x1b

.field static final TRANSACTION_setDeviceMode:I = 0x17

.field static final TRANSACTION_setDeviceName:I = 0x2e

.field static final TRANSACTION_setDeviceTime:I = 0xd

.field static final TRANSACTION_setDeviceWallpaperState:I = 0x36

.field static final TRANSACTION_setECardInfoContent:I = 0x42

.field static final TRANSACTION_setECardInfoCrc:I = 0x41

.field static final TRANSACTION_setEcgMode:I = 0x2c

.field static final TRANSACTION_setEqInfo2:I = 0x4d

.field static final TRANSACTION_setFemaleReminder:I = 0x3a

.field static final TRANSACTION_setGSensorIndState:I = 0x5a

.field static final TRANSACTION_setGoalStep:I = 0x23

.field static final TRANSACTION_setHeartRateMode:I = 0x19

.field static final TRANSACTION_setHourFormat:I = 0x1c

.field static final TRANSACTION_setIdleTime:I = 0x12

.field static final TRANSACTION_setLanguage:I = 0x1e

.field static final TRANSACTION_setNotify:I = 0x18

.field static final TRANSACTION_setOfflineSpeechRecognitionState:I = 0x5b

.field static final TRANSACTION_setOption:I = 0x5

.field static final TRANSACTION_setPhoneMac:I = 0x3e

.field static final TRANSACTION_setPhontMode:I = 0x11

.field static final TRANSACTION_setPressureMode:I = 0x70

.field static final TRANSACTION_setReminder:I = 0x30

.field static final TRANSACTION_setReminderText:I = 0x31

.field static final TRANSACTION_setScanMode:I = 0x6

.field static final TRANSACTION_setSleepTime:I = 0x13

.field static final TRANSACTION_setSmsRspInfoContent:I = 0x44

.field static final TRANSACTION_setSmsRspInfoCrc:I = 0x43

.field static final TRANSACTION_setSmsRspSendAck:I = 0x45

.field static final TRANSACTION_setSpoMode:I = 0x6e

.field static final TRANSACTION_setSugarMode:I = 0x6f

.field static final TRANSACTION_setTemperatureMode:I = 0x33

.field static final TRANSACTION_setTouchMode:I = 0x5f

.field static final TRANSACTION_setUserInfo:I = 0xe

.field static final TRANSACTION_setUuid:I = 0x2a

.field static final TRANSACTION_setWifiHotSpotInfo:I = 0x4e

.field static final TRANSACTION_setWifiHotSpotInfoEx:I = 0x4f

.field static final TRANSACTION_setWorshipInfo:I = 0x5e

.field static final TRANSACTION_startFactoryTestMode:I = 0x49

.field static final TRANSACTION_startFileOta:I = 0x46

.field static final TRANSACTION_startFtpDownloadTask:I = 0x6a

.field static final TRANSACTION_translateBmpToBin:I = 0x47

.field static final TRANSACTION_unregisterCallback:I = 0x3

.field static final TRANSACTION_writeCharacteristic:I = 0x2b


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 549
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 550
    const-string v0, "com.sxr.sdk.ble.keepfit.aidl.IRemoteService"

    invoke-virtual {p0, p0, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 561
    :cond_0
    const-string v0, "com.sxr.sdk.ble.keepfit.aidl.IRemoteService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 562
    instance-of v1, v0, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz v1, :cond_1

    .line 563
    check-cast v0, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    return-object v0

    .line 565
    :cond_1
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p3

    .line 574
    const-string v3, "com.sxr.sdk.ble.keepfit.aidl.IRemoteService"

    const/4 v7, 0x1

    if-lt v1, v7, :cond_0

    const v4, 0xffffff

    if-gt v1, v4, :cond_0

    .line 575
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v4, 0x5f4e5446

    if-ne v1, v4, :cond_1

    .line 578
    invoke-virtual {v6, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    :cond_1
    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    move-object v11, v2

    move-object v9, v6

    .line 1715
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1707
    :pswitch_0
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    .line 1708
    :cond_2
    invoke-virtual {v0, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setPressureMode(Z)I

    move-result v1

    .line 1709
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 1710
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1698
    :pswitch_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    .line 1699
    :cond_3
    invoke-virtual {v0, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setSugarMode(Z)I

    move-result v1

    .line 1700
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 1701
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1689
    :pswitch_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    .line 1690
    :cond_4
    invoke-virtual {v0, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setSpoMode(Z)I

    move-result v1

    .line 1691
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 1692
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1681
    :pswitch_3
    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->queryOfflineSpeechRecognitionState()I

    move-result v1

    .line 1682
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 1683
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1673
    :pswitch_4
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1674
    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setAiCommandType(I)I

    move-result v1

    .line 1675
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 1676
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1664
    :pswitch_5
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1665
    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->SetScreenLightTime(I)I

    move-result v1

    .line 1666
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 1667
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1648
    :pswitch_6
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1650
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1652
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1654
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1656
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1657
    invoke-virtual/range {v0 .. v5}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->startFtpDownloadTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1658
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1639
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v3, 0x1

    .line 1640
    :cond_5
    invoke-virtual {v0, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->openAiAudioState(Z)I

    move-result v1

    .line 1641
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 1642
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1630
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1631
    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->saveFileToSystemAlbum(Ljava/lang/String;)I

    move-result v1

    .line 1632
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 1633
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1622
    :pswitch_9
    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->queryAiState()I

    move-result v1

    .line 1623
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 1624
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1614
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v3, 0x1

    .line 1615
    :cond_6
    invoke-virtual {v0, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->openAiState(Z)I

    move-result v1

    .line 1616
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 1617
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1605
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1606
    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setAiExtraAction(I)I

    move-result v1

    .line 1607
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 1608
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1596
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    const/4 v3, 0x1

    .line 1597
    :cond_7
    invoke-virtual {v0, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->connectAiServerNotification(Z)I

    move-result v1

    .line 1598
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 1599
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1587
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    const/4 v3, 0x1

    .line 1588
    :cond_8
    invoke-virtual {v0, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->openRawDataNotification(Z)I

    move-result v1

    .line 1589
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 1590
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1578
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1579
    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->getAdvSensorOfflineData(I)I

    move-result v1

    .line 1580
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 1581
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1569
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1570
    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->getOxygenOfflineData(I)I

    move-result v1

    .line 1571
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 1572
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1560
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1561
    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setAiConnectionMethod(I)I

    move-result v1

    .line 1562
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 1563
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1551
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1552
    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setTouchMode(I)I

    move-result v1

    .line 1553
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 1554
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1540
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1542
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1543
    invoke-virtual {v0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setWorshipInfo(II)I

    move-result v1

    .line 1544
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 1545
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1529
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1531
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1532
    invoke-virtual {v0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setAppState(II)I

    move-result v1

    .line 1533
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 1534
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1520
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    const/4 v3, 0x1

    .line 1521
    :cond_9
    invoke-virtual {v0, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->openWifiApMode(Z)I

    move-result v1

    .line 1522
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 1523
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1511
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    const/4 v3, 0x1

    .line 1512
    :cond_a
    invoke-virtual {v0, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setOfflineSpeechRecognitionState(Z)I

    move-result v1

    .line 1513
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 1514
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1502
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    const/4 v3, 0x1

    .line 1503
    :cond_b
    invoke-virtual {v0, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setGSensorIndState(Z)I

    move-result v1

    .line 1504
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 1505
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1493
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    const/4 v3, 0x1

    .line 1494
    :cond_c
    invoke-virtual {v0, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setAiChatState(Z)I

    move-result v1

    .line 1495
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 1496
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1485
    :pswitch_18
    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->getDeviceSystemStateInfo()I

    move-result v1

    .line 1486
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 1487
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1477
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1478
    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setAILang(Ljava/lang/String;)I

    move-result v1

    .line 1479
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 1480
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1469
    :pswitch_1a
    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->notifyDownloadFtpFileCompleted()I

    move-result v1

    .line 1470
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 1471
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1462
    :pswitch_1b
    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->getMediaFileState()I

    move-result v1

    .line 1463
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 1464
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1454
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1455
    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setDeviceFileState(I)I

    move-result v1

    .line 1456
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 1457
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1446
    :pswitch_1d
    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->getDeviceFileState()I

    move-result v1

    .line 1447
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 1448
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1432
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1434
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1439
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->connectFtp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 1440
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 1441
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1424
    :pswitch_1f
    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->scanWifi()I

    move-result v1

    .line 1425
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 1426
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1417
    :pswitch_20
    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->getWifiState()I

    move-result v1

    .line 1418
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 1419
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1405
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1407
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1410
    invoke-virtual {v0, v1, v2, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setWifiHotSpotInfoEx(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 1411
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 1412
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1394
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1396
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1397
    invoke-virtual {v0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setWifiHotSpotInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1398
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 1399
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1379
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1383
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1385
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 1386
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setEqInfo2(III[I)I

    move-result v1

    .line 1387
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 1388
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1371
    :pswitch_24
    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->getEqInfo()I

    move-result v1

    .line 1372
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 1373
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1363
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    const/4 v3, 0x1

    .line 1364
    :cond_d
    invoke-virtual {v0, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setBloodOxygenMode(Z)I

    move-result v1

    .line 1365
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 1366
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1354
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1355
    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->getDialServerInfo(Ljava/lang/String;)I

    move-result v1

    .line 1356
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 1357
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1345
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v3, 0x1

    .line 1346
    :cond_e
    invoke-virtual {v0, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->startFactoryTestMode(Z)I

    move-result v1

    .line 1347
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 1348
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1334
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1337
    invoke-virtual {v0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setChatgptContent(ILjava/lang/String;)I

    move-result v1

    .line 1338
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 1339
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/16 v18, 0x1

    goto/16 :goto_10

    .line 1295
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1303
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/4 v1, 0x1

    .line 1305
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1307
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1309
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1319
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    move-object/from16 v1, p2

    .line 1321
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1323
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1325
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object v1, v0

    const/16 v18, 0x1

    move-object/from16 v0, p3

    .line 1326
    invoke-virtual/range {v1 .. v17}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->translateBmpToBin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIIIIIII)Ljava/lang/String;

    move-result-object v2

    move-object v4, v1

    .line 1327
    invoke-virtual {v0}, Landroid/os/Parcel;->writeNoException()V

    .line 1328
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_2a
    move-object v4, v0

    move-object v1, v2

    move-object v0, v6

    const/16 v18, 0x1

    .line 1284
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1286
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1287
    invoke-virtual {v4, v2, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->startFileOta(ILjava/lang/String;)I

    move-result v1

    .line 1288
    invoke-virtual {v0}, Landroid/os/Parcel;->writeNoException()V

    .line 1289
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_2b
    move-object v4, v0

    move-object v1, v2

    move-object v0, v6

    const/16 v18, 0x1

    .line 1275
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1276
    invoke-virtual {v4, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setSmsRspSendAck(I)I

    move-result v1

    .line 1277
    invoke-virtual {v0}, Landroid/os/Parcel;->writeNoException()V

    .line 1278
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_2c
    move-object v4, v0

    move-object v1, v2

    move-object v0, v6

    const/16 v18, 0x1

    .line 1266
    sget-object v2, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfo;

    .line 1267
    invoke-virtual {v4, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setSmsRspInfoContent(Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfo;)I

    move-result v1

    .line 1268
    invoke-virtual {v0}, Landroid/os/Parcel;->writeNoException()V

    .line 1269
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_2d
    move-object v4, v0

    move-object v1, v2

    move-object v0, v6

    const/16 v18, 0x1

    .line 1257
    sget-object v2, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfo;

    .line 1258
    invoke-virtual {v4, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setSmsRspInfoCrc(Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfo;)I

    move-result v1

    .line 1259
    invoke-virtual {v0}, Landroid/os/Parcel;->writeNoException()V

    .line 1260
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_2e
    move-object v4, v0

    move-object v1, v2

    move-object v0, v6

    const/16 v18, 0x1

    .line 1248
    sget-object v2, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfo;

    .line 1249
    invoke-virtual {v4, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setECardInfoContent(Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfo;)I

    move-result v1

    .line 1250
    invoke-virtual {v0}, Landroid/os/Parcel;->writeNoException()V

    .line 1251
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_2f
    move-object v4, v0

    move-object v1, v2

    move-object v0, v6

    const/16 v18, 0x1

    .line 1239
    sget-object v2, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfo;

    .line 1240
    invoke-virtual {v4, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setECardInfoCrc(Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfo;)I

    move-result v1

    .line 1241
    invoke-virtual {v0}, Landroid/os/Parcel;->writeNoException()V

    .line 1242
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_30
    move-object v4, v0

    move-object v1, v2

    move-object v0, v6

    const/16 v18, 0x1

    .line 1226
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1228
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1230
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1231
    invoke-virtual {v4, v2, v3, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setBindedInfo(III)I

    move-result v1

    .line 1232
    invoke-virtual {v0}, Landroid/os/Parcel;->writeNoException()V

    .line 1233
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_31
    move-object v4, v0

    move-object v1, v2

    move-object v0, v6

    const/16 v18, 0x1

    .line 1211
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1213
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1215
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1217
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1218
    invoke-virtual {v4, v2, v3, v5, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->sendPhoneVolume(IIII)I

    move-result v1

    .line 1219
    invoke-virtual {v0}, Landroid/os/Parcel;->writeNoException()V

    .line 1220
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :pswitch_32
    move-object v4, v0

    move-object v1, v2

    move-object v0, v6

    const/16 v18, 0x1

    .line 1202
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1203
    invoke-virtual {v4, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setPhoneMac(Ljava/lang/String;)I

    move-result v1

    .line 1204
    invoke-virtual {v0}, Landroid/os/Parcel;->writeNoException()V

    .line 1205
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :pswitch_33
    move-object v4, v0

    move-object v1, v2

    move-object v0, v6

    const/16 v18, 0x1

    .line 1193
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1194
    invoke-virtual {v4, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setAppId(Ljava/lang/String;)I

    move-result v1

    .line 1195
    invoke-virtual {v0}, Landroid/os/Parcel;->writeNoException()V

    .line 1196
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :pswitch_34
    move-object v4, v0

    move-object v1, v2

    move-object v0, v6

    const/16 v18, 0x1

    .line 1184
    sget-object v2, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfo;

    .line 1185
    invoke-virtual {v4, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setContactInfo(Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfo;)I

    move-result v1

    .line 1186
    invoke-virtual {v0}, Landroid/os/Parcel;->writeNoException()V

    .line 1187
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :pswitch_35
    move-object v4, v0

    move-object v1, v2

    move-object v0, v6

    const/16 v18, 0x1

    .line 1175
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1176
    invoke-virtual {v4, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setContactCrc(Ljava/lang/String;)I

    move-result v1

    .line 1177
    invoke-virtual {v0}, Landroid/os/Parcel;->writeNoException()V

    .line 1178
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    move-object v0, v4

    goto/16 :goto_10

    :pswitch_36
    move-object v4, v0

    move-object v1, v2

    move-object v0, v6

    const/16 v18, 0x1

    .line 1156
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f

    const/4 v7, 0x1

    goto :goto_2

    :cond_f
    const/4 v7, 0x0

    .line 1158
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1160
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1162
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1164
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1166
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v9, v0

    move v1, v7

    move-object/from16 v0, p0

    .line 1167
    invoke-virtual/range {v0 .. v6}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setFemaleReminder(ZIIIII)I

    move-result v1

    .line 1168
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1169
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_37
    move-object v1, v2

    move-object v9, v6

    const/16 v18, 0x1

    .line 1141
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1143
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1145
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1147
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1148
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->sendPhoneCallState(IIII)I

    move-result v1

    .line 1149
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1150
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_38
    move-object v9, v6

    const/16 v18, 0x1

    .line 1133
    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->getDeviceDialCustom()I

    move-result v1

    .line 1134
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1135
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_39
    move-object v1, v2

    move-object v9, v6

    const/16 v18, 0x1

    .line 1119
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1121
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1123
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1125
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1126
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->editDeviceDialCustom(IIII)I

    move-result v1

    .line 1127
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1128
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_3a
    move-object v1, v2

    move-object v9, v6

    const/16 v18, 0x1

    .line 1110
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1111
    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setDeviceWallpaperState(I)I

    move-result v1

    .line 1112
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1113
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_3b
    move-object v1, v2

    move-object v9, v6

    const/16 v18, 0x1

    .line 1101
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1102
    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setDeviceDialState(I)I

    move-result v1

    .line 1103
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1104
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_3c
    move-object v9, v6

    const/16 v18, 0x1

    .line 1093
    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->getDeviceDial()I

    move-result v1

    .line 1094
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1095
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_3d
    move-object v1, v2

    move-object v9, v6

    const/16 v18, 0x1

    .line 1085
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    const/4 v7, 0x1

    goto :goto_3

    :cond_10
    const/4 v7, 0x0

    .line 1086
    :goto_3
    invoke-virtual {v0, v7}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setTemperatureMode(Z)I

    move-result v1

    .line 1087
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1088
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_3e
    move-object v1, v2

    move-object v9, v6

    const/16 v18, 0x1

    .line 1074
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1076
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1077
    invoke-virtual {v0, v2, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setBPAdjust(II)I

    move-result v1

    .line 1078
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1079
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_3f
    move-object v1, v2

    move-object v9, v6

    const/16 v18, 0x1

    .line 1063
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1065
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1066
    invoke-virtual {v0, v2, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setReminderText(ILjava/lang/String;)I

    move-result v1

    .line 1067
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1068
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_40
    move-object v11, v2

    move-object v9, v6

    const/16 v18, 0x1

    .line 1042
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1044
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1046
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1048
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1050
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1052
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1054
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1055
    invoke-virtual/range {v0 .. v7}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setReminder(IIIIIII)I

    move-result v1

    .line 1056
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1057
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_41
    move-object v9, v6

    const/16 v18, 0x1

    .line 1034
    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->getDeviceRssi()I

    move-result v1

    .line 1035
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1036
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_42
    move-object v11, v2

    move-object v9, v6

    const/16 v18, 0x1

    .line 1026
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1027
    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setDeviceName(Ljava/lang/String;)I

    move-result v1

    .line 1028
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1029
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_43
    move-object v11, v2

    move-object v9, v6

    const/16 v18, 0x1

    .line 1017
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1018
    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->getEcgHistory(I)I

    move-result v1

    .line 1019
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1020
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_44
    move-object v11, v2

    move-object v9, v6

    const/16 v18, 0x1

    .line 1006
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v7, 0x1

    goto :goto_4

    :cond_11
    const/4 v7, 0x0

    .line 1008
    :goto_4
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1009
    invoke-virtual {v0, v7, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setEcgMode(ZI)I

    move-result v1

    .line 1010
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1011
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_45
    move-object v11, v2

    move-object v9, v6

    const/16 v18, 0x1

    .line 995
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 997
    invoke-virtual {v11}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 998
    invoke-virtual {v0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->writeCharacteristic(Ljava/lang/String;[B)I

    move-result v1

    .line 999
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1000
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_46
    move-object v11, v2

    move-object v9, v6

    const/16 v18, 0x1

    .line 982
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 984
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 986
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12

    const/4 v7, 0x1

    goto :goto_5

    :cond_12
    const/4 v7, 0x0

    .line 987
    :goto_5
    invoke-virtual {v0, v1, v2, v7}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setUuid([Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v1

    .line 988
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 989
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_47
    move-object v9, v6

    const/16 v18, 0x1

    .line 974
    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->getDeviceCode()I

    move-result v1

    .line 975
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_48
    move-object v11, v2

    move-object v9, v6

    const/16 v18, 0x1

    .line 966
    invoke-virtual {v11}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 967
    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setDeviceCode([B)I

    move-result v1

    .line 968
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 969
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_49
    move-object v11, v2

    move-object v9, v6

    const/16 v18, 0x1

    .line 957
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13

    const/4 v7, 0x1

    goto :goto_6

    :cond_13
    const/4 v7, 0x0

    .line 958
    :goto_6
    invoke-virtual {v0, v7}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->getOtaInfo(Z)I

    move-result v1

    .line 959
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 960
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_4a
    move-object v11, v2

    move-object v9, v6

    const/16 v18, 0x1

    .line 944
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_14

    const/4 v7, 0x1

    goto :goto_7

    :cond_14
    const/4 v7, 0x0

    .line 946
    :goto_7
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 948
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 949
    invoke-virtual {v0, v7, v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->openSDKLog(ZLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 950
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 951
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_4b
    move-object v11, v2

    move-object v9, v6

    const/16 v18, 0x1

    .line 931
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_15

    const/4 v7, 0x1

    goto :goto_8

    :cond_15
    const/4 v7, 0x0

    .line 933
    :goto_8
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 935
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 936
    invoke-virtual {v0, v7, v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setDeviceHeartRateArea(ZII)I

    move-result v1

    .line 937
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 938
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_4c
    move-object v9, v6

    const/16 v18, 0x1

    .line 923
    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->getBandFunction()I

    move-result v1

    .line 924
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 925
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_4d
    move-object v11, v2

    move-object v9, v6

    const/16 v18, 0x1

    .line 915
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 916
    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setGoalStep(I)I

    move-result v1

    .line 917
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 918
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_4e
    move-object v11, v2

    move-object v9, v6

    const/16 v18, 0x1

    .line 906
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 907
    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->getMultipleSportData(I)I

    move-result v1

    .line 908
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 909
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_4f
    move-object v11, v2

    move-object v9, v6

    const/16 v18, 0x1

    .line 897
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_16

    const/4 v7, 0x1

    goto :goto_9

    :cond_16
    const/4 v7, 0x0

    .line 898
    :goto_9
    invoke-virtual {v0, v7}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setBloodPressureMode(Z)I

    move-result v1

    .line 899
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 900
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_50
    move-object v11, v2

    move-object v9, v6

    const/16 v18, 0x1

    .line 888
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_17

    const/4 v7, 0x1

    goto :goto_a

    :cond_17
    const/4 v7, 0x0

    .line 889
    :goto_a
    invoke-virtual {v0, v7}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setAntiLost(Z)I

    move-result v1

    .line 890
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 891
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_51
    move-object v9, v6

    const/16 v18, 0x1

    .line 880
    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->sendWeather()I

    move-result v1

    .line 881
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 882
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_52
    move-object v9, v6

    const/16 v18, 0x1

    .line 873
    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setLanguage()I

    move-result v1

    .line 874
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 875
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_53
    move-object v11, v2

    move-object v9, v6

    const/16 v18, 0x1

    .line 863
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 865
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 866
    invoke-virtual {v0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->getDataByDay(II)I

    move-result v1

    .line 867
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 868
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_54
    move-object v11, v2

    move-object v9, v6

    const/16 v18, 0x1

    .line 854
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 855
    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setHourFormat(I)I

    move-result v1

    .line 856
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 857
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_55
    move-object v9, v6

    const/16 v18, 0x1

    .line 846
    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setDeviceInfo()I

    move-result v1

    .line 847
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 848
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_56
    move-object v11, v2

    move-object v9, v6

    const/16 v18, 0x1

    .line 826
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_b

    :cond_18
    const/4 v1, 0x0

    .line 828
    :goto_b
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 830
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 832
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 834
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 836
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 838
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 839
    invoke-virtual/range {v0 .. v7}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setAutoHeartMode(ZIIIIII)I

    move-result v1

    .line 840
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 841
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_57
    move-object v11, v2

    move-object v9, v6

    const/16 v18, 0x1

    .line 813
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_19

    const/4 v7, 0x1

    goto :goto_c

    :cond_19
    const/4 v7, 0x0

    .line 815
    :goto_c
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 817
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 818
    invoke-virtual {v0, v7, v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setHeartRateMode(ZII)I

    move-result v1

    .line 819
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_58
    move-object v11, v2

    move-object v9, v6

    const/16 v18, 0x1

    .line 798
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 800
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 802
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 804
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 805
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setNotify(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 806
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 807
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_59
    move-object v11, v2

    move-object v9, v6

    const/16 v18, 0x1

    .line 789
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 790
    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setDeviceMode(I)I

    move-result v1

    .line 791
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 792
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_5a
    move-object v9, v6

    const/16 v18, 0x1

    .line 781
    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setAlarm()I

    move-result v1

    .line 782
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_5b
    move-object v9, v6

    const/16 v18, 0x1

    .line 774
    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->getDeviceInfo()I

    move-result v1

    .line 775
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 776
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_5c
    move-object v9, v6

    const/16 v18, 0x1

    .line 767
    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->getDeviceBatery()I

    move-result v1

    .line 768
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 769
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_5d
    move-object v11, v2

    move-object v9, v6

    const/16 v18, 0x1

    .line 745
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 747
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 749
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 751
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 753
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 755
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 757
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 759
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 760
    invoke-virtual/range {v0 .. v8}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setSleepTime(IIIIIIII)I

    move-result v1

    .line 761
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    goto/16 :goto_10

    :pswitch_5e
    move-object v11, v2

    move-object v9, v6

    const/16 v18, 0x1

    .line 728
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 730
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 732
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 734
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 736
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    .line 737
    invoke-virtual/range {v0 .. v5}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setIdleTime(IIIII)I

    move-result v1

    .line 738
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_5f
    move-object v11, v2

    move-object v9, v6

    const/16 v18, 0x1

    .line 719
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v7, 0x1

    goto :goto_d

    :cond_1a
    const/4 v7, 0x0

    .line 720
    :goto_d
    invoke-virtual {v0, v7}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setPhontMode(Z)I

    move-result v1

    .line 721
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_60
    move-object v11, v2

    move-object v9, v6

    const/16 v18, 0x1

    .line 710
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 711
    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->sendVibrationSignal(I)I

    move-result v1

    .line 712
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_61
    move-object v9, v6

    const/16 v18, 0x1

    .line 702
    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->getCurSportData()I

    move-result v1

    .line 703
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_62
    move-object v9, v6

    const/16 v18, 0x1

    .line 695
    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setUserInfo()I

    move-result v1

    .line 696
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 697
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_63
    move-object v9, v6

    const/16 v18, 0x1

    .line 688
    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setDeviceTime()I

    move-result v1

    .line 689
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_64
    move-object v9, v6

    const/16 v18, 0x1

    .line 682
    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->closeConnection()V

    .line 683
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_10

    :pswitch_65
    move-object v11, v2

    move-object v9, v6

    const/16 v18, 0x1

    .line 675
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v7, 0x1

    goto :goto_e

    :cond_1b
    const/4 v7, 0x0

    .line 676
    :goto_e
    invoke-virtual {v0, v7}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->disconnectBt(Z)V

    .line 677
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_10

    :pswitch_66
    move-object v9, v6

    const/16 v18, 0x1

    .line 667
    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->getConnectedDevice()Ljava/lang/String;

    move-result-object v1

    .line 668
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 669
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_10

    :pswitch_67
    move-object v9, v6

    const/16 v18, 0x1

    .line 660
    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->isConnectBt()Z

    move-result v1

    .line 661
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_68
    move-object v11, v2

    move-object v9, v6

    const/16 v18, 0x1

    .line 650
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 652
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 653
    invoke-virtual {v0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->connectBt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 654
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_69
    move-object v11, v2

    move-object v9, v6

    const/16 v18, 0x1

    .line 641
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v7, 0x1

    goto :goto_f

    :cond_1c
    const/4 v7, 0x0

    .line 642
    :goto_f
    invoke-virtual {v0, v7}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->scanDevice(Z)I

    move-result v1

    .line 643
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_6a
    move-object v11, v2

    move-object v9, v6

    const/16 v18, 0x1

    .line 632
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 633
    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setScanMode(I)I

    move-result v1

    .line 634
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    :pswitch_6b
    move-object v11, v2

    move-object v9, v6

    const/16 v18, 0x1

    .line 623
    sget-object v1, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v11, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;

    .line 624
    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->setOption(Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;)I

    move-result v1

    .line 625
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    :pswitch_6c
    move-object v9, v6

    const/16 v18, 0x1

    .line 615
    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->isAuthrize()I

    move-result v1

    .line 616
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    :pswitch_6d
    move-object v11, v2

    move-object v9, v6

    const/16 v18, 0x1

    .line 608
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    move-result-object v1

    .line 609
    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->unregisterCallback(Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;)V

    .line 610
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_10

    :pswitch_6e
    move-object v11, v2

    move-object v9, v6

    const/16 v18, 0x1

    .line 594
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    move-result-object v1

    .line 596
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 598
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 600
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 601
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->registerCallback2(Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_10

    :pswitch_6f
    move-object v11, v2

    move-object v9, v6

    const/16 v18, 0x1

    .line 586
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    move-result-object v1

    .line 587
    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->registerCallback(Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;)V

    .line 588
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    :goto_10
    return v18

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
