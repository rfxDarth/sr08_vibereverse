.class Lcom/jaga/ibraceletplus/jyring/adapter/ECardAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ECardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/adapter/ECardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field private contactId:I

.field content:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a047e
    .end annotation
.end field

.field ivDelete:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01e9
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method


# virtual methods
.method public getContactId()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/adapter/ECardAdapter$ViewHolder;->contactId:I

    return v0
.end method

.method public setContactId(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/adapter/ECardAdapter$ViewHolder;->contactId:I

    return-void
.end method
