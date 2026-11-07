.class public Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "EditlistActivity.java"


# instance fields
.field allDeleteBtn:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0058
    .end annotation
.end field

.field private deleteListItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jaga/ibraceletplus/jyring/bean/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private deleteNum:I

.field private editListAdapter:Lcom/jaga/ibraceletplus/jyring/adapter/EditListAdapter;

.field editListView:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a015e
    .end annotation
.end field

.field private listItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jaga/ibraceletplus/jyring/bean/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private onDrop:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DropListener;

.field private onRemove:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$RemoveListener;

.field private saveListItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jaga/ibraceletplus/jyring/bean/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field toolbar:Landroid/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a02ea
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->listItems:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->saveListItems:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->deleteListItems:Ljava/util/List;

    .line 103
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity$2;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->onDrop:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DropListener;

    .line 116
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity$3;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity$3;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->onRemove:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$RemoveListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;)Z
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->getIsAllChecked()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;)Lcom/jaga/ibraceletplus/jyring/adapter/EditListAdapter;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->editListAdapter:Lcom/jaga/ibraceletplus/jyring/adapter/EditListAdapter;

    return-object p0
.end method

.method private getIsAllChecked()Z
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->listItems:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 125
    :goto_0
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->listItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 126
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->editListView:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    invoke-virtual {v3, v2}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->isItemChecked(I)Z

    move-result v3

    if-nez v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private initView()V
    .locals 2

    .line 85
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/adapter/EditListAdapter;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->listItems:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/jaga/ibraceletplus/jyring/adapter/EditListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->editListAdapter:Lcom/jaga/ibraceletplus/jyring/adapter/EditListAdapter;

    .line 86
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->editListView:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->editListView:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->onDrop:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DropListener;

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->setDropListener(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DropListener;)V

    .line 89
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->editListView:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->setDragEnabled(Z)V

    .line 90
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->editListView:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->clearChoices()V

    .line 91
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->editListView:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity$1;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;)V

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private saveItem()V
    .locals 0

    .line 158
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->finish()V

    return-void
.end method

.method private setListCheckStatus(Z)V
    .locals 4

    .line 137
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->listItems:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 138
    :goto_0
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->listItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-eqz p1, :cond_0

    .line 141
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->editListView:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    invoke-virtual {v2, v1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->isItemChecked(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 142
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->editListView:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->setItemChecked(IZ)V

    goto :goto_1

    .line 146
    :cond_0
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->editListView:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    invoke-virtual {v2, v1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->editListView:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    invoke-virtual {v2, v1, v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->setItemChecked(IZ)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->allDeleteBtn:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method allDelete()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0058
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->allDeleteBtn:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->setListCheckStatus(Z)V

    return-void
.end method

.method ensureDelete()V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a016b
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->listItems:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 64
    :goto_0
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->listItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 65
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->editListView:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    invoke-virtual {v2, v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->deleteListItems:Ljava/util/List;

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->listItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jaga/ibraceletplus/jyring/bean/ListItem;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->deleteListItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->deleteNum:I

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 74
    :goto_1
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->deleteNum:I

    if-ge v0, v2, :cond_2

    .line 75
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->listItems:Ljava/util/List;

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->deleteListItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->editListView:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->clearChoices()V

    .line 78
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->editListAdapter:Lcom/jaga/ibraceletplus/jyring/adapter/EditListAdapter;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->listItems:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/adapter/EditListAdapter;->updateAdapter(Ljava/util/List;)V

    .line 79
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->allDeleteBtn:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    :cond_3
    const v0, 0x7f1303f0

    .line 81
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method goBack()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a007f
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 38
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d003e

    .line 39
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->setContentView(I)V

    .line 40
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->listItems:Ljava/util/List;

    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x8

    if-ge p1, v0, :cond_0

    .line 44
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/bean/ListItem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "List Item Content "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/ListItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->listItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 48
    :cond_0
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->initView()V

    return-void
.end method

.method public remove(I)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->editListAdapter:Lcom/jaga/ibraceletplus/jyring/adapter/EditListAdapter;

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/adapter/EditListAdapter;->remove(I)V

    .line 163
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->editListView:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->removeCheckState(I)V

    return-void
.end method

.method saveEdit()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0382
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->saveItem()V

    return-void
.end method
