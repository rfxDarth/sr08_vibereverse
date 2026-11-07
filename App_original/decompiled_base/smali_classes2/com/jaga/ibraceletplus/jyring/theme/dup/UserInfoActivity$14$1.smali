.class Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$14$1;
.super Ljava/lang/Object;
.source "UserInfoActivity.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$14;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$14;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$14;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 990
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$14$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPicker(III)V
    .locals 1

    .line 993
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$14$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$14;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$14;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->tvHeight:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$14$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$14;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$14;->val$unit:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 994
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$14$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$14;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$14;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string p3, "Height"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    int-to-float p1, p1

    .line 995
    sget p2, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->HEIGHT2STRIDE:F

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 996
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$14$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$14;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$14;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string p3, "StepStride"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 997
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$14$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$14;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$14;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->access$1100(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;)V

    .line 998
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$14$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$14;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$14;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->bChange:Z

    return-void
.end method
