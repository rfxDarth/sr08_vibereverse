.class public Lcom/jaga/ibraceletplus/jyring/bean/ListItem;
.super Ljava/lang/Object;
.source "ListItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private id:Ljava/lang/String;

.field private itemContent:Ljava/lang/String;

.field private order:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/ListItem;->id:Ljava/lang/String;

    .line 42
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/bean/ListItem;->order:I

    .line 43
    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/bean/ListItem;->itemContent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/ListItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getItemContent()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/ListItem;->itemContent:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/ListItem;->order:I

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/ListItem;->id:Ljava/lang/String;

    return-void
.end method

.method public setItemContent(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/ListItem;->itemContent:Ljava/lang/String;

    return-void
.end method

.method public setOrder(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/ListItem;->order:I

    return-void
.end method
