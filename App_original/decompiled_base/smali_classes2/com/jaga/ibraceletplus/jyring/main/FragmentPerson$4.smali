.class Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson$4;
.super Ljava/lang/Object;
.source "FragmentPerson.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->initUnit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;

.field final synthetic val$itemsType:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;[Ljava/lang/String;)V
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

    .line 385
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson$4;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson$4;->val$itemsType:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onClick$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 411
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onClick$0$com-jaga-ibraceletplus-jyring-main-FragmentPerson$4(Ljava/util/List;[Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 400
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 403
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson$4;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->tvUnit:Landroid/widget/TextView;

    aget-object p2, p2, p4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson$4;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const-string p2, "DistanceUnit"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 405
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->setUserProfile()V

    .line 406
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson$4;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->access$300(Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;)V

    .line 407
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 388
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson$4;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const-string v0, "DistanceUnit"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 391
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson$4;->val$itemsType:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 393
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/adapter/SingleChoiceAdapter;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson$4;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->access$200(Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;)Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jaga/ibraceletplus/jyring/adapter/SingleChoiceAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 394
    invoke-virtual {v1, p1}, Lcom/jaga/ibraceletplus/jyring/adapter/SingleChoiceAdapter;->setSelectedPosition(I)V

    .line 396
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson$4;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->access$200(Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;)Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    move-result-object v2

    invoke-direct {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f13041c

    .line 397
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 398
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson$4;->val$itemsType:[Ljava/lang/String;

    new-instance v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson$4$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson$4$$ExternalSyntheticLambda0;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson$4;Ljava/util/List;[Ljava/lang/String;)V

    invoke-virtual {p1, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 411
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson$4$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson$4$$ExternalSyntheticLambda1;-><init>()V

    const v1, 0x7f13015a

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 413
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 414
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method
