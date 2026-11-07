.class Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "OtaDialActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity_ViewBinding;

.field final synthetic val$target:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)V
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

    .line 41
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity_ViewBinding$1;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity_ViewBinding;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity_ViewBinding$1;->val$target:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 44
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity_ViewBinding$1;->val$target:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->OnClickbCheck()V

    return-void
.end method
