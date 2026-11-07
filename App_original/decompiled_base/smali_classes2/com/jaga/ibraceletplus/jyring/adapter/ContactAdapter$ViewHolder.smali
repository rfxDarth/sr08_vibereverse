.class Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ContactAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field private contactId:I

.field contactName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04da
    .end annotation
.end field

.field contanctPhoneNum:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04f0
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

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method


# virtual methods
.method public getContactId()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter$ViewHolder;->contactId:I

    return v0
.end method

.method public setContactId(I)V
    .locals 0

    .line 94
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter$ViewHolder;->contactId:I

    return-void
.end method
