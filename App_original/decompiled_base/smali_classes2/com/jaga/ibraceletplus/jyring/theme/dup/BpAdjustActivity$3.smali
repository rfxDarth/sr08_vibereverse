.class Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity$3;
.super Ljava/lang/Object;
.source "BpAdjustActivity.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;->OnClicktvBpAdjustDbp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPicker(III)V
    .locals 3

    .line 126
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string p3, "120"

    invoke-virtual {p2, p3, p3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const/4 p3, 0x1

    if-le p1, p2, :cond_0

    .line 129
    new-instance p1, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;

    invoke-direct {p1, p2}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;

    const v0, 0x7f130006

    invoke-virtual {p2, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity$3$1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity$3$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity$3;)V

    invoke-virtual {p1, p2, v0, p3}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void

    .line 137
    :cond_0
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;->tvBpAdjustDbp:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, p3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "%1$s mmhg"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v0, "80"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 139
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;

    iput-boolean p3, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;->bChange:Z

    return-void
.end method
