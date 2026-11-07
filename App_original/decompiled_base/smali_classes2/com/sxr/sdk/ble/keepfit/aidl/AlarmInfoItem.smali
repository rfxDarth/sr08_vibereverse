.class public Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;
.super Ljava/lang/Object;
.source "AlarmInfoItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private alarm_id:J

.field private content:Ljava/lang/String;

.field private enableFriday:I

.field private enableMonday:I

.field private enableSaturday:I

.field private enableSunday:I

.field private enableThursday:I

.field private enableTuesday:I

.field private enableType:I

.field private enableWednesday:I

.field private hour:I

.field private isSingle:Z

.field private minute:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 199
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem$1;

    invoke-direct {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem$1;-><init>()V

    sput-object v0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->isSingle:Z

    return-void
.end method

.method public constructor <init>(JIIIIIIIIIILjava/lang/String;Z)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->alarm_id:J

    .line 40
    iput p3, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->enableType:I

    .line 41
    iput p4, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->hour:I

    .line 42
    iput p5, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->minute:I

    .line 43
    iput p6, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->enableMonday:I

    .line 44
    iput p7, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->enableTuesday:I

    .line 45
    iput p8, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->enableWednesday:I

    .line 46
    iput p9, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->enableThursday:I

    .line 47
    iput p10, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->enableFriday:I

    .line 48
    iput p11, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->enableSaturday:I

    .line 49
    iput p12, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->enableSunday:I

    .line 50
    iput-object p13, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->content:Ljava/lang/String;

    .line 51
    iput-boolean p14, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->isSingle:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->isSingle:Z

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->alarm_id:J

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->enableType:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->hour:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->minute:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->enableMonday:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->enableTuesday:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->enableWednesday:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->enableThursday:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->enableFriday:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->enableSaturday:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->enableSunday:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->content:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->isSingle:Z

    return-void
.end method

.method public static getCreator()Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;",
            ">;"
        }
    .end annotation

    .line 196
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAlarm_id()J
    .locals 2

    .line 161
    iget-wide v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->alarm_id:J

    return-wide v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getEnableFriday()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->enableFriday:I

    return v0
.end method

.method public getEnableMonday()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->enableMonday:I

    return v0
.end method

.method public getEnableSaturday()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->enableSaturday:I

    return v0
.end method

.method public getEnableSunday()I
    .locals 1

    .line 153
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->enableSunday:I

    return v0
.end method

.method public getEnableThursday()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->enableThursday:I

    return v0
.end method

.method public getEnableTuesday()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->enableTuesday:I

    return v0
.end method

.method public getEnableType()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->enableType:I

    return v0
.end method

.method public getEnableWednesday()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->enableWednesday:I

    return v0
.end method

.method public getHour()I
    .locals 1

    .line 171
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->hour:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .line 179
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->minute:I

    return v0
.end method

.method public isSingle()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->isSingle:Z

    return v0
.end method

.method public setAlarm_id(J)V
    .locals 0

    .line 165
    iput-wide p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->alarm_id:J

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->content:Ljava/lang/String;

    return-void
.end method

.method public setEnableFriday(I)V
    .locals 0

    .line 141
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->enableFriday:I

    return-void
.end method

.method public setEnableMonday(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->enableMonday:I

    return-void
.end method

.method public setEnableSaturday(I)V
    .locals 0

    .line 149
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->enableSaturday:I

    return-void
.end method

.method public setEnableSunday(I)V
    .locals 0

    .line 157
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->enableSunday:I

    return-void
.end method

.method public setEnableThursday(I)V
    .locals 0

    .line 133
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->enableThursday:I

    return-void
.end method

.method public setEnableTuesday(I)V
    .locals 0

    .line 117
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->enableTuesday:I

    return-void
.end method

.method public setEnableType(I)V
    .locals 0

    .line 101
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->enableType:I

    return-void
.end method

.method public setEnableWednesday(I)V
    .locals 0

    .line 125
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->enableWednesday:I

    return-void
.end method

.method public setHour(I)V
    .locals 0

    .line 175
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->hour:I

    return-void
.end method

.method public setMinute(I)V
    .locals 0

    .line 183
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->minute:I

    return-void
.end method

.method public setSingle(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->isSingle:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 72
    iget-wide v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->alarm_id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 73
    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->enableType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->hour:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->minute:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->enableMonday:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->enableTuesday:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->enableWednesday:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->enableThursday:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->enableFriday:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->enableSaturday:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->enableSunday:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->content:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-boolean p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->isSingle:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
