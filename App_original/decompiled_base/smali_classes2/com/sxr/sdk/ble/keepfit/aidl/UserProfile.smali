.class public Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;
.super Ljava/lang/Object;
.source "UserProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private age:I

.field private gender:I

.field private height:I

.field private stepGoal:I

.field private stride:I

.field private unit:I

.field private weight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile$1;

    invoke-direct {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile$1;-><init>()V

    sput-object v0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->stepGoal:I

    .line 74
    iput p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->height:I

    .line 75
    iput p3, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->weight:I

    .line 76
    iput p4, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->stride:I

    .line 77
    iput p5, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->unit:I

    .line 78
    iput p6, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->gender:I

    .line 79
    iput p7, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->age:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->stepGoal:I

    .line 9
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->height:I

    .line 10
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->weight:I

    .line 11
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->stride:I

    .line 12
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->unit:I

    .line 13
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->gender:I

    .line 14
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->age:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->stepGoal:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->height:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->weight:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->stride:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->unit:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->gender:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->age:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAge()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->age:I

    return v0
.end method

.method public getGender()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->gender:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->height:I

    return v0
.end method

.method public getStepGoal()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->stepGoal:I

    return v0
.end method

.method public getStride()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->stride:I

    return v0
.end method

.method public getUnit()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->unit:I

    return v0
.end method

.method public getWeight()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->weight:I

    return v0
.end method

.method public setAge(I)V
    .locals 0

    .line 21
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->age:I

    return-void
.end method

.method public setGender(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->gender:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->height:I

    return-void
.end method

.method public setStepGoal(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->stepGoal:I

    return-void
.end method

.method public setStride(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->stride:I

    return-void
.end method

.method public setUnit(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->unit:I

    return-void
.end method

.method public setWeight(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->weight:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 99
    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->stepGoal:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->weight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->stride:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->unit:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->gender:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->age:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
