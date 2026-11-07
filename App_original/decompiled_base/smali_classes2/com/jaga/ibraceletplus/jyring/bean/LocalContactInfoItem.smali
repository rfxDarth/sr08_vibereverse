.class public Lcom/jaga/ibraceletplus/jyring/bean/LocalContactInfoItem;
.super Ljava/lang/Object;
.source "LocalContactInfoItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/jaga/ibraceletplus/jyring/bean/LocalContactInfoItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:I

.field private name:Ljava/lang/String;

.field private phone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/bean/LocalContactInfoItem$1;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/bean/LocalContactInfoItem$1;-><init>()V

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/bean/LocalContactInfoItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/LocalContactInfoItem;->id:I

    .line 50
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/bean/LocalContactInfoItem;->name:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/bean/LocalContactInfoItem;->phone:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/LocalContactInfoItem;->id:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/LocalContactInfoItem;->name:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/LocalContactInfoItem;->phone:Ljava/lang/String;

    return-void
.end method

.method public static setAlarm(Lcom/jaga/ibraceletplus/jyring/bean/LocalContactInfoItem;)Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;
    .locals 2

    .line 12
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;

    invoke-direct {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;-><init>()V

    .line 13
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/bean/LocalContactInfoItem;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;->setContactId(I)V

    .line 14
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/bean/LocalContactInfoItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;->setContactName(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/bean/LocalContactInfoItem;->getPhone()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;->setPhoneNum(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/LocalContactInfoItem;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/LocalContactInfoItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/LocalContactInfoItem;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/LocalContactInfoItem;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/LocalContactInfoItem;->name:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/LocalContactInfoItem;->phone:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 43
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/bean/LocalContactInfoItem;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/bean/LocalContactInfoItem;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/bean/LocalContactInfoItem;->phone:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
