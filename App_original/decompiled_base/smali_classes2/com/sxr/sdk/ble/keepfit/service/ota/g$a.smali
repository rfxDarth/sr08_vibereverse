.class Lcom/sxr/sdk/ble/keepfit/service/ota/g$a;
.super Ljava/lang/Object;
.source "SuotaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sxr/sdk/ble/keepfit/service/ota/g;->a(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sxr/sdk/ble/keepfit/service/ota/g;


# direct methods
.method constructor <init>(Lcom/sxr/sdk/ble/keepfit/service/ota/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/g$a;->a:Lcom/sxr/sdk/ble/keepfit/service/ota/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/g$a;->a:Lcom/sxr/sdk/ble/keepfit/service/ota/g;

    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->c()V

    return-void
.end method
