.class Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16$1;
.super Ljava/lang/Object;
.source "UserInfoActivity.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1062
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPicker(III)V
    .locals 2

    .line 1065
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->tvWeight:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16;->val$u:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p1, p1

    .line 1067
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->access$1200(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;)I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    .line 1068
    sget p2, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->KG2LB:F

    div-float/2addr p1, p2

    .line 1070
    :cond_0
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v0, "Weight"

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1071
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->access$1300(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;)V

    .line 1072
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    iput-boolean p3, p2, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->bChange:Z

    .line 1073
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    invoke-static {p2, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->access$1400(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;F)V

    return-void
.end method
