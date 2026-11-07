// IRemoteService.aidl
package com.sxr.sdk.ble.keepfit.aidl;

// 注意这里需要import
import com.sxr.sdk.ble.keepfit.aidl.IServiceCallback;
import com.sxr.sdk.ble.keepfit.aidl.BleClientOption;
import com.sxr.sdk.ble.keepfit.aidl.ContactInfo;
import com.sxr.sdk.ble.keepfit.aidl.ECardInfo;
import com.sxr.sdk.ble.keepfit.aidl.SmsRspInfo;

interface IRemoteService {    
    void registerCallback(IServiceCallback cb);
    void registerCallback2(IServiceCallback cb, String vid, String appid, String secret);
    void unregisterCallback(IServiceCallback cb);
    //0
    int isAuthrize();
    int setOption(in BleClientOption opt);
    //1
    int setScanMode(int scanMode);
    int scanDevice(boolean enable);
    //2
    int connectBt(String name, String addr);
    boolean isConnectBt();
    String getConnectedDevice();
    void disconnectBt(boolean enable);

    void closeConnection();
	//1
    int setDeviceTime();
    //2
    int setUserInfo();
    //3
    int getCurSportData();
    //4
    int sendVibrationSignal(int times);
    //5
    int setPhontMode(boolean enable);
    //6
    int setIdleTime(int time,int startHour,int startMinute,int endHour,int endMinute);
    //7
    int setSleepTime(int startHourNoon,int startMinuteNoon,int endHourNoon,int endMinuteNoon,int startHourNight,int startMinuteNight,int endHourNight,int endMinuteNight);
    //8
    int getDeviceBatery();
    //9
    int getDeviceInfo();
   	//10
    int setAlarm();
    //11
     int setDeviceMode(int type);
  	//12  消息推送
  	boolean setNotify(String id,int type,String title,String content);
  	//13
    int setHeartRateMode(boolean enable,int time,int mode);
    //14
    int setAutoHeartMode(boolean enable,int startHour,int startMinute,int endHour,int endMinute,int interval , int duration);
    //15
    int setDeviceInfo();
    //16
    int setHourFormat(int type);
    //17
    int getDataByDay(int type,int day);
    // 18 发送手机系统使用语言
    int setLanguage();
    // 19 发送天气数据
    int sendWeather();
    // 20 打开关闭断连防丢提醒
    int setAntiLost(boolean enable);
    // 21 打开关闭血压，血氧，疲劳度
    int setBloodPressureMode(boolean enable);
    // 22 取得某天多运动模式数据
    int getMultipleSportData(int day);
    // 23 设置运动目标步数
    int setGoalStep(int step);
    // 24 获取手环功能项
    int getBandFunction();
    //25设置心率区间
    int setDeviceHeartRateArea(boolean enable,int max ,int min);
    //26 开关SDK日志功能 默认关闭 测试用
    int openSDKLog(boolean enable,String logPath,String fileName);

    //27 获取固件升级信息
    int getOtaInfo(boolean auto);
    // 设置机器串码
    int setDeviceCode(in byte[] bytes);
    // 获取机器串码
    int getDeviceCode();

    // 设置UUID
    int setUuid(in String[] uuidRead, in String[] uuidWrite, boolean bOpen);
    // 发送蓝牙数据
    int writeCharacteristic(String uuidWrite, in byte[] bytes);

    // 开启关闭心电
    int setEcgMode(boolean enable, int mode);
    // 获取心电历史
    int getEcgHistory(int timestamp);
    // 设置手环名称
    int setDeviceName(String name);
    // 获取设备信号强度
    int getDeviceRssi();
    // 设置提醒时间
    int setReminder(int time,int startHour,int startMinute,int endHour,int endMinute, int id, int type);
    // 设置提醒内容
    int setReminderText(int id, String text);
    // 设置血压校准
    int setBPAdjust(int sbp, int dbp);
    // 开启实时体温
    int setTemperatureMode(boolean enable);

    // 读取表盘信息
    int getDeviceDial();
    // 管理表盘状态
    int setDeviceDialState(int state);
    // 管理自定义壁纸状态
    int setDeviceWallpaperState(int state);
    // 编辑表盘自定义数据
    int editDeviceDialCustom(int p1, int p2, int p3, int p4);
    // 读取表盘自定义数据
    int getDeviceDialCustom();

