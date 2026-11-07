.class abstract Lcom/qiniu/android/storage/UploadSource;
.super Ljava/lang/Object;
.source "UploadSource.java"


# static fields
.field static final UnknownSourceSize:J = -0x1L


# direct methods
.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract close()V
.end method

.method abstract couldReloadSource()Z
.end method

.method abstract getFileName()Ljava/lang/String;
.end method

.method abstract getId()Ljava/lang/String;
.end method

.method abstract getSize()J
.end method

.method abstract getSourceType()Ljava/lang/String;
.end method

.method abstract readData(IJ)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract reloadSource()Z
.end method
