.class Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$4;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->showPrivacyDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 130
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 131
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->cbConfirm:Landroid/widget/CheckBox;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
