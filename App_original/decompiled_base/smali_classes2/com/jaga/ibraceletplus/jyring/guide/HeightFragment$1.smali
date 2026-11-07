.class Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment$1;
.super Ljava/lang/Object;
.source "HeightFragment.java"

# interfaces
.implements Lyanzhikai/ruler/RulerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;

.field final synthetic val$tv_scale:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;Landroid/widget/TextView;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment$1;->this$0:Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment$1;->val$tv_scale:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScaleChanging(F)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment$1;->this$0:Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->brWeight:Lyanzhikai/ruler/BooheeRuler;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment$1;->this$0:Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Lyanzhikai/ruler/Utils/RulerStringUtil;->resultValueOf(FF)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {v0, p1}, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->access$002(Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;F)F

    .line 92
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment$1;->this$0:Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->access$100(Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment$1;->val$tv_scale:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment$1;->this$0:Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->access$000(Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0xc

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment$1;->this$0:Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->access$000(Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;)F

    move-result v1

    float-to-int v1, v1

    rem-int/lit8 v1, v1, 0xc

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment$1;->val$tv_scale:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment$1;->this$0:Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->access$000(Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
