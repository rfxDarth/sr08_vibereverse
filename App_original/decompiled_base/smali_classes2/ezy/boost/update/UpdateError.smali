.class public Lezy/boost/update/UpdateError;
.super Ljava/lang/Throwable;
.source "UpdateError.java"


# static fields
.field public static final CHECK_HTTP_STATUS:I = 0x7d5

.field public static final CHECK_NETWORK_IO:I = 0x7d4

.field public static final CHECK_NO_NETWORK:I = 0x7d3

.field public static final CHECK_NO_WIFI:I = 0x7d2

.field public static final CHECK_PARSE:I = 0x7d6

.field public static final CHECK_UNKNOWN:I = 0x7d1

.field public static final DOWNLOAD_CANCELLED:I = 0xbba

.field public static final DOWNLOAD_DISK_IO:I = 0xbbc

.field public static final DOWNLOAD_DISK_NO_SPACE:I = 0xbbb

.field public static final DOWNLOAD_HTTP_STATUS:I = 0xbc0

.field public static final DOWNLOAD_INCOMPLETE:I = 0xbc1

.field public static final DOWNLOAD_NETWORK_BLOCKED:I = 0xbbe

.field public static final DOWNLOAD_NETWORK_IO:I = 0xbbd

.field public static final DOWNLOAD_NETWORK_TIMEOUT:I = 0xbbf

.field public static final DOWNLOAD_UNKNOWN:I = 0xbb9

.field public static final DOWNLOAD_VERIFY:I = 0xbc2

.field public static final UPDATE_IGNORED:I = 0x3e9

.field public static final UPDATE_NO_NEWER:I = 0x3ea

.field private static context:Landroid/content/Context;

.field public static final messages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private code:I

.field private message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lezy/boost/update/UpdateError;->messages:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lezy/boost/update/UpdateError;->message:Ljava/lang/String;

    .line 28
    sget-object v1, Lezy/boost/update/UpdateError;->messages:Landroid/util/SparseArray;

    sget v2, Lezy/boost/update/R$string;->update_error_1001:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e9

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 29
    sget v2, Lezy/boost/update/R$string;->update_error_1002:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3ea

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 31
    sget v2, Lezy/boost/update/R$string;->update_error_2001:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7d1

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 32
    sget v2, Lezy/boost/update/R$string;->update_error_2002:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7d2

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 33
    sget v2, Lezy/boost/update/R$string;->update_error_2003:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 34
    sget v2, Lezy/boost/update/R$string;->update_error_2004:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7d4

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 35
    sget v2, Lezy/boost/update/R$string;->update_error_2005:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7d5

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 36
    sget v2, Lezy/boost/update/R$string;->update_error_2006:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7d6

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 38
    sget v2, Lezy/boost/update/R$string;->update_error_3001:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xbb9

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 39
    sget v2, Lezy/boost/update/R$string;->update_error_3002:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xbba

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 40
    sget v2, Lezy/boost/update/R$string;->update_error_3003:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xbbb

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 41
    sget v2, Lezy/boost/update/R$string;->update_error_3004:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xbbc

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 42
    sget v2, Lezy/boost/update/R$string;->update_error_3005:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xbbd

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 43
    sget v2, Lezy/boost/update/R$string;->update_error_3006:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xbbe

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 44
    sget v2, Lezy/boost/update/R$string;->update_error_3007:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xbbf

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 45
    sget v2, Lezy/boost/update/R$string;->update_error_3008:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xbc0

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 46
    sget v2, Lezy/boost/update/R$string;->update_error_3009:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xbc1

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 47
    sget v2, Lezy/boost/update/R$string;->update_error_3010:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0xbc2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 49
    invoke-static {p2, v0}, Lezy/boost/update/UpdateError;->make(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lezy/boost/update/UpdateError;->message:Ljava/lang/String;

    .line 50
    iput p2, p0, Lezy/boost/update/UpdateError;->code:I

    return-void
.end method

.method private static make(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 66
    sget-object v0, Lezy/boost/update/UpdateError;->messages:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    return-object p0
.end method


# virtual methods
.method public isError()Z
    .locals 2

    .line 54
    iget v0, p0, Lezy/boost/update/UpdateError;->code:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 59
    invoke-virtual {p0}, Lezy/boost/update/UpdateError;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lezy/boost/update/UpdateError;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lezy/boost/update/UpdateError;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 62
    :cond_0
    iget-object v0, p0, Lezy/boost/update/UpdateError;->message:Ljava/lang/String;

    return-object v0
.end method
