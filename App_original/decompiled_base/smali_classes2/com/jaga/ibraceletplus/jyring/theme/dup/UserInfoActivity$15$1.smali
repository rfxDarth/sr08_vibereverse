.class Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$15$1;
.super Ljava/lang/Object;
.source "UserInfoActivity.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$15;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$15;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$15;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1020
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$15$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPicker(III)V
    .locals 3

    mul-int/lit8 p3, p1, 0xc

    add-int/2addr p3, p2

    int-to-float p3, p3

    .line 1023
    sget v0, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->CM2INCH:F

    div-float/2addr p3, v0

    .line 1024
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$15$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$15;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$15;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->tvHeight:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\'\'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1026
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$15$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$15;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$15;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v0, "Height"

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    int-to-float p1, p1

    .line 1027
    sget p2, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->HEIGHT2STRIDE:F

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 1028
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$15$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$15;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$15;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string p3, "StepStride"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1029
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$15$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$15;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$15;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->access$1100(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;)V

    .line 1030
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$15$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$15;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$15;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->bChange:Z

    return-void
.end method
