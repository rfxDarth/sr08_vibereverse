.class Lezy/boost/update/UpdateAgent;
.super Ljava/lang/Object;
.source "UpdateAgent.java"

# interfaces
.implements Lezy/boost/update/ICheckAgent;
.implements Lezy/boost/update/IUpdateAgent;
.implements Lezy/boost/update/IDownloadAgent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;,
        Lezy/boost/update/UpdateAgent$DefaultDialogDownloadListener;,
        Lezy/boost/update/UpdateAgent$DefaultFailureListener;,
        Lezy/boost/update/UpdateAgent$DefaultUpdatePrompter;,
        Lezy/boost/update/UpdateAgent$DefaultUpdateParser;,
        Lezy/boost/update/UpdateAgent$DefaultUpdateDownloader;
    }
.end annotation


# instance fields
.field private mApkFile:Ljava/io/File;

.field private mChecker:Lezy/boost/update/IUpdateChecker;

.field private mContext:Landroid/content/Context;

.field private mDownloader:Lezy/boost/update/IUpdateDownloader;

.field private mError:Lezy/boost/update/UpdateError;

.field private mInfo:Lezy/boost/update/UpdateInfo;

.field private mIsManual:Z

.field private mIsWifiOnly:Z

.field private mOnDownloadListener:Lezy/boost/update/OnDownloadListener;

.field private mOnFailureListener:Lezy/boost/update/OnFailureListener;

.field private mOnNotificationDownloadListener:Lezy/boost/update/OnDownloadListener;

.field private mParser:Lezy/boost/update/IUpdateParser;

.field private mPrompter:Lezy/boost/update/IUpdatePrompter;

.field private mTmpFile:Ljava/io/File;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZZI)V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lezy/boost/update/UpdateAgent;->mIsManual:Z

    .line 43
    iput-boolean v0, p0, Lezy/boost/update/UpdateAgent;->mIsWifiOnly:Z

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lezy/boost/update/UpdateAgent;->mError:Lezy/boost/update/UpdateError;

    .line 48
    new-instance v1, Lezy/boost/update/UpdateAgent$DefaultUpdateParser;

    invoke-direct {v1, v0}, Lezy/boost/update/UpdateAgent$DefaultUpdateParser;-><init>(Lezy/boost/update/UpdateAgent$1;)V

    iput-object v1, p0, Lezy/boost/update/UpdateAgent;->mParser:Lezy/boost/update/IUpdateParser;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lezy/boost/update/UpdateAgent;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lezy/boost/update/UpdateAgent;->mUrl:Ljava/lang/String;

    .line 61
    iput-boolean p3, p0, Lezy/boost/update/UpdateAgent;->mIsManual:Z

    .line 62
    iput-boolean p4, p0, Lezy/boost/update/UpdateAgent;->mIsWifiOnly:Z

    .line 63
    new-instance p2, Lezy/boost/update/UpdateAgent$DefaultUpdateDownloader;

    iget-object p3, p0, Lezy/boost/update/UpdateAgent;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Lezy/boost/update/UpdateAgent$DefaultUpdateDownloader;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lezy/boost/update/UpdateAgent;->mDownloader:Lezy/boost/update/IUpdateDownloader;

    .line 64
    new-instance p2, Lezy/boost/update/UpdateAgent$DefaultUpdatePrompter;

    invoke-direct {p2, p1}, Lezy/boost/update/UpdateAgent$DefaultUpdatePrompter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lezy/boost/update/UpdateAgent;->mPrompter:Lezy/boost/update/IUpdatePrompter;

    .line 65
    new-instance p2, Lezy/boost/update/UpdateAgent$DefaultFailureListener;

    invoke-direct {p2, p1}, Lezy/boost/update/UpdateAgent$DefaultFailureListener;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lezy/boost/update/UpdateAgent;->mOnFailureListener:Lezy/boost/update/OnFailureListener;

    .line 66
    new-instance p2, Lezy/boost/update/UpdateAgent$DefaultDialogDownloadListener;

    invoke-direct {p2, p1}, Lezy/boost/update/UpdateAgent$DefaultDialogDownloadListener;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lezy/boost/update/UpdateAgent;->mOnDownloadListener:Lezy/boost/update/OnDownloadListener;

    if-lez p5, :cond_0

    .line 68
    new-instance p1, Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;

    iget-object p2, p0, Lezy/boost/update/UpdateAgent;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p5}, Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lezy/boost/update/UpdateAgent;->mOnNotificationDownloadListener:Lezy/boost/update/OnDownloadListener;

    return-void

    .line 70
    :cond_0
    new-instance p1, Lezy/boost/update/DefaultDownloadListener;

    invoke-direct {p1}, Lezy/boost/update/DefaultDownloadListener;-><init>()V

    iput-object p1, p0, Lezy/boost/update/UpdateAgent;->mOnNotificationDownloadListener:Lezy/boost/update/OnDownloadListener;

    return-void
