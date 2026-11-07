.class Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil$1;
.super Ljava/lang/Object;
.source "SoundPlayUtil.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->init(Landroid/content/Context;)Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 52
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
