.class Lcom/qiniu/android/common/AutoZone$3;
.super Ljava/lang/Object;
.source "AutoZone.java"

# interfaces
.implements Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/common/AutoZone;->query(Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/common/Zone$QueryHandlerV2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/qiniu/android/utils/SingleFlight$CompleteHandler<",
        "Lcom/qiniu/android/common/AutoZone$SingleFlightValue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/common/AutoZone;

.field final synthetic val$cacheKey:Ljava/lang/String;

.field final synthetic val$completeHandler:Lcom/qiniu/android/common/Zone$QueryHandlerV2;

.field final synthetic val$finalZonesInfo:Lcom/qiniu/android/common/ZonesInfo;

.field final synthetic val$token:Lcom/qiniu/android/storage/UpToken;


# direct methods
.method constructor <init>(Lcom/qiniu/android/common/AutoZone;Ljava/lang/String;Lcom/qiniu/android/common/Zone$QueryHandlerV2;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/common/ZonesInfo;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/qiniu/android/common/AutoZone$3;->this$0:Lcom/qiniu/android/common/AutoZone;

    iput-object p2, p0, Lcom/qiniu/android/common/AutoZone$3;->val$cacheKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/qiniu/android/common/AutoZone$3;->val$completeHandler:Lcom/qiniu/android/common/Zone$QueryHandlerV2;

    iput-object p4, p0, Lcom/qiniu/android/common/AutoZone$3;->val$token:Lcom/qiniu/android/storage/UpToken;

    iput-object p5, p0, Lcom/qiniu/android/common/AutoZone$3;->val$finalZonesInfo:Lcom/qiniu/android/common/ZonesInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/qiniu/android/common/AutoZone$SingleFlightValue;)V
    .locals 5

    .line 203
    invoke-static {p1}, Lcom/qiniu/android/common/AutoZone$SingleFlightValue;->access$300(Lcom/qiniu/android/common/AutoZone$SingleFlightValue;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v0

    .line 204
    invoke-static {p1}, Lcom/qiniu/android/common/AutoZone$SingleFlightValue;->access$500(Lcom/qiniu/android/common/AutoZone$SingleFlightValue;)Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    move-result-object v1

    .line 205
    invoke-static {p1}, Lcom/qiniu/android/common/AutoZone$SingleFlightValue;->access$400(Lcom/qiniu/android/common/AutoZone$SingleFlightValue;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v2, 0x0

    .line 207
    const-string v3, "origin response:"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    .line 208
    invoke-static {p1}, Lcom/qiniu/android/common/ZonesInfo;->createZonesInfo(Lorg/json/JSONObject;)Lcom/qiniu/android/common/ZonesInfo;

    move-result-object p1

    .line 209
    invoke-virtual {p1}, Lcom/qiniu/android/common/ZonesInfo;->isValid()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 210
    invoke-static {}, Lcom/qiniu/android/common/AutoZone;->access$600()Lcom/qiniu/android/utils/Cache;

    move-result-object v2

    iget-object v3, p0, Lcom/qiniu/android/common/AutoZone$3;->val$cacheKey:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p1, v4}, Lcom/qiniu/android/utils/Cache;->cache(Ljava/lang/String;Lcom/qiniu/android/utils/Cache$Object;Z)V

    .line 211
    iget-object v2, p0, Lcom/qiniu/android/common/AutoZone$3;->this$0:Lcom/qiniu/android/common/AutoZone;

    invoke-static {v2}, Lcom/qiniu/android/common/AutoZone;->access$700(Lcom/qiniu/android/common/AutoZone;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/qiniu/android/common/AutoZone$3;->val$cacheKey:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v2, p0, Lcom/qiniu/android/common/AutoZone$3;->val$completeHandler:Lcom/qiniu/android/common/Zone$QueryHandlerV2;

    invoke-interface {v2, v0, v1, p1}, Lcom/qiniu/android/common/Zone$QueryHandlerV2;->complete(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lcom/qiniu/android/common/ZonesInfo;)V

    return-void

    .line 214
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qiniu/android/http/ResponseInfo;->parseError(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p1

    .line 215
    iget-object v0, p0, Lcom/qiniu/android/common/AutoZone$3;->val$completeHandler:Lcom/qiniu/android/common/Zone$QueryHandlerV2;

    invoke-interface {v0, p1, v1, v2}, Lcom/qiniu/android/common/Zone$QueryHandlerV2;->complete(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lcom/qiniu/android/common/ZonesInfo;)V

    return-void

    .line 218
    :cond_1
    iget-object p1, p0, Lcom/qiniu/android/common/AutoZone$3;->this$0:Lcom/qiniu/android/common/AutoZone;

    invoke-static {p1}, Lcom/qiniu/android/common/AutoZone;->access$800(Lcom/qiniu/android/common/AutoZone;)Lcom/qiniu/android/common/FixedZone;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 220
    iget-object p1, p0, Lcom/qiniu/android/common/AutoZone$3;->this$0:Lcom/qiniu/android/common/AutoZone;

    invoke-static {p1}, Lcom/qiniu/android/common/AutoZone;->access$800(Lcom/qiniu/android/common/AutoZone;)Lcom/qiniu/android/common/FixedZone;

    move-result-object p1

    iget-object v2, p0, Lcom/qiniu/android/common/AutoZone$3;->val$token:Lcom/qiniu/android/storage/UpToken;

    invoke-virtual {p1, v2}, Lcom/qiniu/android/common/FixedZone;->getZonesInfo(Lcom/qiniu/android/storage/UpToken;)Lcom/qiniu/android/common/ZonesInfo;

    move-result-object p1

    .line 221
    iget-object v2, p0, Lcom/qiniu/android/common/AutoZone$3;->this$0:Lcom/qiniu/android/common/AutoZone;

    invoke-static {v2}, Lcom/qiniu/android/common/AutoZone;->access$700(Lcom/qiniu/android/common/AutoZone;)Ljava/util/Map;

    move-result-object v2

    iget-object v4, p0, Lcom/qiniu/android/common/AutoZone$3;->val$cacheKey:Ljava/lang/String;

    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-static {}, Lcom/qiniu/android/http/ResponseInfo;->successResponse()Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v2

    .line 224
    iput-object v0, v2, Lcom/qiniu/android/http/ResponseInfo;->message:Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lcom/qiniu/android/common/AutoZone$3;->val$completeHandler:Lcom/qiniu/android/common/Zone$QueryHandlerV2;

    invoke-interface {v0, v2, v1, p1}, Lcom/qiniu/android/common/Zone$QueryHandlerV2;->complete(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lcom/qiniu/android/common/ZonesInfo;)V

    return-void

    .line 226
    :cond_2
    iget-object p1, p0, Lcom/qiniu/android/common/AutoZone$3;->val$finalZonesInfo:Lcom/qiniu/android/common/ZonesInfo;

    if-eqz p1, :cond_3

    .line 228
    iget-object p1, p0, Lcom/qiniu/android/common/AutoZone$3;->this$0:Lcom/qiniu/android/common/AutoZone;

    invoke-static {p1}, Lcom/qiniu/android/common/AutoZone;->access$700(Lcom/qiniu/android/common/AutoZone;)Ljava/util/Map;

    move-result-object p1

    iget-object v2, p0, Lcom/qiniu/android/common/AutoZone$3;->val$cacheKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/qiniu/android/common/AutoZone$3;->val$finalZonesInfo:Lcom/qiniu/android/common/ZonesInfo;

    invoke-interface {p1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 230
    invoke-static {}, Lcom/qiniu/android/http/ResponseInfo;->successResponse()Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v0

    .line 231
    iput-object p1, v0, Lcom/qiniu/android/http/ResponseInfo;->message:Ljava/lang/String;

    .line 232
    iget-object p1, p0, Lcom/qiniu/android/common/AutoZone$3;->val$completeHandler:Lcom/qiniu/android/common/Zone$QueryHandlerV2;

    iget-object v2, p0, Lcom/qiniu/android/common/AutoZone$3;->val$finalZonesInfo:Lcom/qiniu/android/common/ZonesInfo;

    invoke-interface {p1, v0, v1, v2}, Lcom/qiniu/android/common/Zone$QueryHandlerV2;->complete(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lcom/qiniu/android/common/ZonesInfo;)V

    return-void

    .line 234
    :cond_3
    iget-object p1, p0, Lcom/qiniu/android/common/AutoZone$3;->val$completeHandler:Lcom/qiniu/android/common/Zone$QueryHandlerV2;

    invoke-interface {p1, v0, v1, v2}, Lcom/qiniu/android/common/Zone$QueryHandlerV2;->complete(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lcom/qiniu/android/common/ZonesInfo;)V

    return-void
.end method

.method public bridge synthetic complete(Ljava/lang/Object;)V
    .locals 0

    .line 200
    check-cast p1, Lcom/qiniu/android/common/AutoZone$SingleFlightValue;

    invoke-virtual {p0, p1}, Lcom/qiniu/android/common/AutoZone$3;->complete(Lcom/qiniu/android/common/AutoZone$SingleFlightValue;)V

    return-void
.end method