.end method

.method static synthetic access$100(Lezy/boost/update/UpdateAgent;)Lezy/boost/update/IUpdateChecker;
    .locals 0

    .line 36
    iget-object p0, p0, Lezy/boost/update/UpdateAgent;->mChecker:Lezy/boost/update/IUpdateChecker;

    return-object p0
.end method

.method static synthetic access$102(Lezy/boost/update/UpdateAgent;Lezy/boost/update/IUpdateChecker;)Lezy/boost/update/IUpdateChecker;
    .locals 0

    .line 36
    iput-object p1, p0, Lezy/boost/update/UpdateAgent;->mChecker:Lezy/boost/update/IUpdateChecker;

    return-object p1
.end method

.method static synthetic access$200(Lezy/boost/update/UpdateAgent;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lezy/boost/update/UpdateAgent;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lezy/boost/update/UpdateAgent;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lezy/boost/update/UpdateAgent;->mUrl:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public check()V
    .locals 3

    .line 181
    const-string v0, "check"

    invoke-static {v0}, Lezy/boost/update/UpdateUtil;->log(Ljava/lang/String;)V

    .line 182
    iget-boolean v0, p0, Lezy/boost/update/UpdateAgent;->mIsWifiOnly:Z

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lezy/boost/update/UpdateUtil;->checkWifi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lezy/boost/update/UpdateAgent;->doCheck()V

    return-void

    .line 186
    :cond_0
    new-instance v0, Lezy/boost/update/UpdateError;

    iget-object v1, p0, Lezy/boost/update/UpdateAgent;->mContext:Landroid/content/Context;

    const/16 v2, 0x7d2

    invoke-direct {v0, v1, v2}, Lezy/boost/update/UpdateError;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lezy/boost/update/UpdateAgent;->doFailure(Lezy/boost/update/UpdateError;)V

    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lezy/boost/update/UpdateUtil;->checkNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    invoke-virtual {p0}, Lezy/boost/update/UpdateAgent;->doCheck()V

    return-void

    .line 192
    :cond_2
    new-instance v0, Lezy/boost/update/UpdateError;

    iget-object v1, p0, Lezy/boost/update/UpdateAgent;->mContext:Landroid/content/Context;

    const/16 v2, 0x7d3

    invoke-direct {v0, v1, v2}, Lezy/boost/update/UpdateError;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lezy/boost/update/UpdateAgent;->doFailure(Lezy/boost/update/UpdateError;)V

    return-void
.end method

.method doCheck()V
    .locals 2

    .line 200
    new-instance v0, Lezy/boost/update/UpdateAgent$1;

    invoke-direct {v0, p0}, Lezy/boost/update/UpdateAgent$1;-><init>(Lezy/boost/update/UpdateAgent;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 212
    invoke-virtual {v0, v1}, Lezy/boost/update/UpdateAgent$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method doCheckFinish()V
    .locals 5

    .line 216
    const-string v0, "check finish"

    invoke-static {v0}, Lezy/boost/update/UpdateUtil;->log(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mError:Lezy/boost/update/UpdateError;

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p0, v0}, Lezy/boost/update/UpdateAgent;->doFailure(Lezy/boost/update/UpdateError;)V

    return-void

    .line 221
    :cond_0
    invoke-virtual {p0}, Lezy/boost/update/UpdateAgent;->getInfo()Lezy/boost/update/UpdateInfo;

    move-result-object v0

    .line 224
    :try_start_0
    iget-object v1, p0, Lezy/boost/update/UpdateAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lezy/boost/update/UpdateAgent;->mContext:Landroid/content/Context;

    .line 225
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 224
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 226
    iget v2, v0, Lezy/boost/update/UpdateInfo;->versionCode:I

    if-gt v2, v1, :cond_1

    .line 227
    iput-boolean v3, v0, Lezy/boost/update/UpdateInfo;->hasUpdate:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 229
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 232
    new-instance v0, Lezy/boost/update/UpdateError;

    iget-object v1, p0, Lezy/boost/update/UpdateAgent;->mContext:Landroid/content/Context;

    const/16 v2, 0x7d1

    invoke-direct {v0, v1, v2}, Lezy/boost/update/UpdateError;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lezy/boost/update/UpdateAgent;->doFailure(Lezy/boost/update/UpdateError;)V

    goto/16 :goto_1

    .line 233
    :cond_2
    iget-boolean v1, v0, Lezy/boost/update/UpdateInfo;->hasUpdate:Z

    if-nez v1, :cond_3

    .line 234
    new-instance v0, Lezy/boost/update/UpdateError;

    iget-object v1, p0, Lezy/boost/update/UpdateAgent;->mContext:Landroid/content/Context;

    const/16 v2, 0x3ea

    invoke-direct {v0, v1, v2}, Lezy/boost/update/UpdateError;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lezy/boost/update/UpdateAgent;->doFailure(Lezy/boost/update/UpdateError;)V

    goto/16 :goto_1

    .line 235
    :cond_3
    iget-object v1, p0, Lezy/boost/update/UpdateAgent;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lezy/boost/update/UpdateInfo;->md5:Ljava/lang/String;

    invoke-static {v1, v2}, Lezy/boost/update/UpdateUtil;->isIgnore(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 236
    new-instance v0, Lezy/boost/update/UpdateError;

    iget-object v1, p0, Lezy/boost/update/UpdateAgent;->mContext:Landroid/content/Context;

    const/16 v2, 0x3e9

    invoke-direct {v0, v1, v2}, Lezy/boost/update/UpdateError;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lezy/boost/update/UpdateAgent;->doFailure(Lezy/boost/update/UpdateError;)V

    goto :goto_1

    .line 238
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "update md5"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lezy/boost/update/UpdateAgent;->mInfo:Lezy/boost/update/UpdateInfo;

    iget-object v2, v2, Lezy/boost/update/UpdateInfo;->md5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lezy/boost/update/UpdateUtil;->log(Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lezy/boost/update/UpdateAgent;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lezy/boost/update/UpdateUtil;->ensureExternalCacheDir(Landroid/content/Context;)V

    .line 240
    iget-object v1, p0, Lezy/boost/update/UpdateAgent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lezy/boost/update/UpdateAgent;->mInfo:Lezy/boost/update/UpdateInfo;

    iget-object v2, v2, Lezy/boost/update/UpdateInfo;->md5:Ljava/lang/String;

    invoke-static {v1, v2}, Lezy/boost/update/UpdateUtil;->setUpdate(Landroid/content/Context;Ljava/lang/String;)V

    .line 241
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lezy/boost/update/UpdateAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    iget-object v3, v0, Lezy/boost/update/UpdateInfo;->md5:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lezy/boost/update/UpdateAgent;->mTmpFile:Ljava/io/File;

    .line 242
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lezy/boost/update/UpdateAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lezy/boost/update/UpdateInfo;->md5:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lezy/boost/update/UpdateAgent;->mApkFile:Ljava/io/File;

    .line 244
    iget-object v2, p0, Lezy/boost/update/UpdateAgent;->mInfo:Lezy/boost/update/UpdateInfo;

    iget-object v2, v2, Lezy/boost/update/UpdateInfo;->md5:Ljava/lang/String;

    invoke-static {v1, v2}, Lezy/boost/update/UpdateUtil;->verify(Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 245
    invoke-virtual {p0}, Lezy/boost/update/UpdateAgent;->doInstall()V

    goto :goto_1

    .line 246
    :cond_5
    iget-boolean v0, v0, Lezy/boost/update/UpdateInfo;->isSilent:Z

    if-eqz v0, :cond_6

    .line 247
    invoke-virtual {p0}, Lezy/boost/update/UpdateAgent;->doDownload()V

    goto :goto_1

    .line 249
    :cond_6
    invoke-virtual {p0}, Lezy/boost/update/UpdateAgent;->doPrompt()V

    :goto_1
    return-void
.end method

.method doDownload()V
    .locals 3

    .line 261
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mDownloader:Lezy/boost/update/IUpdateDownloader;

    iget-object v1, p0, Lezy/boost/update/UpdateAgent;->mInfo:Lezy/boost/update/UpdateInfo;

    iget-object v1, v1, Lezy/boost/update/UpdateInfo;->url:Ljava/lang/String;

    iget-object v2, p0, Lezy/boost/update/UpdateAgent;->mTmpFile:Ljava/io/File;

    invoke-interface {v0, p0, v1, v2}, Lezy/boost/update/IUpdateDownloader;->download(Lezy/boost/update/IDownloadAgent;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method doFailure(Lezy/boost/update/UpdateError;)V
    .locals 1

    .line 269
    iget-boolean v0, p0, Lezy/boost/update/UpdateAgent;->mIsManual:Z

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mOnFailureListener:Lezy/boost/update/OnFailureListener;

    invoke-interface {v0, p1}, Lezy/boost/update/OnFailureListener;->onFailure(Lezy/boost/update/UpdateError;)V

    :cond_0
    return-void
.end method

.method doInstall()V
    .locals 3

    .line 265
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lezy/boost/update/UpdateAgent;->mApkFile:Ljava/io/File;

    iget-object v2, p0, Lezy/boost/update/UpdateAgent;->mInfo:Lezy/boost/update/UpdateInfo;

    iget-boolean v2, v2, Lezy/boost/update/UpdateInfo;->isForce:Z

    invoke-static {v0, v1, v2}, Lezy/boost/update/UpdateUtil;->install(Landroid/content/Context;Ljava/io/File;Z)V

    return-void
.end method

.method doPrompt()V
    .locals 1

    .line 257
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mPrompter:Lezy/boost/update/IUpdatePrompter;

    invoke-interface {v0, p0}, Lezy/boost/update/IUpdatePrompter;->prompt(Lezy/boost/update/IUpdateAgent;)V

    return-void
.end method

.method public getInfo()Lezy/boost/update/UpdateInfo;
    .locals 1

    .line 110
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mInfo:Lezy/boost/update/UpdateInfo;

    return-object v0
.end method

.method public ignore()V
    .locals 2

    .line 140
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lezy/boost/update/UpdateAgent;->getInfo()Lezy/boost/update/UpdateInfo;

    move-result-object v1

    iget-object v1, v1, Lezy/boost/update/UpdateInfo;->md5:Ljava/lang/String;

    invoke-static {v0, v1}, Lezy/boost/update/UpdateUtil;->setIgnore(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onFinish()V
    .locals 2

    .line 163
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mInfo:Lezy/boost/update/UpdateInfo;

    iget-boolean v0, v0, Lezy/boost/update/UpdateInfo;->isSilent:Z

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mOnNotificationDownloadListener:Lezy/boost/update/OnDownloadListener;

    invoke-interface {v0}, Lezy/boost/update/OnDownloadListener;->onFinish()V

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mOnDownloadListener:Lezy/boost/update/OnDownloadListener;

    invoke-interface {v0}, Lezy/boost/update/OnDownloadListener;->onFinish()V

    .line 168
    :goto_0
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mError:Lezy/boost/update/UpdateError;

    if-eqz v0, :cond_1

    .line 169
    iget-object v1, p0, Lezy/boost/update/UpdateAgent;->mOnFailureListener:Lezy/boost/update/OnFailureListener;

    invoke-interface {v1, v0}, Lezy/boost/update/OnFailureListener;->onFailure(Lezy/boost/update/UpdateError;)V

    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mTmpFile:Ljava/io/File;

    iget-object v1, p0, Lezy/boost/update/UpdateAgent;->mApkFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 172
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mInfo:Lezy/boost/update/UpdateInfo;

    iget-boolean v0, v0, Lezy/boost/update/UpdateInfo;->isAutoInstall:Z

    if-eqz v0, :cond_2

    .line 173
    invoke-virtual {p0}, Lezy/boost/update/UpdateAgent;->doInstall()V

    :cond_2
    return-void
.end method

.method public onProgress(I)V
    .locals 1

    .line 154
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mInfo:Lezy/boost/update/UpdateInfo;

    iget-boolean v0, v0, Lezy/boost/update/UpdateInfo;->isSilent:Z

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mOnNotificationDownloadListener:Lezy/boost/update/OnDownloadListener;

    invoke-interface {v0, p1}, Lezy/boost/update/OnDownloadListener;->onProgress(I)V

    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mOnDownloadListener:Lezy/boost/update/OnDownloadListener;

    invoke-interface {v0, p1}, Lezy/boost/update/OnDownloadListener;->onProgress(I)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 145
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mInfo:Lezy/boost/update/UpdateInfo;

    iget-boolean v0, v0, Lezy/boost/update/UpdateInfo;->isSilent:Z

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mOnNotificationDownloadListener:Lezy/boost/update/OnDownloadListener;

    invoke-interface {v0}, Lezy/boost/update/OnDownloadListener;->onStart()V

    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mOnDownloadListener:Lezy/boost/update/OnDownloadListener;

    invoke-interface {v0}, Lezy/boost/update/OnDownloadListener;->onStart()V

    return-void
.end method

.method public setChecker(Lezy/boost/update/IUpdateChecker;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lezy/boost/update/UpdateAgent;->mChecker:Lezy/boost/update/IUpdateChecker;

    return-void
.end method

.method public setDownloader(Lezy/boost/update/IUpdateDownloader;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lezy/boost/update/UpdateAgent;->mDownloader:Lezy/boost/update/IUpdateDownloader;

    return-void
.end method

.method public setError(Lezy/boost/update/UpdateError;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lezy/boost/update/UpdateAgent;->mError:Lezy/boost/update/UpdateError;

    return-void
.end method

.method public setInfo(Lezy/boost/update/UpdateInfo;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lezy/boost/update/UpdateAgent;->mInfo:Lezy/boost/update/UpdateInfo;

    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 2

    .line 116
    :try_start_0
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mParser:Lezy/boost/update/IUpdateParser;

    invoke-interface {v0, p1}, Lezy/boost/update/IUpdateParser;->parse(Ljava/lang/String;)Lezy/boost/update/UpdateInfo;

    move-result-object p1

    iput-object p1, p0, Lezy/boost/update/UpdateAgent;->mInfo:Lezy/boost/update/UpdateInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 118
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    new-instance p1, Lezy/boost/update/UpdateError;

    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mContext:Landroid/content/Context;

    const/16 v1, 0x7d6

    invoke-direct {p1, v0, v1}, Lezy/boost/update/UpdateError;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, p1}, Lezy/boost/update/UpdateAgent;->setError(Lezy/boost/update/UpdateError;)V

    return-void
.end method

.method public setOnDownloadListener(Lezy/boost/update/OnDownloadListener;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lezy/boost/update/UpdateAgent;->mOnDownloadListener:Lezy/boost/update/OnDownloadListener;

    return-void
.end method

.method public setOnFailureListener(Lezy/boost/update/OnFailureListener;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lezy/boost/update/UpdateAgent;->mOnFailureListener:Lezy/boost/update/OnFailureListener;

    return-void
.end method

.method public setOnNotificationDownloadListener(Lezy/boost/update/OnDownloadListener;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lezy/boost/update/UpdateAgent;->mOnNotificationDownloadListener:Lezy/boost/update/OnDownloadListener;

    return-void
.end method

.method public setParser(Lezy/boost/update/IUpdateParser;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lezy/boost/update/UpdateAgent;->mParser:Lezy/boost/update/IUpdateParser;

    return-void
.end method

.method public setPrompter(Lezy/boost/update/IUpdatePrompter;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lezy/boost/update/UpdateAgent;->mPrompter:Lezy/boost/update/IUpdatePrompter;

    return-void
.end method

.method public update()V
    .locals 4

    .line 130
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lezy/boost/update/UpdateAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lezy/boost/update/UpdateAgent;->mInfo:Lezy/boost/update/UpdateInfo;

    iget-object v3, v3, Lezy/boost/update/UpdateInfo;->md5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lezy/boost/update/UpdateAgent;->mApkFile:Ljava/io/File;

    .line 131
    iget-object v1, p0, Lezy/boost/update/UpdateAgent;->mInfo:Lezy/boost/update/UpdateInfo;

    iget-object v1, v1, Lezy/boost/update/UpdateInfo;->md5:Ljava/lang/String;

    invoke-static {v0, v1}, Lezy/boost/update/UpdateUtil;->verify(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lezy/boost/update/UpdateAgent;->doInstall()V

    return-void

    .line 134
    :cond_0
    invoke-virtual {p0}, Lezy/boost/update/UpdateAgent;->doDownload()V

    return-void
.end method
