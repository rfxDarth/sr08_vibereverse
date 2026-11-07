.class Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;
.super Ljava/lang/Object;
.source "UpdateAgent.java"

# interfaces
.implements Lezy/boost/update/OnDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lezy/boost/update/UpdateAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultNotificationDownloadListener"
.end annotation


# instance fields
.field private mBuilder:Landroidx/appcompat/app/NotificationCompat$Builder;

.field private mContext:Landroid/content/Context;

.field private mNotifyId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    iput-object p1, p0, Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;->mContext:Landroid/content/Context;

    .line 400
    iput p2, p0, Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;->mNotifyId:I

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 435
    iget-object v0, p0, Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 436
    iget v1, p0, Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;->mNotifyId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public onProgress(I)V
    .locals 3

    .line 421
    iget-object v0, p0, Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;->mBuilder:Landroidx/appcompat/app/NotificationCompat$Builder;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    .line 423
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 424
    iget-object v0, p0, Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;->mBuilder:Landroidx/appcompat/app/NotificationCompat$Builder;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 426
    :cond_0
    iget-object v0, p0, Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;->mBuilder:Landroidx/appcompat/app/NotificationCompat$Builder;

    const/16 v2, 0x64

    invoke-virtual {v0, v2, p1, v1}, Landroidx/appcompat/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 428
    iget-object p1, p0, Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;->mContext:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 429
    iget v0, p0, Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;->mNotifyId:I

    iget-object v1, p0, Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;->mBuilder:Landroidx/appcompat/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroidx/appcompat/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 405
    iget-object v0, p0, Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;->mBuilder:Landroidx/appcompat/app/NotificationCompat$Builder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;->mContext:Landroid/content/Context;

    sget v3, Lezy/boost/update/R$string;->update_now:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 407
    new-instance v2, Landroidx/appcompat/app/NotificationCompat$Builder;

    iget-object v3, p0, Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/appcompat/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;->mBuilder:Landroidx/appcompat/app/NotificationCompat$Builder;

    const/4 v3, 0x1

    .line 408
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 409
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    const/4 v3, 0x2

    .line 410
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 411
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v3, p0, Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;->mContext:Landroid/content/Context;

    .line 412
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 413
    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 414
    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 416
    :cond_0
    invoke-virtual {p0, v1}, Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;->onProgress(I)V

    return-void
.end method
