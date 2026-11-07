.class Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "EcgHealthActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding;

.field final synthetic val$target:Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;)V
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

    .line 64
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding$3;->this$0:Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding$3;->val$target:Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding$3;->val$target:Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
