.class public Lcom/jaga/ibraceletplus/jyring/service/MusicControlService;
.super Landroid/service/notification/NotificationListenerService;
.source "MusicControlService.java"


# instance fields
.field final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 14
    const-string v0, "MusicControlService"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/MusicControlService;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 18
    const-string v0, "MusicControlService"

    const-string/jumbo v1, "\u97f3\u4e50\u63a8\u9001\u670d\u52a1\u5df2\u542f\u52a8"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    .line 24
    const-string p1, "MusicControlService"

    const-string/jumbo v0, "\u6536\u5230\u901a\u77e5"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "notify_posted"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    .line 30
    const-string p1, "MusicControlService"

    const-string/jumbo v0, "\u79fb\u9664\u901a\u77e5"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "notify_removed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method
