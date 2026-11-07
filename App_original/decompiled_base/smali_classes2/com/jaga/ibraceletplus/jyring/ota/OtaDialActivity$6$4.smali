.class Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6$4;
.super Ljava/lang/Object;
.source "OtaDialActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 591
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6$4;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 593
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6$4;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->finish()V

    return-void
.end method
