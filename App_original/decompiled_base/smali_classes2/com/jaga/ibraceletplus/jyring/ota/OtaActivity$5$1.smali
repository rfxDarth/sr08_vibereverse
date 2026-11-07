.class Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5$1;
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

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 324
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5$1;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 328
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5$1;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5$1;->val$url:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$700(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;Ljava/lang/String;)V

    return-void
.end method
