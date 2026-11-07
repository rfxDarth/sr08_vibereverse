.class public interface abstract Lcom/qiniu/android/http/request/IUploadRegion;
.super Ljava/lang/Object;
.source "IUploadRegion.java"


# virtual methods
.method public abstract getNextServer(Lcom/qiniu/android/http/request/UploadRequestState;Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/request/IUploadServer;)Lcom/qiniu/android/http/request/IUploadServer;
.end method

.method public abstract getZoneInfo()Lcom/qiniu/android/common/ZoneInfo;
.end method

.method public abstract isEqual(Lcom/qiniu/android/http/request/IUploadRegion;)Z
.end method

.method public abstract isValid()Z
.end method

.method public abstract setupRegionData(Lcom/qiniu/android/common/ZoneInfo;)V
.end method

.method public abstract updateIpListFormHost(Ljava/lang/String;)V
.end method
