.class public interface abstract Lcom/keeprapid/serverdataload/server/ServerDataUpload$OnUploadListener;
.super Ljava/lang/Object;
.source "ServerDataUpload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keeprapid/serverdataload/server/ServerDataUpload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnUploadListener"
.end annotation


# virtual methods
.method public abstract afterUpload(Ljava/lang/String;ILorg/json/JSONObject;)V
.end method

.method public abstract onUpload(Ljava/lang/String;Ljava/util/List;Lcom/keeprapid/serverdataload/model/Key;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/keeprapid/serverdataload/model/Key;",
            ")Z"
        }
    .end annotation
.end method
