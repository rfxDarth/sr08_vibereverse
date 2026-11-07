.class final enum Lcom/qiniu/android/storage/UploadData$State;
.super Ljava/lang/Enum;
.source "UploadData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/android/storage/UploadData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qiniu/android/storage/UploadData$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qiniu/android/storage/UploadData$State;

.field public static final enum Complete:Lcom/qiniu/android/storage/UploadData$State;

.field public static final enum NeedToCheck:Lcom/qiniu/android/storage/UploadData$State;

.field public static final enum Uploading:Lcom/qiniu/android/storage/UploadData$State;

.field public static final enum WaitToUpload:Lcom/qiniu/android/storage/UploadData$State;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 113
    new-instance v0, Lcom/qiniu/android/storage/UploadData$State;

    const-string v1, "NeedToCheck"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/qiniu/android/storage/UploadData$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qiniu/android/storage/UploadData$State;->NeedToCheck:Lcom/qiniu/android/storage/UploadData$State;

    .line 114
    new-instance v1, Lcom/qiniu/android/storage/UploadData$State;

    const-string v3, "WaitToUpload"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/qiniu/android/storage/UploadData$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/qiniu/android/storage/UploadData$State;->WaitToUpload:Lcom/qiniu/android/storage/UploadData$State;

    .line 115
    new-instance v3, Lcom/qiniu/android/storage/UploadData$State;

    const-string v5, "Uploading"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/qiniu/android/storage/UploadData$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/qiniu/android/storage/UploadData$State;->Uploading:Lcom/qiniu/android/storage/UploadData$State;

    .line 116
    new-instance v5, Lcom/qiniu/android/storage/UploadData$State;

    const-string v7, "Complete"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/qiniu/android/storage/UploadData$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/qiniu/android/storage/UploadData$State;->Complete:Lcom/qiniu/android/storage/UploadData$State;

    const/4 v7, 0x4

    .line 112
    new-array v7, v7, [Lcom/qiniu/android/storage/UploadData$State;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/qiniu/android/storage/UploadData$State;->$VALUES:[Lcom/qiniu/android/storage/UploadData$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 112
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$000(I)Lcom/qiniu/android/storage/UploadData$State;
    .locals 0

    .line 112
    invoke-static {p0}, Lcom/qiniu/android/storage/UploadData$State;->state(I)Lcom/qiniu/android/storage/UploadData$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/qiniu/android/storage/UploadData$State;)I
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/qiniu/android/storage/UploadData$State;->intValue()I

    move-result p0

    return p0
.end method

.method private intValue()I
    .locals 1

    .line 119
    invoke-virtual {p0}, Lcom/qiniu/android/storage/UploadData$State;->ordinal()I

    move-result v0

    return v0
.end method

.method private static state(I)Lcom/qiniu/android/storage/UploadData$State;
    .locals 2

    .line 123
    invoke-static {}, Lcom/qiniu/android/storage/UploadData$State;->values()[Lcom/qiniu/android/storage/UploadData$State;

    move-result-object v0

    if-ltz p0, :cond_1

    .line 124
    array-length v1, v0

    if-lt p0, v1, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    aget-object p0, v0, p0

    return-object p0

    .line 125
    :cond_1
    :goto_0
    sget-object p0, Lcom/qiniu/android/storage/UploadData$State;->NeedToCheck:Lcom/qiniu/android/storage/UploadData$State;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qiniu/android/storage/UploadData$State;
    .locals 1

    .line 112
    const-class v0, Lcom/qiniu/android/storage/UploadData$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qiniu/android/storage/UploadData$State;

    return-object p0
.end method

.method public static values()[Lcom/qiniu/android/storage/UploadData$State;
    .locals 1

    .line 112
    sget-object v0, Lcom/qiniu/android/storage/UploadData$State;->$VALUES:[Lcom/qiniu/android/storage/UploadData$State;

    invoke-virtual {v0}, [Lcom/qiniu/android/storage/UploadData$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qiniu/android/storage/UploadData$State;

    return-object v0
.end method
