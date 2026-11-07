.class public Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;
.super Ljava/lang/Object;
.source "BleClientOption.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private deviceProfile:Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

.field private itemsTimer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private userProfile:Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;

.field private weathers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/Weather;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption$1;

    invoke-direct {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption$1;-><init>()V

    sput-object v0, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-class v0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;

    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->userProfile:Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;

    .line 61
    const-class v0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->deviceProfile:Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    .line 62
    const-class v0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->itemsTimer:Ljava/util/ArrayList;

    .line 63
    const-class v0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->weathers:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;",
            "Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;",
            "Ljava/util/ArrayList<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->userProfile:Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;

    .line 49
    iput-object p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->deviceProfile:Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    .line 50
    iput-object p3, p0, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->itemsTimer:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;",
            "Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;",
            "Ljava/util/ArrayList<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/Weather;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->userProfile:Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;

    .line 54
    iput-object p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->deviceProfile:Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    .line 55
    iput-object p3, p0, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->itemsTimer:Ljava/util/ArrayList;

    .line 56
    iput-object p4, p0, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->weathers:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceProfile()Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->deviceProfile:Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    return-object v0
.end method

.method public getItemsTimer()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->itemsTimer:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUserProfile()Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->userProfile:Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;

    return-object v0
.end method

.method public getWeather()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/Weather;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->weathers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setDeviceProfile(Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->deviceProfile:Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    return-void
.end method

.method public setItemsTimer(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;",
            ">;)V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->itemsTimer:Ljava/util/ArrayList;

    return-void
.end method

.method public setUserProfile(Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->userProfile:Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;

    return-void
.end method

.method public setWeather(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/Weather;",
            ">;)V"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->weathers:Ljava/util/ArrayList;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->userProfile:Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 74
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->deviceProfile:Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 75
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->itemsTimer:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 76
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->weathers:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
