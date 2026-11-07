.class Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16;
.super Ljava/lang/Object;
.source "UserInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->initWeight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

.field final synthetic val$u:Ljava/lang/String;

.field final synthetic val$w:F


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;Ljava/lang/String;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1058
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16;->val$u:Ljava/lang/String;

    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16;->val$w:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1061
    new-instance p1, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    invoke-direct {p1, v0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    .line 1062
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16$1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16;)V

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->setOnConfirmListener(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;)Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    .line 1076
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->access$1200(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1077
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16;->val$w:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16;->val$u:Ljava/lang/String;

    const/16 v2, 0x2c

    const/16 v3, 0x1f4

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showNumber(IIILjava/lang/String;)V

    return-void

    .line 1079
    :cond_0
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16;->val$w:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16;->val$u:Ljava/lang/String;

    const/16 v2, 0x14

    const/16 v3, 0xe3

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showNumber(IIILjava/lang/String;)V

    return-void
.end method
