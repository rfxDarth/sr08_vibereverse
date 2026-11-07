.class Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding$6;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "LoginActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding;

.field final synthetic val$target:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;)V
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

    .line 91
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding$6;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding$6;->val$target:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 94
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding$6;->val$target:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->OnClickivQq()V

    return-void
.end method
