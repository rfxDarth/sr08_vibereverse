.class public abstract Lcom/qiniu/android/common/Zone;
.super Ljava/lang/Object;
.source "Zone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/common/Zone$QueryHandlerV2;,
        Lcom/qiniu/android/common/Zone$QueryHandler;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getZonesInfo(Lcom/qiniu/android/storage/UpToken;)Lcom/qiniu/android/common/ZonesInfo;
.end method

.method public abstract preQuery(Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/common/Zone$QueryHandler;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract query(Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/common/Zone$QueryHandlerV2;)V
.end method
