.class Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$SimpleAdapterNotify;
.super Landroid/widget/SimpleAdapter;
.source "NotifyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleAdapterNotify"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .line 213
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$SimpleAdapterNotify;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;

    move-object p1, p0

    .line 214
    invoke-direct/range {p1 .. p6}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 219
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 220
    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$SimpleAdapterNotify;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;

    invoke-static {p3}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    .line 221
    const-string/jumbo v0, "sbEnable"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const v0, 0x7f0a038a

    .line 222
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 223
    invoke-virtual {v0, p3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 225
    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$SimpleAdapterNotify;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;

    invoke-static {p3, p2, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;Landroid/view/View;I)V

    return-object p2
.end method
