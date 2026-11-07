.class Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$15;
.super Ljava/lang/Object;
.source "UserInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->initHeight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

.field final synthetic val$heightFeet:I

.field final synthetic val$heightInch:I


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;II)V
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

    .line 1016
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$15;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$15;->val$heightFeet:I

    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$15;->val$heightInch:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 1019
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$15;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    invoke-direct {v0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    .line 1020
    new-instance p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$15$1;

    invoke-direct {p1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$15$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$15;)V

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->setOnConfirmListener(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;)Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    .line 1033
    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$15;->val$heightFeet:I

    iget v7, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$15;->val$heightInch:I

    const-string v8, "\'\'"

    const/4 v1, 0x1

    const/16 v2, 0x8

    const-string v4, "\'"

    const/4 v5, 0x0

    const/16 v6, 0xb

    invoke-virtual/range {v0 .. v8}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showDecimal(IIILjava/lang/String;IIILjava/lang/String;)V

    return-void
.end method
