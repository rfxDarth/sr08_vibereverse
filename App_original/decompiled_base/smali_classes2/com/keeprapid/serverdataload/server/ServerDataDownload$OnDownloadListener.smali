.class public interface abstract Lcom/keeprapid/serverdataload/server/ServerDataDownload$OnDownloadListener;
.super Ljava/lang/Object;
.source "ServerDataDownload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keeprapid/serverdataload/server/ServerDataDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDownloadListener"
.end annotation


# virtual methods
.method public abstract afterDownload(Ljava/lang/String;ILorg/json/JSONObject;)V
.end method

.method public abstract onDownload(Ljava/lang/String;Lcom/keeprapid/serverdataload/model/Key;Lorg/json/JSONObject;)Z
.end method