    //11
    int sendPhoneCallState(int p1, int p2, int p3, int p4);

    // 设置女性受理周期数据
    int setFemaleReminder(boolean enable, int year, int month, int day, int duration, int peroid);

    // 下发联系人校验码
    int setContactCrc(String contactCrc);
    // 下发联系人信息
    int setContactInfo(in ContactInfo contactInfo);
    // 下发AppID信息
    int setAppId(String appId);
    // 下发Mac信息
    int setPhoneMac(String mac);

    //11
    int sendPhoneVolume(int curMusicVolume, int maxMusicVolume, int curVoiceCallVolume, int maxVoiceCallVolume);
    // 下发手环绑定信息
    int setBindedInfo(int action, int state, int type);

    // 下发ECard信息CRC
    int setECardInfoCrc(in ECardInfo ecardInfo);
    // 下发ECard信息你内容
    int setECardInfoContent(in ECardInfo ecardInfo);

    // 下发短信快速回复信息CRC
    int setSmsRspInfoCrc(in SmsRspInfo smsRspInfo);
    // 下发短信快速回复信息
    int setSmsRspInfoContent(in SmsRspInfo smsRspInfo);
    // 下发短信快速回复信息
    int setSmsRspSendAck(int id);

    // download ota file
    int startFileOta(int mode, String filePath);

    // generate img file to bin file
    String translateBmpToBin(
        String imgFilename,
        String wallpaperFilePath,
        String wallpaperFileName,
        int watchColorType,
        int watchShapeType,
        int watchWidth,
        int watchHeight,
        int watchUnitWidth,
        int watchReviewWidth,
        int watchReviewHeight,
        int timePos,
        int timeAboveContent,
        int timeBelowContent,
        int fontRed,
        int fontGreen,
        int fontBlue);

    // download chatgpt content
    int setChatgptContent(int mode, String content);

    // download ota file
    int startFactoryTestMode(boolean enable);

    // download dial server info
    int getDialServerInfo(String fw);

    // 21 打开关闭血氧，疲劳度
    int setBloodOxygenMode(boolean enable);

    // get eq action
    int getEqInfo();

    // set eq action
    int setEqInfo2(int mode, int gain, int eqCount, in int[] eqs);

    // set wifi info
    int setWifiHotSpotInfo(String ssid, String password);

    // set wifi info
    int setWifiHotSpotInfoEx(String ssid, String password, int timeout);

    // get wifi state
    int getWifiState();

    // scan wifi info
    int scanWifi();

    // connnect ftp server on device
    int connectFtp(String IpAddr, String username, String password, int port);

    // get ftp file state
    int getDeviceFileState();

    // set ftp file state
    int setDeviceFileState(int state);

    // read ftp file state
    int getMediaFileState();

    // notify download ftp file completed
    int notifyDownloadFtpFileCompleted();

    // set ai language
    int setAILang(String lang);

    // get device system state
    int getDeviceSystemStateInfo();

    // set AI chat state
    int setAiChatState(boolean enable);

    // set gsensor indication data state
    int setGSensorIndState(boolean enable);

    // set offline speech state state
    int setOfflineSpeechRecognitionState(boolean enable);

    // open device wifi ap mode
    int openWifiApMode(boolean bAutoDownload);

    //17
    int setAppState(int actionType,int appState);

    int setWorshipInfo(int worshipTimes,int vibrationTimes);
    int setTouchMode(int mode);
    int setAiConnectionMethod(int mode);

    // 22 取得某天离线血氧数据
    int getOxygenOfflineData(int day);
    int getAdvSensorOfflineData(int day);
    int openRawDataNotification(boolean enable);
    int connectAiServerNotification(boolean enable);
    int setAiExtraAction(int type);
    int openAiState(boolean enable);
    int queryAiState();
    int saveFileToSystemAlbum(String localFileName);
    int openAiAudioState(boolean enable);
    void startFtpDownloadTask(String newDecIpAddr, String username, String password, int port, String path);

    int SetScreenLightTime(int duration);

    int setAiCommandType(int cmdType);
    int queryOfflineSpeechRecognitionState();

    int setSpoMode(boolean enable);
    int setSugarMode(boolean enable);
    int setPressureMode(boolean enable);
}

