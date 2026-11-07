.class public Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$Media;
.super Ljava/lang/Object;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Media"
.end annotation


# instance fields
.field public date:J

.field public id:J

.field public orientation:I

.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;

.field public uri:Landroid/net/Uri;

.field public video:Z


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;JZLandroid/net/Uri;JI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 504
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$Media;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    iput-wide p2, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$Media;->id:J

    .line 506
    iput-boolean p4, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$Media;->video:Z

    .line 507
    iput-object p5, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$Media;->uri:Landroid/net/Uri;

    .line 508
    iput-wide p6, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$Media;->date:J

    .line 509
    iput p8, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$Media;->orientation:I

    return-void
.end method
