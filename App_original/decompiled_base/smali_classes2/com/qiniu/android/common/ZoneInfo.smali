.class public Lcom/qiniu/android/common/ZoneInfo;
.super Ljava/lang/Object;
.source "ZoneInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/common/ZoneInfo$UploadServerGroup;
    }
.end annotation


# static fields
.field private static DOMAIN_FROZEN_SECONDS:I = 0x258

.field public static final EmptyRegionId:Ljava/lang/String; = "unknown"

.field public static final SDKDefaultIOHost:Ljava/lang/String; = "sdkDefaultIOHost"


# instance fields
.field public final accelerateDomains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public allHosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final buildDate:Ljava/util/Date;

.field public detailInfo:Lorg/json/JSONObject;

.field public final domains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final http3Enabled:Z

.field public final ipv6:Z

.field public final old_domains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final regionId:Ljava/lang/String;

.field public final ttl:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(IZZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Date;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput p1, p0, Lcom/qiniu/android/common/ZoneInfo;->ttl:I

    .line 169
    iput-boolean p2, p0, Lcom/qiniu/android/common/ZoneInfo;->http3Enabled:Z

    .line 170
    iput-boolean p3, p0, Lcom/qiniu/android/common/ZoneInfo;->ipv6:Z

    .line 171
    iput-object p4, p0, Lcom/qiniu/android/common/ZoneInfo;->regionId:Ljava/lang/String;

    .line 172
    iput-object p6, p0, Lcom/qiniu/android/common/ZoneInfo;->domains:Ljava/util/List;

    .line 173
    iput-object p5, p0, Lcom/qiniu/android/common/ZoneInfo;->accelerateDomains:Ljava/util/List;

    .line 174
    iput-object p7, p0, Lcom/qiniu/android/common/ZoneInfo;->old_domains:Ljava/util/List;

    if-eqz p8, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    new-instance p8, Ljava/util/Date;

    invoke-direct {p8}, Ljava/util/Date;-><init>()V

    :goto_0
    iput-object p8, p0, Lcom/qiniu/android/common/ZoneInfo;->buildDate:Ljava/util/Date;

    .line 176
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p5, :cond_1

    .line 178
    invoke-interface {p1, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-eqz p6, :cond_2

    .line 181
    invoke-interface {p1, p6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    if-eqz p7, :cond_3

    .line 184
    invoke-interface {p1, p7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 186
    :cond_3
    iput-object p1, p0, Lcom/qiniu/android/common/ZoneInfo;->allHosts:Ljava/util/List;

    return-void
.end method

.method public static buildFromJson(Lorg/json/JSONObject;)Lcom/qiniu/android/common/ZoneInfo;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 201
    :cond_0
    const-string/jumbo v1, "ttl"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 202
    const-string/jumbo v1, "timestamp"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v4, v2

    const-wide/16 v6, 0x64

    cmp-long v2, v4, v6

    if-gez v2, :cond_1

    .line 204
    invoke-static {}, Lcom/qiniu/android/utils/Utils;->currentSecondTimestamp()J

    move-result-wide v4

    .line 205
    invoke-virtual {p0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_1
    const/4 v1, 0x0

    .line 211
    :try_start_0
    const-string v2, "features"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 212
    const-string v6, "http3"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 213
    const-string v7, "enabled"

    if-eqz v6, :cond_2

    .line 214
    :try_start_1
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    .line 217
    :goto_0
    :try_start_2
    const-string v8, "ipv6"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 219
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    nop

    goto :goto_1

    :catch_1
    nop

    const/4 v6, 0x0

    :cond_3
    :goto_1
    const/4 v2, 0x0

    .line 224
    :goto_2
    const-string v7, "region"

    const-string/jumbo v8, "unknown"

    invoke-virtual {p0, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 225
    const-string/jumbo v8, "up"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-nez v8, :cond_4

    return-object v0

    :cond_4
    move-object v9, v8

    .line 230
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 231
    const-string v10, "domains"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 232
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_6

    const/4 v11, 0x0

    .line 233
    :goto_3
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v11, v12, :cond_6

    .line 234
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v12

    .line 235
    invoke-static {v12}, Lcom/qiniu/android/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 236
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_6
    move-wide v10, v4

    move v4, v6

    move-object v6, v7

    .line 241
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 242
    const-string v5, "acc_domains"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 243
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lez v12, :cond_8

    const/4 v12, 0x0

    .line 244
    :goto_4
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v12, v13, :cond_8

    .line 245
    invoke-virtual {v5, v12}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v13

    .line 246
    invoke-static {v13}, Lcom/qiniu/android/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 247
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_8
    move-object v5, v9

    .line 252
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 253
    const-string v12, "old"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 254
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lez v12, :cond_a

    .line 255
    :goto_5
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v1, v12, :cond_a

    .line 256
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v12

    .line 257
    invoke-static {v12}, Lcom/qiniu/android/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 258
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 263
    :cond_a
    invoke-static {v7}, Lcom/qiniu/android/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {v8}, Lcom/qiniu/android/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    :cond_b
    move-wide v0, v10

    .line 267
    new-instance v10, Ljava/util/Date;

    const-wide/16 v11, 0x3e8

    mul-long v0, v0, v11

    invoke-direct {v10, v0, v1}, Ljava/util/Date;-><init>(J)V

    move v5, v2

    .line 268
    new-instance v2, Lcom/qiniu/android/common/ZoneInfo;

    invoke-direct/range {v2 .. v10}, Lcom/qiniu/android/common/ZoneInfo;-><init>(IZZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Date;)V

    .line 270
    iput-object p0, v2, Lcom/qiniu/android/common/ZoneInfo;->detailInfo:Lorg/json/JSONObject;

    return-object v2
.end method

.method public static buildInfo(Ljava/util/List;Ljava/lang/String;)Lcom/qiniu/android/common/ZoneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/qiniu/android/common/ZoneInfo;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 95
    invoke-static {v0, p0, v0, p1}, Lcom/qiniu/android/common/ZoneInfo;->buildInfo(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lcom/qiniu/android/common/ZoneInfo;

    move-result-object p0

    return-object p0
.end method

.method public static buildInfo(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lcom/qiniu/android/common/ZoneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/qiniu/android/common/ZoneInfo;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 109
    invoke-static {v0, p0, p1, p2}, Lcom/qiniu/android/common/ZoneInfo;->buildInfo(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lcom/qiniu/android/common/ZoneInfo;

    move-result-object p0

    return-object p0
.end method

.method public static buildInfo(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lcom/qiniu/android/common/ZoneInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/qiniu/android/common/ZoneInfo;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return-object v0

    .line 129
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_1

    .line 131
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string p0, "acc_domains"

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p1, :cond_2

    .line 134
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string p1, "domains"

    invoke-virtual {v1, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p2, :cond_3

    .line 137
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0, p2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string p1, "old"

    invoke-virtual {v1, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_3
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    if-nez p3, :cond_4

    .line 143
    const-string/jumbo p3, "unknown"

    .line 145
    :cond_4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const p2, 0x15180

    .line 146
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v1, "ttl"

    invoke-virtual {p1, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string p2, "region"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string/jumbo p2, "up"

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 154
    :try_start_0
    invoke-static {p0}, Lcom/qiniu/android/common/ZoneInfo;->buildFromJson(Lorg/json/JSONObject;)Lcom/qiniu/android/common/ZoneInfo;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 320
    new-instance v0, Lcom/qiniu/android/common/ZoneInfo;

    iget v1, p0, Lcom/qiniu/android/common/ZoneInfo;->ttl:I

    iget-boolean v2, p0, Lcom/qiniu/android/common/ZoneInfo;->http3Enabled:Z

    iget-boolean v3, p0, Lcom/qiniu/android/common/ZoneInfo;->ipv6:Z

    iget-object v4, p0, Lcom/qiniu/android/common/ZoneInfo;->regionId:Ljava/lang/String;

    iget-object v5, p0, Lcom/qiniu/android/common/ZoneInfo;->accelerateDomains:Ljava/util/List;

    iget-object v6, p0, Lcom/qiniu/android/common/ZoneInfo;->domains:Ljava/util/List;

    iget-object v7, p0, Lcom/qiniu/android/common/ZoneInfo;->old_domains:Ljava/util/List;

    iget-object v8, p0, Lcom/qiniu/android/common/ZoneInfo;->buildDate:Ljava/util/Date;

    invoke-direct/range {v0 .. v8}, Lcom/qiniu/android/common/ZoneInfo;-><init>(IZZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Date;)V

    .line 322
    iget-object v1, p0, Lcom/qiniu/android/common/ZoneInfo;->detailInfo:Lorg/json/JSONObject;

    iput-object v1, v0, Lcom/qiniu/android/common/ZoneInfo;->detailInfo:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getRegionId()Ljava/lang/String;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/qiniu/android/common/ZoneInfo;->regionId:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 6

    .line 303
    iget-object v0, p0, Lcom/qiniu/android/common/ZoneInfo;->buildDate:Ljava/util/Date;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 307
    :cond_0
    invoke-static {}, Lcom/qiniu/android/utils/Utils;->currentSecondTimestamp()J

    move-result-wide v2

    long-to-int v0, v2

    .line 308
    iget-object v2, p0, Lcom/qiniu/android/common/ZoneInfo;->buildDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v2, v2, v4

    double-to-int v2, v2

    .line 309
    iget v3, p0, Lcom/qiniu/android/common/ZoneInfo;->ttl:I

    sub-int/2addr v0, v2

    if-le v3, v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 291
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 292
    iget v1, p0, Lcom/qiniu/android/common/ZoneInfo;->ttl:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ttl"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v1, "allHost"

    iget-object v2, p0, Lcom/qiniu/android/common/ZoneInfo;->allHosts:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
