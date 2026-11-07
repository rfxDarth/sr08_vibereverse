.class public Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "BaseActivity.java"


# static fields
.field private static instance:Lcom/jaga/ibraceletplus/jyring/BaseActivity;


# instance fields
.field public TAG:Ljava/lang/String;

.field private am:Lcom/jaga/ibraceletplus/jyring/AppMng;

.field public bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

.field public iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

.field public macid:Ljava/lang/String;

.field public mid:Ljava/lang/String;

.field public sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

.field public tid:Ljava/lang/String;

.field public timezone:Ljava/lang/String;

.field public typeface:Landroid/graphics/Typeface;

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 42
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 43
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/AppMng;->getInstance()Lcom/jaga/ibraceletplus/jyring/AppMng;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->am:Lcom/jaga/ibraceletplus/jyring/AppMng;

    .line 44
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getInstance()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->TAG:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->macid:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->uid:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->tid:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->mid:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "Z"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->timezone:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/jaga/ibraceletplus/jyring/BaseActivity;
    .locals 1

    .line 107
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->instance:Lcom/jaga/ibraceletplus/jyring/BaseActivity;

    return-object v0
.end method


# virtual methods
.method public checkNotificationPermission()V
    .locals 5

    .line 234
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->isAppNotifyEnable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enabled_notification_listeners"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 241
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 242
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 243
    aget-object v4, v1, v3

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 245
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v2

    :cond_3
    if-nez v3, :cond_4

    .line 252
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->startActivity(Landroid/content/Intent;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    return-object p0
.end method

.method public getMacid()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getBleDeviceInfo()Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->macid:Ljava/lang/String;

    goto :goto_0

    .line 149
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->macid:Ljava/lang/String;

    .line 150
    :goto_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->macid:Ljava/lang/String;

    return-object v0
.end method

.method public getMid()Ljava/lang/String;
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "memberid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->mid:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const/4 v1, 0x0

    .line 167
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 166
    const-string v2, "cur_ble_state"

    invoke-virtual {v0, v2, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected isAppNotifyEnable()Z
    .locals 20

    .line 195
    sget-object v10, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_DINGDING:Ljava/lang/String;

    sget-object v11, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_WANGWANG:Ljava/lang/String;

    sget-object v12, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_INSTAGRAM:Ljava/lang/String;

    sget-object v13, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_LINKEDIN:Ljava/lang/String;

    sget-object v14, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_SNAPCHAT:Ljava/lang/String;

    sget-object v15, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_WEIBO:Ljava/lang/String;

    sget-object v16, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_VKONTAKTE:Ljava/lang/String;

    sget-object v17, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_PINTEREST:Ljava/lang/String;

    sget-object v18, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_GMAIL:Ljava/lang/String;

    const-string v19, "P_ENABLE_MUSIC"

    const-string v1, "Enable_New_Sms"

    const-string v2, "P_ENABLE_NEW_WECHAT"

    const-string v3, "P_ENABLE_NEW_MOBILEQQ"

    const-string v4, "P_ENABLE_NEW_FACEBOOK"

    const-string v5, "P_ENABLE_NEW_SKYPE"

    const-string v6, "P_ENABLE_NEW_TWITTER"

    const-string v7, "P_ENABLE_NEW_WHATSAPP"

    const-string v8, "P_ENABLE_NEW_LINE"

    const-string v9, "P_ENABLE_NEW_KAKAOTALK"

    filled-new-array/range {v1 .. v19}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x13

    if-ge v1, v3, :cond_1

    move-object/from16 v3, p0

    .line 222
    iget-object v2, v3, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    aget-object v4, v0, v1

    const-string v5, "false"

    invoke-virtual {v2, v4, v5}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v3, p0

    return v2
.end method

.method protected isSysNotifyEnabled()Z
    .locals 5

    .line 256
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_notification_listeners"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 259
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 262
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 263
    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 264
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 60
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    new-instance p1, Lnet/grandcentrix/tray/AppPreferences;

    invoke-direct {p1, p0}, Lnet/grandcentrix/tray/AppPreferences;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    .line 62
    sput-object p0, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->instance:Lcom/jaga/ibraceletplus/jyring/BaseActivity;

    .line 63
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->am:Lcom/jaga/ibraceletplus/jyring/AppMng;

    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p1, p0}, Lcom/jaga/ibraceletplus/jyring/AppMng;->addActivity(Landroid/app/Activity;)V

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    if-nez p1, :cond_1

    .line 67
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getInstance()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    .line 70
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    if-eqz p1, :cond_2

    .line 71
    const-string v0, "Token"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->tid:Ljava/lang/String;

    .line 72
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v0, "memberid"

    invoke-virtual {p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->mid:Ljava/lang/String;

    .line 73
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string/jumbo v0, "userid"

    invoke-virtual {p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->uid:Ljava/lang/String;

    .line 74
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getBleDeviceInfo()Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    if-eqz p1, :cond_2

    .line 76
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->macid:Ljava/lang/String;

    .line 78
    :cond_2
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->getTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->typeface:Landroid/graphics/Typeface;

    .line 81
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_4

    .line 82
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 83
    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;)Landroid/view/WindowInsetsController;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    .line 88
    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowInsetsController;I)V

    .line 90
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/BaseActivity$$ExternalSyntheticApiModelOutline0;->m()I

    move-result v0

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/view/WindowInsetsController;I)V

    const/16 v0, 0x8

    .line 91
    invoke-static {p1, v0, v0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowInsetsController;II)V

    .line 97
    :cond_3
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;Z)V

    :cond_4
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->am:Lcom/jaga/ibraceletplus/jyring/AppMng;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0, p0}, Lcom/jaga/ibraceletplus/jyring/AppMng;->removeActivity(Landroid/app/Activity;)V

    .line 115
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method public reportError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected resetNotificationSetting()V
    .locals 20

    move-object/from16 v0, p0

    .line 272
    sget-object v10, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_DINGDING:Ljava/lang/String;

    sget-object v11, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_WANGWANG:Ljava/lang/String;

    sget-object v12, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_INSTAGRAM:Ljava/lang/String;

    sget-object v13, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_LINKEDIN:Ljava/lang/String;

    sget-object v14, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_SNAPCHAT:Ljava/lang/String;

    sget-object v15, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_WEIBO:Ljava/lang/String;

    sget-object v16, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_TUMBLR:Ljava/lang/String;

    sget-object v17, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_VKONTAKTE:Ljava/lang/String;

    sget-object v18, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_PINTEREST:Ljava/lang/String;

    sget-object v19, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_GMAIL:Ljava/lang/String;

    const-string v1, "Enable_New_Sms"

    const-string v2, "P_ENABLE_NEW_WECHAT"

    const-string v3, "P_ENABLE_NEW_MOBILEQQ"

    const-string v4, "P_ENABLE_NEW_FACEBOOK"

    const-string v5, "P_ENABLE_NEW_SKYPE"

    const-string v6, "P_ENABLE_NEW_TWITTER"

    const-string v7, "P_ENABLE_NEW_WHATSAPP"

    const-string v8, "P_ENABLE_NEW_LINE"

    const-string v9, "P_ENABLE_NEW_KAKAOTALK"

    filled-new-array/range {v1 .. v19}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x13

    if-ge v2, v3, :cond_0

    .line 297
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    aget-object v4, v1, v2

    const-string v5, "false"

    invoke-virtual {v3, v4, v5}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 298
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4, v5}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 301
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "jringACTION_NOTIFY_SETTING_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    .line 303
    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->sendBroadcastWithPackageToService(Landroid/content/Intent;)V

    return-void
.end method

.method public saveLog(Ljava/lang/String;)V
    .locals 4

    .line 172
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateString(Ljava/util/Date;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-ui.log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/JRing/log/"

    invoke-static {p0, p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->writeTxtToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendBroadcastWithPackage(Landroid/content/Intent;)V
    .locals 1

    .line 178
    const-string v0, "com.jaga.ibraceletplus.jyring"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public sendBroadcastWithPackageToService(Landroid/content/Intent;)V
    .locals 1

    .line 183
    const-string v0, "com.jaga.ibraceletplus.jyring"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .line 120
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->setContentView(I)V

    .line 121
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 122
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->setStatusMain()V

    const p1, 0x7f0a01d5

    .line 124
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 126
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/BaseActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setStatusEcg()V
    .locals 0

    return-void
.end method

.method public setStatusFemaleRemind()V
    .locals 0

    return-void
.end method

.method public setStatusMain()V
    .locals 0

    return-void
.end method
