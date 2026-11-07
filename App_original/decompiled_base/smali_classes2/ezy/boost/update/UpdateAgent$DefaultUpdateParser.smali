.class Lezy/boost/update/UpdateAgent$DefaultUpdateParser;
.super Ljava/lang/Object;
.source "UpdateAgent.java"

# interfaces
.implements Lezy/boost/update/IUpdateParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lezy/boost/update/UpdateAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultUpdateParser"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lezy/boost/update/UpdateAgent$1;)V
    .locals 0

    .line 287
    invoke-direct {p0}, Lezy/boost/update/UpdateAgent$DefaultUpdateParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lezy/boost/update/UpdateInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 290
    invoke-static {p1}, Lezy/boost/update/UpdateInfo;->parse(Ljava/lang/String;)Lezy/boost/update/UpdateInfo;

    move-result-object p1

    return-object p1
.end method
