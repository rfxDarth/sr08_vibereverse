.class public final synthetic Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager$$ExternalSyntheticLambda0;->f$0:Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager$$ExternalSyntheticLambda0;->f$0:Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->lambda$handleClick$1$com-jaga-ibraceletplus-jyring-widget-ButtonManager(ILandroid/content/DialogInterface;I)V

    return-void
.end method
