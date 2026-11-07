.class Lcom/qiniu/android/http/request/UploadRequestInfo;
.super Ljava/lang/Object;
.source "UploadRequestInfo.java"


# static fields
.field static final RequestTypeBput:Ljava/lang/String; = "bput"

.field static final RequestTypeCompletePart:Ljava/lang/String; = "complete_part"

.field static final RequestTypeForm:Ljava/lang/String; = "form"

.field static final RequestTypeInitParts:Ljava/lang/String; = "init_parts"

.field static final RequestTypeMkblk:Ljava/lang/String; = "mkblk"

.field static final RequestTypeMkfile:Ljava/lang/String; = "mkfile"

.field static final RequestTypeServerConfig:Ljava/lang/String; = "server_config"

.field static final RequestTypeServerUserConfig:Ljava/lang/String; = "server_user_config"

.field static final RequestTypeUCQuery:Ljava/lang/String; = "uc_query"

.field static final RequestTypeUpLog:Ljava/lang/String; = "uplog"

.field static final RequestTypeUploadPart:Ljava/lang/String; = "upload_part"


# instance fields
.field bucket:Ljava/lang/String;

.field currentRegionId:Ljava/lang/String;

.field fileOffset:Ljava/lang/Long;

.field key:Ljava/lang/String;

.field requestType:Ljava/lang/String;

.field targetRegionId:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method shouldReportRequestLog()Z
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/qiniu/android/http/request/UploadRequestInfo;->requestType:Ljava/lang/String;

    const-string/jumbo v1, "uplog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
