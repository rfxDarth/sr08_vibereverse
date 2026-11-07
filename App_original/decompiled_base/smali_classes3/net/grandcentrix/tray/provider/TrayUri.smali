.class Lnet/grandcentrix/tray/provider/TrayUri;
.super Ljava/lang/Object;
.source "TrayUri.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/grandcentrix/tray/provider/TrayUri$Builder;
    }
.end annotation


# instance fields
.field private final mContentUri:Landroid/net/Uri;

.field private final mContentUriInternal:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lnet/grandcentrix/tray/provider/TrayUri;->mContext:Landroid/content/Context;

    .line 75
    invoke-static {p1}, Lnet/grandcentrix/tray/provider/TrayContract;->generateContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lnet/grandcentrix/tray/provider/TrayUri;->mContentUri:Landroid/net/Uri;

    .line 76
    invoke-static {p1}, Lnet/grandcentrix/tray/provider/TrayContract;->generateInternalContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lnet/grandcentrix/tray/provider/TrayUri;->mContentUriInternal:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$002(Lnet/grandcentrix/tray/provider/TrayUri;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 14
    iput-object p1, p0, Lnet/grandcentrix/tray/provider/TrayUri;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$100(Lnet/grandcentrix/tray/provider/TrayUri;)Landroid/net/Uri;
    .locals 0

    .line 14
    iget-object p0, p0, Lnet/grandcentrix/tray/provider/TrayUri;->mContentUriInternal:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$200(Lnet/grandcentrix/tray/provider/TrayUri;)Landroid/net/Uri;
    .locals 0

    .line 14
    iget-object p0, p0, Lnet/grandcentrix/tray/provider/TrayUri;->mContentUri:Landroid/net/Uri;

    return-object p0
.end method


# virtual methods
.method public builder()Lnet/grandcentrix/tray/provider/TrayUri$Builder;
    .locals 2

    .line 80
    new-instance v0, Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    iget-object v1, p0, Lnet/grandcentrix/tray/provider/TrayUri;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;-><init>(Lnet/grandcentrix/tray/provider/TrayUri;Landroid/content/Context;)V

    return-object v0
.end method

.method public get()Landroid/net/Uri;
    .locals 1

    .line 84
    iget-object v0, p0, Lnet/grandcentrix/tray/provider/TrayUri;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getInternal()Landroid/net/Uri;
    .locals 1

    .line 88
    iget-object v0, p0, Lnet/grandcentrix/tray/provider/TrayUri;->mContentUriInternal:Landroid/net/Uri;

    return-object v0
.end method
