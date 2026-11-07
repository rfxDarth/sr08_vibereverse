.class public Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;
.super Ljava/lang/Object;
.source "VolumeChangeObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver$VolumeChangeListener;,
        Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver$VolumeBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field private static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mRegistered:Z

.field private mVolumeBroadcastReceiver:Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver$VolumeBroadcastReceiver;

.field private mVolumeChangeListener:Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver$VolumeChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;->mRegistered:Z

    .line 34
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;->mContext:Landroid/content/Context;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public getCurrentAlarmVolume()I
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentMusicVolume()I
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentRingVolume()I
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentSystemVolume()I
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentVoiceCallVolume()I
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public getMaxAlarmVolume()I
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0xf

    return v0
.end method

.method public getMaxMusicVolume()I
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0xf

    return v0
.end method

.method public getMaxRingVolume()I
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0xf

    return v0
.end method

.method public getMaxSystemVolume()I
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0xf

    return v0
.end method

.method public getMaxVoiceCallVolume()I
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0xf

    return v0
.end method

.method public getVolumeChangeListener()Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver$VolumeChangeListener;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;->mVolumeChangeListener:Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver$VolumeChangeListener;

    return-object v0
.end method

.method public registerReceiver()V
    .locals 3

    .line 132
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;->mRegistered:Z

    if-eqz v0, :cond_0

    return-void

    .line 135
    :cond_0
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver$VolumeBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver$VolumeBroadcastReceiver;-><init>(Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;->mVolumeBroadcastReceiver:Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver$VolumeBroadcastReceiver;

    .line 136
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 137
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;->mVolumeBroadcastReceiver:Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver$VolumeBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;->mRegistered:Z

    return-void
.end method

.method public setVolumeChangeListener(Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver$VolumeChangeListener;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;->mVolumeChangeListener:Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver$VolumeChangeListener;

    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    .line 146
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;->mVolumeBroadcastReceiver:Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver$VolumeBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;->mVolumeChangeListener:Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver$VolumeChangeListener;

    const/4 v0, 0x0

    .line 150
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;->mRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 152
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method
