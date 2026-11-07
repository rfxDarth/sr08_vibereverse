.class Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver$VolumeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VolumeChangeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VolumeBroadcastReceiver"
.end annotation


# instance fields
.field private mObserverWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;)V
    .locals 1

    .line 160
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 161
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver$VolumeBroadcastReceiver;->mObserverWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 167
    const-string p1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 169
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver$VolumeBroadcastReceiver;->mObserverWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;

    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;->getVolumeChangeListener()Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver$VolumeChangeListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 173
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;->getCurrentMusicVolume()I

    move-result p1

    if-ltz p1, :cond_0

    .line 175
    invoke-interface {p2, p1}, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver$VolumeChangeListener;->onVolumeChanged(I)V

    :cond_0
    return-void
.end method
