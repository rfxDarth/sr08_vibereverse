.class Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$FileInfo;
.super Ljava/lang/Object;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileInfo"
.end annotation


# instance fields
.field id:J

.field name:Ljava/lang/String;

.field timestamp:J


# direct methods
.method constructor <init>(JLjava/lang/String;J)V
    .locals 0

    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    iput-wide p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$FileInfo;->id:J

    .line 584
    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$FileInfo;->name:Ljava/lang/String;

    .line 585
    iput-wide p4, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$FileInfo;->timestamp:J

    return-void
.end method
