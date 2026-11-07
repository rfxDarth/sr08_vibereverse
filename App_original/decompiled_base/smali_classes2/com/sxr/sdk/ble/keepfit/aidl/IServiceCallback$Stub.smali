.class public abstract Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IServiceCallback.java"

# interfaces
.implements Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onAuthDeviceResult:I = 0x4

.field static final TRANSACTION_onAuthSdkResult:I = 0x1

.field static final TRANSACTION_onCharacteristicChanged:I = 0x2a

.field static final TRANSACTION_onCharacteristicWrite:I = 0x2b

.field static final TRANSACTION_onConnectStateChanged:I = 0x3

.field static final TRANSACTION_onDeviceConnectedWifi:I = 0x65

.field static final TRANSACTION_onDeviceTestCmd:I = 0x4d

.field static final TRANSACTION_onEditDeviceDialCustom:I = 0x3c

.field static final TRANSACTION_onGetAdvSensorOfflineData:I = 0x60

.field static final TRANSACTION_onGetAdvSensorOfflineDataEnd:I = 0x61

.field static final TRANSACTION_onGetAiAction:I = 0x62

.field static final TRANSACTION_onGetAiCommandType:I = 0x69

.field static final TRANSACTION_onGetAiState:I = 0x64

.field static final TRANSACTION_onGetBandFunction:I = 0x19

.field static final TRANSACTION_onGetChatgptAction:I = 0x49

.field static final TRANSACTION_onGetCurSportData:I = 0x8

.field static final TRANSACTION_onGetDataByDay:I = 0x16

.field static final TRANSACTION_onGetDataByDayEnd:I = 0x17

.field static final TRANSACTION_onGetDeviceAction:I = 0x18

.field static final TRANSACTION_onGetDeviceBatery:I = 0xd

.field static final TRANSACTION_onGetDeviceCode:I = 0x29

.field static final TRANSACTION_onGetDeviceDial:I = 0x39

.field static final TRANSACTION_onGetDeviceDialCustom:I = 0x3d

.field static final TRANSACTION_onGetDeviceFileState:I = 0x53

.field static final TRANSACTION_onGetDeviceInfo:I = 0xe

.field static final TRANSACTION_onGetDeviceRssi:I = 0x32

.field static final TRANSACTION_onGetDeviceState:I = 0x45

.field static final TRANSACTION_onGetDeviceTime:I = 0x5

.field static final TRANSACTION_onGetEcgHistory:I = 0x2e

.field static final TRANSACTION_onGetEcgHistoryData:I = 0x30

.field static final TRANSACTION_onGetEcgStartEnd:I = 0x2f

.field static final TRANSACTION_onGetEcgValue:I = 0x2d

.field static final TRANSACTION_onGetEqInfo2:I = 0x4e

.field static final TRANSACTION_onGetFactoryTestData:I = 0x4a

.field static final TRANSACTION_onGetGSensorData:I = 0x55

.field static final TRANSACTION_onGetMultipleSportData:I = 0x21

.field static final TRANSACTION_onGetOfflineSpeechRecognitionMode:I = 0x59

.field static final TRANSACTION_onGetOtaInfo:I = 0x26

.field static final TRANSACTION_onGetOtaUpdate:I = 0x27

.field static final TRANSACTION_onGetOxygenOfflineData:I = 0x5e

.field static final TRANSACTION_onGetOxygenOfflineDataEnd:I = 0x5f

.field static final TRANSACTION_onGetPhoneVolume:I = 0x43

.field static final TRANSACTION_onGetRawData:I = 0x63

.field static final TRANSACTION_onGetScreenLightTime:I = 0x66

.field static final TRANSACTION_onGetSenserData:I = 0x12

.field static final TRANSACTION_onGetSportSteps:I = 0x4c

.field static final TRANSACTION_onGetTemperatureData:I = 0x37

.field static final TRANSACTION_onGetTouchMode:I = 0x5c

.field static final TRANSACTION_onGetWifiSsid:I = 0x52

.field static final TRANSACTION_onGetWifiSsidCount:I = 0x51

.field static final TRANSACTION_onGetWifiState:I = 0x50

.field static final TRANSACTION_onGetWorshipInfo:I = 0x5a

.field static final TRANSACTION_onGetWorshipTimesData:I = 0x5b

.field static final TRANSACTION_onNotifyAiConnectionMethod:I = 0x5d

