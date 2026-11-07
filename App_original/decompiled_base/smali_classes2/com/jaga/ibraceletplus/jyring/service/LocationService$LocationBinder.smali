.class public Lcom/jaga/ibraceletplus/jyring/service/LocationService$LocationBinder;
.super Landroid/os/Binder;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/service/LocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocationBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/service/LocationService;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/service/LocationService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 307
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService$LocationBinder;->this$0:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/jaga/ibraceletplus/jyring/service/LocationService;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService$LocationBinder;->this$0:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    return-object v0
.end method
