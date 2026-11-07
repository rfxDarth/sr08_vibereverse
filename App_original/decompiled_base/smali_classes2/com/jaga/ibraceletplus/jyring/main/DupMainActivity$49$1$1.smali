.class Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49$1$1;
.super Ljava/lang/Object;
.source "DupMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49$1;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 5799
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49$1$1;->this$2:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 5802
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5803
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49$1$1;->this$2:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49$1;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
