.class Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5$3;
.super Ljava/lang/Object;
.source "OtaActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 438
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5$3;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 440
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5$3;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->finish()V

    return-void
.end method