.field static final TRANSACTION_onNotifyAppId:I = 0x42

.field static final TRANSACTION_onNotifyBindedInfo:I = 0x44

.field static final TRANSACTION_onNotifyClassicBtInfo:I = 0x40

.field static final TRANSACTION_onNotifyClassicBtName:I = 0x3f

.field static final TRANSACTION_onNotifyContactCrc:I = 0x41

.field static final TRANSACTION_onNotifyDeviceSystemStateInfo:I = 0x54

.field static final TRANSACTION_onNotifyDeviceWifiApState:I = 0x58

.field static final TRANSACTION_onNotifyDialJsonContent:I = 0x4b

.field static final TRANSACTION_onNotifyECardNeedUpdate:I = 0x46

.field static final TRANSACTION_onNotifyFtpStateInfo:I = 0x56

.field static final TRANSACTION_onNotifyNewMediaInfo:I = 0x57

.field static final TRANSACTION_onNotifySmsRspNeedUpdate:I = 0x47

.field static final TRANSACTION_onNotifySmsRspSend:I = 0x48

.field static final TRANSACTION_onOpenRawDataNotificationState:I = 0x68

.field static final TRANSACTION_onReadCurrentSportData:I = 0x25

.field static final TRANSACTION_onReceiveSensorData:I = 0x1e

.field static final TRANSACTION_onReceiveSensorOxygenData:I = 0x20

.field static final TRANSACTION_onRecvDeviceVoiceCommandConfirm:I = 0x67

.field static final TRANSACTION_onScanCallback:I = 0x2

.field static final TRANSACTION_onSendVibrationSignal:I = 0x9

.field static final TRANSACTION_onSendWeather:I = 0x1b

.field static final TRANSACTION_onSensorStateChange:I = 0x24

.field static final TRANSACTION_onSetAlarm:I = 0xf

.field static final TRANSACTION_onSetAntiLost:I = 0x1c

.field static final TRANSACTION_onSetBPAdjust:I = 0x35

.field static final TRANSACTION_onSetBloodOxygenMode:I = 0x1f

.field static final TRANSACTION_onSetBloodPressureMode:I = 0x1d

.field static final TRANSACTION_onSetDeviceCode:I = 0x28

.field static final TRANSACTION_onSetDeviceDialState:I = 0x3a

.field static final TRANSACTION_onSetDeviceHeartRateArea:I = 0x23

.field static final TRANSACTION_onSetDeviceInfo:I = 0x14

.field static final TRANSACTION_onSetDeviceMode:I = 0x10

.field static final TRANSACTION_onSetDeviceName:I = 0x31

.field static final TRANSACTION_onSetDeviceTime:I = 0x6

.field static final TRANSACTION_onSetDeviceWallpaperState:I = 0x3b

.field static final TRANSACTION_onSetEcgMode:I = 0x2c

.field static final TRANSACTION_onSetEqInfo2:I = 0x4f

.field static final TRANSACTION_onSetFemaleReminder:I = 0x3e

.field static final TRANSACTION_onSetGoalStep:I = 0x22

.field static final TRANSACTION_onSetHourFormat:I = 0x15

.field static final TRANSACTION_onSetIdleTime:I = 0xb

.field static final TRANSACTION_onSetLanguage:I = 0x1a

.field static final TRANSACTION_onSetNotify:I = 0x11

.field static final TRANSACTION_onSetPhontMode:I = 0xa

.field static final TRANSACTION_onSetReminder:I = 0x33

.field static final TRANSACTION_onSetReminderText:I = 0x34

.field static final TRANSACTION_onSetSleepTime:I = 0xc

.field static final TRANSACTION_onSetTemperatureMode:I = 0x36

.field static final TRANSACTION_onSetUserInfo:I = 0x7

.field static final TRANSACTION_onTemperatureModeChange:I = 0x38

