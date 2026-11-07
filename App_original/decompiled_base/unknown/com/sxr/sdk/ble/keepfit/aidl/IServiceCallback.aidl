// IServiceCallback.aidl
package com.sxr.sdk.ble.keepfit.aidl;

interface IServiceCallback {
	//0
	void onAuthSdkResult(int errorCode);
	//1
	void onScanCallback(String deviceName, String deviceMacAddress, int rssi, String ver, String cid, String did, String bindFlag, String bindState, String factoryServiceData);
	//2
	void onConnectStateChanged(int state);
	void onAuthDeviceResult(int errorCode);
	//3
	void onGetDeviceTime(int result, String time);

	//14
	void onSetDeviceTime(int result);
	void onSetUserInfo(int result);
	void onGetCurSportData(int type,long timestamp,int step,int distance,int cal,int cursleeptime,int totalrunningtime,int steptime);
	void onSendVibrationSignal(int result);
	void onSetPhontMode(int result);
	void onSetIdleTime(int result);
	void onSetSleepTime(int result);
	void onGetDeviceBatery(int batery,int statu);
	void onGetDeviceInfo(int version,String deviceMacAddress,String vendorCode,String productCode,int crcResult);//crcResult 1：成功  0:失败
	void onSetAlarm(int result);
	void onSetDeviceMode(int result);
	void onSetNotify(int result);
	void onGetSenserData(int result,long timestamp,int heartrate,int sleepstatu);  
	void setAutoHeartMode(int result);
	void onSetDeviceInfo(int result);
	void onSetHourFormat(int result);
	void onGetDataByDay(int type,long timestamp,int step,int heartrate);
	void onGetDataByDayEnd(int type,long timestamp);
	
	void onGetDeviceAction(int type);
	
    //  读取手环功能项
    void onGetBandFunction(int result,in boolean[] list);
    //  发送手机系统使用语言
    void onSetLanguage(int result);
    // 回复天气
    void onSendWeather(int result);
    //设置防丢
    void onSetAntiLost(int result);
    //打开关闭血压，血氧，疲劳度
    void onSetBloodPressureMode(int result);
    //当手环采集到有效血压血氧值后，会通过此命令返回数据给app
    void onReceiveSensorData(int heartrate, int Systolicpressure, int Diastolicpressure, int Oxygen, int Fatiguevalue, int stress, int bloodSugar, int hrv);
    //打开关闭血氧
    void onSetBloodOxygenMode(int result);
    //当手环采集到有效血氧值后，会通过此命令返回数据给app
    void onReceiveSensorOxygenData(int Oxygen);
    //取得某天多运动模式数据
    void onGetMultipleSportData(int flag,String recorddate,int mode,int value);
    //设置目标步数
    void onSetGoalStep(int result);
    //设置心率区间
    void onSetDeviceHeartRateArea(int result);
    //心率 血压血氧结束测试返回
    void onSensorStateChange(int type , int state); //type 1:心率  2：血压血氧  , state 1:打开  0：关闭
    //返回当前运动模式数据
    void onReadCurrentSportData(int mode,String recorddate,int step,int cal); //mode :当前运动模式，0为不在多运动模式  recorddate :时间     step :在步行，跑步，登山模式下为当前计步值，其它模式下无效 cal:当前卡路里值

    // 返回升级信息
    void onGetOtaInfo(boolean isUpdate, String otaInfo, String path);
    // 升级过程
    void onGetOtaUpdate(int step, int progress);

    // 设置机器串码
    void onSetDeviceCode(int result);
    // 获取机器串码
    void onGetDeviceCode(in byte[] bytes);

    // 获取蓝牙数据
    void onCharacteristicChanged(String uuid, in byte[] bytes);
    // 写入蓝牙数据
    void onCharacteristicWrite(String uuid, in byte[] bytes, int status);

    // 在线心电
    void onSetEcgMode(int result, int state);
    void onGetEcgValue(int state, in int[] values);

    // 离线心电
    void onGetEcgHistory(long timestamp, int number);
    void onGetEcgStartEnd(int id, int state, long timestamp);
    void onGetEcgHistoryData(int id, in int[] values);

    // 设置手环名称
    void onSetDeviceName(int result);

    // 获取设备信号强度
    void onGetDeviceRssi(int rssi);
    // 设置提醒时间
    void onSetReminder(int result);
    // 设置提醒内容
    void onSetReminderText(int result);

    // 设置血压校准
    void onSetBPAdjust(int result);
    // 设置开启实时体温测试返回
    void onSetTemperatureMode(int result);
	void onGetTemperatureData(int surfaceTemp,int bodyTemp);
    void onTemperatureModeChange(int enable);

