.class Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$2$1;
.super Ljava/lang/Object;
.source "DupMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$2;

.field final synthetic val$finalBAuto:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$2;Ljava/lang/Boolean;)V
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

    .line 481
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$2;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$2$1;->val$finalBAuto:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 484
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$2;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-class v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 485
    const-string p2, "auto"

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$2$1;->val$finalBAuto:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 486
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$2;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