.field static final TRANSACTION_setAutoHeartMode:I = 0x13


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 408
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 409
    const-string v0, "com.sxr.sdk.ble.keepfit.aidl.IServiceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 420
    :cond_0
    const-string v0, "com.sxr.sdk.ble.keepfit.aidl.IServiceCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 421
    instance-of v1, v0, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v1, :cond_1

    .line 422
    check-cast v0, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    return-object v0

    .line 424
    :cond_1
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v12, p3

    .line 433
    const-string v2, "com.sxr.sdk.ble.keepfit.aidl.IServiceCallback"

    const/4 v13, 0x1

    if-lt p1, v13, :cond_0

    const v3, 0xffffff

    if-gt p1, v3, :cond_0

    move-object/from16 v3, p2

    .line 434
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v3, p2

    :goto_0
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_1

    .line 437
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v13

    :cond_1
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1498
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1491
    :pswitch_0
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1492
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetAiCommandType(I)V

    .line 1493
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1483
    :pswitch_1
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 1484
    :cond_2
    invoke-virtual {p0, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onOpenRawDataNotificationState(Z)V

    .line 1485
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1475
    :pswitch_2
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1476
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onRecvDeviceVoiceCommandConfirm(I)V

    .line 1477
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1467
    :pswitch_3
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1468
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetScreenLightTime(I)V

    .line 1469
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1451
    :pswitch_4
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1453
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1455
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1457
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1459
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 1460
    invoke-virtual/range {v0 .. v5}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onDeviceConnectedWifi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1461
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1441
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1443
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1444
    invoke-virtual {p0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetAiState(II)V

    .line 1445
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1425
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1427
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1429
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1433
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    move-object v0, p0

    .line 1434
    invoke-virtual/range {v0 .. v5}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetRawData(IIII[B)V

    .line 1435
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1417
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1418
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetAiAction(I)V

    .line 1419
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1409
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1410
    invoke-virtual {p0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetAdvSensorOfflineDataEnd(J)V

    .line 1411
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1391
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v0, p0

    .line 1402
    invoke-virtual/range {v0 .. v7}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetAdvSensorOfflineData(JIIIII)V

    .line 1403
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1383
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1384
    invoke-virtual {p0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetOxygenOfflineDataEnd(J)V

    .line 1385
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1373
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1375
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1376
    invoke-virtual {p0, v1, v2, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetOxygenOfflineData(JI)V

    .line 1377
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1365
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1366
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onNotifyAiConnectionMethod(I)V

    .line 1367
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1357
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1358
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetTouchMode(I)V

    .line 1359
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1349
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1350
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetWorshipTimesData(I)V

    .line 1351
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1339
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1342
    invoke-virtual {p0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetWorshipInfo(II)V

    .line 1343
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1331
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1332
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetOfflineSpeechRecognitionMode(I)V

    .line 1333
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1323
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1324
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onNotifyDeviceWifiApState(I)V

    .line 1325
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1311
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1316
    invoke-virtual {p0, v1, v2, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onNotifyNewMediaInfo(ILjava/lang/String;Ljava/lang/String;)V

    .line 1317
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1297
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 1303
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v0, p0

    .line 1304
    invoke-virtual/range {v0 .. v5}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onNotifyFtpStateInfo(ILjava/lang/String;JI)V

    .line 1305
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1287
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 1290
    invoke-virtual {p0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetGSensorData(I[I)V

    .line 1291
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1279
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1280
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onNotifyDeviceSystemStateInfo(I)V

    .line 1281
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1271
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1272
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetDeviceFileState(I)V

    .line 1273
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1255
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1259
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 1264
    invoke-virtual/range {v0 .. v5}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetWifiSsid(IIIILjava/lang/String;)V

    .line 1265
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1247
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1248
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetWifiSsidCount(I)V

    .line 1249
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1231
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v0, p0

    .line 1240
    invoke-virtual/range {v0 .. v5}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetWifiState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1241
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1216
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1220
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 1223
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onSetEqInfo2(III[I)I

    move-result v1

    .line 1224
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1225
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_3

    .line 1201
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 1208
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetEqInfo2(III[I)I

    move-result v1

    .line 1209
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1210
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_3

    .line 1194
    :pswitch_1c
    invoke-virtual {p0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onDeviceTestCmd()V

    .line 1195
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1187
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1188
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetSportSteps(I)V

    .line 1189
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1179
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1180
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onNotifyDialJsonContent(Ljava/lang/String;)V

    .line 1181
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1171
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1172
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetFactoryTestData([B)V

    .line 1173
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1163
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1164
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetChatgptAction(I)V

    .line 1165
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1153
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1156
    invoke-virtual {p0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onNotifySmsRspSend(ILjava/lang/String;)V

    .line 1157
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1145
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1146
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onNotifySmsRspNeedUpdate([B)V

    .line 1147
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1137
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1138
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onNotifyECardNeedUpdate([B)V

    .line 1139
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1125
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 1127
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 1129
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    const/4 v2, 0x1

    .line 1130
    :cond_5
    invoke-virtual {p0, v1, v3, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetDeviceState(ZZZ)V

    .line 1131
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1115
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1118
    invoke-virtual {p0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onNotifyBindedInfo(II)V

    .line 1119
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1108
    :pswitch_26
    invoke-virtual {p0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetPhoneVolume()V

    .line 1109
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1101
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1102
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onNotifyAppId(Ljava/lang/String;)V

    .line 1103
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1093
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1094
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onNotifyContactCrc(Ljava/lang/String;)V

    .line 1095
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1079
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1081
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1083
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1085
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1086
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onNotifyClassicBtInfo(IILjava/lang/String;Ljava/lang/String;)V

    .line 1087
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1071
    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1072
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onNotifyClassicBtName(Ljava/lang/String;)V

    .line 1073
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1064
    :pswitch_2b
    invoke-virtual {p0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onSetFemaleReminder()V

    .line 1065
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1051
    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1053
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1055
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1057
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1058
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetDeviceDialCustom(IIII)V

    .line 1059
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1044
    :pswitch_2d
    invoke-virtual {p0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onEditDeviceDialCustom()V

    .line 1045
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1038
    :pswitch_2e
    invoke-virtual {p0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onSetDeviceWallpaperState()V

    .line 1039
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1032
    :pswitch_2f
    invoke-virtual {p0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onSetDeviceDialState()V

    .line 1033
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 1005
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1007
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1009
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1011
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1013
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1015
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1017
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1019
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1021
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1023
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1025
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    move-object v0, p0

    .line 1026
    invoke-virtual/range {v0 .. v11}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetDeviceDial(Ljava/lang/String;Ljava/lang/String;IIIIIIIII)V

    .line 1027
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 997
    :pswitch_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 998
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onTemperatureModeChange(I)V

    .line 999
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 987
    :pswitch_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 989
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 990
    invoke-virtual {p0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetTemperatureData(II)V

    .line 991
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 979
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 980
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onSetTemperatureMode(I)V

    .line 981
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 971
    :pswitch_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 972
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onSetBPAdjust(I)V

    .line 973
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 963
    :pswitch_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 964
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onSetReminderText(I)V

    .line 965
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 955
    :pswitch_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 956
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onSetReminder(I)V

    .line 957
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 947
    :pswitch_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 948
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetDeviceRssi(I)V

    .line 949
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 939
    :pswitch_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 940
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onSetDeviceName(I)V

    .line 941
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 929
    :pswitch_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 931
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 932
    invoke-virtual {p0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetEcgHistoryData(I[I)V

    .line 933
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 917
    :pswitch_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 919
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 921
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 922
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetEcgStartEnd(IIJ)V

    .line 923
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 907
    :pswitch_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 909
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 910
    invoke-virtual {p0, v1, v2, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetEcgHistory(JI)V

    .line 911
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 897
    :pswitch_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 899
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 900
    invoke-virtual {p0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetEcgValue(I[I)V

    .line 901
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 887
    :pswitch_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 889
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 890
    invoke-virtual {p0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onSetEcgMode(II)V

    .line 891
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 875
    :pswitch_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 877
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 879
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 880
    invoke-virtual {p0, v1, v2, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onCharacteristicWrite(Ljava/lang/String;[BI)V

    .line 881
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 865
    :pswitch_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 867
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 868
    invoke-virtual {p0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onCharacteristicChanged(Ljava/lang/String;[B)V

    .line 869
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 857
    :pswitch_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 858
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetDeviceCode([B)V

    .line 859
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 849
    :pswitch_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 850
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onSetDeviceCode(I)V

    .line 851
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 839
    :pswitch_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 841
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 842
    invoke-virtual {p0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetOtaUpdate(II)V

    .line 843
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 827
    :pswitch_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    .line 829
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 831
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 832
    invoke-virtual {p0, v2, v1, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetOtaInfo(ZLjava/lang/String;Ljava/lang/String;)V

    .line 833
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 813
    :pswitch_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 815
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 817
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 819
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 820
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onReadCurrentSportData(ILjava/lang/String;II)V

    .line 821
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 803
    :pswitch_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 805
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 806
    invoke-virtual {p0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onSensorStateChange(II)V

    .line 807
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 795
    :pswitch_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 796
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onSetDeviceHeartRateArea(I)V

    .line 797
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 787
    :pswitch_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 788
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onSetGoalStep(I)V

    .line 789
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 773
    :pswitch_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 775
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 777
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 779
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 780
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetMultipleSportData(ILjava/lang/String;II)V

    .line 781
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 765
    :pswitch_49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 766
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onReceiveSensorOxygenData(I)V

    .line 767
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 757
    :pswitch_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 758
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onSetBloodOxygenMode(I)V

    .line 759
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 735
    :pswitch_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 737
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 739
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 741
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 743
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 745
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 747
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 749
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object v0, p0

    .line 750
    invoke-virtual/range {v0 .. v8}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onReceiveSensorData(IIIIIIII)V

    .line 751
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 727
    :pswitch_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 728
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onSetBloodPressureMode(I)V

    .line 729
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 719
    :pswitch_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 720
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onSetAntiLost(I)V

    .line 721
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 711
    :pswitch_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 712
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onSendWeather(I)V

    .line 713
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 703
    :pswitch_4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 704
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onSetLanguage(I)V

    .line 705
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 693
    :pswitch_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 695
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v2

    .line 696
    invoke-virtual {p0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetBandFunction(I[Z)V

    .line 697
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 685
    :pswitch_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 686
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetDeviceAction(I)V

    .line 687
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 675
    :pswitch_52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 677
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 678
    invoke-virtual {p0, v1, v2, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetDataByDayEnd(IJ)V

    .line 679
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 661
    :pswitch_53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 663
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 667
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v0, p0

    .line 668
    invoke-virtual/range {v0 .. v5}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetDataByDay(IJII)V

    .line 669
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 653
    :pswitch_54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 654
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onSetHourFormat(I)V

    .line 655
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 645
    :pswitch_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 646
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onSetDeviceInfo(I)V

    .line 647
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 637
    :pswitch_56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 638
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->setAutoHeartMode(I)V

    .line 639
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 623
    :pswitch_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 625
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 627
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 629
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v0, p0

    .line 630
    invoke-virtual/range {v0 .. v5}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetSenserData(IJII)V

    .line 631
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 615
    :pswitch_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 616
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onSetNotify(I)V

    .line 617
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 607
    :pswitch_59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 608
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onSetDeviceMode(I)V

    .line 609
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 599
    :pswitch_5a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 600
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onSetAlarm(I)V

    .line 601
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 583
    :pswitch_5b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 585
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 587
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 589
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 591
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v0, p0

    .line 592
    invoke-virtual/range {v0 .. v5}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetDeviceInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 593
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 573
    :pswitch_5c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 575
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 576
    invoke-virtual {p0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetDeviceBatery(II)V

    .line 577
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 565
    :pswitch_5d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 566
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onSetSleepTime(I)V

    .line 567
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 557
    :pswitch_5e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 558
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onSetIdleTime(I)V

    .line 559
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 549
    :pswitch_5f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 550
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onSetPhontMode(I)V

    .line 551
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 541
    :pswitch_60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 542
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onSendVibrationSignal(I)V

    .line 543
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 519
    :pswitch_61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 521
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 523
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 525
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 527
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 529
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 531
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 533
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object v0, p0

    .line 534
    invoke-virtual/range {v0 .. v9}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetCurSportData(IJIIIIII)V

    .line 535
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 511
    :pswitch_62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 512
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onSetUserInfo(I)V

    .line 513
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3

    .line 503
    :pswitch_63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 504
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onSetDeviceTime(I)V

    .line 505
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3

    .line 493
    :pswitch_64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 495
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 496
    invoke-virtual {p0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onGetDeviceTime(ILjava/lang/String;)V

    .line 497
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3

    .line 485
    :pswitch_65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 486
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onAuthDeviceResult(I)V

    .line 487
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3

    .line 477
    :pswitch_66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 478
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onConnectStateChanged(I)V

    .line 479
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3

    .line 453
    :pswitch_67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 455
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 457
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 459
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 463
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 465
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 467
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 469
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    move-object v0, p0

    .line 470
    invoke-virtual/range {v0 .. v9}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onScanCallback(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3

    .line 445
    :pswitch_68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 446
    invoke-virtual {p0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;->onAuthSdkResult(I)V

    .line 447
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    :goto_3
    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