    // 获取设备表盘信息返回
    void onGetDeviceDial(String productType, String productId, int watchWidth, int watchHeight, int unitWidth, int colorMode, int isCustom, int dialId, int reviewWatchWidth, int reviewWatchHeight, int shapeType);
    // 进入和退出表盘安装界面返回
    void onSetDeviceDialState();
    // 打开或关闭自定义壁纸返回
    void onSetDeviceWallpaperState();
    // 编辑表盘自定义数据返回
    void onEditDeviceDialCustom();
    // 读取表盘自定义数据返回
    void onGetDeviceDialCustom(int timePos, int timeAboveContent, int timeBelowContent, int fontColorType);

    // 设置女性受理周期数据返回
    void onSetFemaleReminder();

    // 返回设备经典蓝牙名称
    void onNotifyClassicBtName(String deviceBtName);
    // 返回设备经典蓝牙数据
    void onNotifyClassicBtInfo(int btState, int pareState, String deviceMac, String phoneMac);
    // 返回设备常用联系人校验码
    void onNotifyContactCrc(String contactCrc);
    // 返回AppId
    void onNotifyAppId(String appId);

    // 读取手机音量
    void onGetPhoneVolume();

    // 手环绑定信息
    void onNotifyBindedInfo(int action, int state);

    // 获取设备表盘信息返回
    void onGetDeviceState(boolean bHandOfflight, boolean bVibrate, boolean bNoDisturb);

    // 获取ECard更新标志
    void onNotifyECardNeedUpdate(in byte[] bytes);

    // 获取短信快速回复信息更新标志
    void onNotifySmsRspNeedUpdate(in byte[] bytes);

    // 通知短信快速回复信息
    void onNotifySmsRspSend(int id, String phoneNum);

	void onGetChatgptAction(int type);

    // 获取设备工厂测试模式数据
    void onGetFactoryTestData(in byte[] bytes);
    // 返回AppId
    void onNotifyDialJsonContent(String content);

    // 获取运动步数
    void onGetSportSteps(int steps);
    // 测试命令接口
    void onDeviceTestCmd();

    // get eq action response
    int onGetEqInfo2(int mode, int gain, int eqCount, in int[] eqs);

    // set eq action response
    int onSetEqInfo2(int mode, int gain, int eqCount, in int[] eqs);

    // 获取wifi连接信息
    void onGetWifiState(int connectState, String ipaddr, String username, String password, int port);

    // 获取wifi数量
    void onGetWifiSsidCount(int ssidCount);

    // 获取wifi数量
    void onGetWifiSsid(int endFlag, int partId, int curId, int signal, String ssidContent);

    // 获取文件信息
    void onGetDeviceFileState(int fileCount);

    // 获取设备状态
    void onNotifyDeviceSystemStateInfo(int state);

    //  返回GSENSOR数据
    void onGetGSensorData(int result,in int[] list);

    // 获取设备状态
    void onNotifyFtpStateInfo(int state, String filename, long size, int percent);
    // 获取设备状态
    void onNotifyNewMediaInfo(int filetype, String localFileName, String uri);

    // 获取设备wifi ap状态
    void onNotifyDeviceWifiApState(int state);

    void onGetOfflineSpeechRecognitionMode(int mode);
    void onGetWorshipInfo(int worshipTimes,int vibrationTimes);
    void onGetWorshipTimesData(int worshipTimes);
    void onGetTouchMode(int mode);
    void onNotifyAiConnectionMethod(int mode);

    //取得某天离线血氧数据
    void onGetOxygenOfflineData(long timestamp, int value);
    void onGetOxygenOfflineDataEnd(long timestamp);
    void onGetAdvSensorOfflineData(long timestamp, int sbp, int sdp, int sugar, int stress, int hrv);
    void onGetAdvSensorOfflineDataEnd(long timestamp);

    //  返回AI眼镜原始数据
    void onGetAiAction(int type);
    void onGetRawData(int type, int totalPackets, int curPacketIndex, int packetLength, in byte[] rawdata);
    void onGetAiState(int state, int subState);
    void onDeviceConnectedWifi(String newDecIpAddr, String username, String password, int port, String path);

    void onGetScreenLightTime(int duration);
    void onRecvDeviceVoiceCommandConfirm(int state);

    // 裸数据通道打开状态
    void onOpenRawDataNotificationState(boolean bOpened);
    void onGetAiCommandType(int type);
}

