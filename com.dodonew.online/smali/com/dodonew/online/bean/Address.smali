.class public Lcom/dodonew/online/bean/Address;
.super Ljava/lang/Object;
.source "Address.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/dodonew/online/bean/Address;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private address:Ljava/lang/String;

.field private addressId:Ljava/lang/String;

.field private cellPhone:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private isdefault:Ljava/lang/String;

.field private postNum:Ljava/lang/String;

.field private province:Ljava/lang/String;

.field private recivePeson:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lcom/dodonew/online/bean/Address$1;

    invoke-direct {v0}, Lcom/dodonew/online/bean/Address$1;-><init>()V

    sput-object v0, Lcom/dodonew/online/bean/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Address;->addressId:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Address;->address:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Address;->cellPhone:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Address;->city:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Address;->isdefault:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Address;->postNum:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Address;->province:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Address;->userId:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Address;->recivePeson:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "province"    # Ljava/lang/String;
    .param p2, "city"    # Ljava/lang/String;
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "recivePeson"    # Ljava/lang/String;
    .param p5, "cellPhone"    # Ljava/lang/String;
    .param p6, "postNum"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/dodonew/online/bean/Address;->province:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/dodonew/online/bean/Address;->city:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/dodonew/online/bean/Address;->address:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/dodonew/online/bean/Address;->recivePeson:Ljava/lang/String;

    .line 26
    iput-object p5, p0, Lcom/dodonew/online/bean/Address;->cellPhone:Ljava/lang/String;

    .line 27
    iput-object p6, p0, Lcom/dodonew/online/bean/Address;->postNum:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dodonew/online/bean/Address;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dodonew/online/bean/Address;->addressId:Ljava/lang/String;

    return-object v0
.end method

.method public getCellPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dodonew/online/bean/Address;->cellPhone:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dodonew/online/bean/Address;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getIsdefault()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dodonew/online/bean/Address;->isdefault:Ljava/lang/String;

    return-object v0
.end method

.method public getPostNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dodonew/online/bean/Address;->postNum:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dodonew/online/bean/Address;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getRecivePeson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dodonew/online/bean/Address;->recivePeson:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dodonew/online/bean/Address;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/dodonew/online/bean/Address;->address:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setAddressId(Ljava/lang/String;)V
    .locals 0
    .param p1, "addressId"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/dodonew/online/bean/Address;->addressId:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setCellPhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "cellPhone"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/dodonew/online/bean/Address;->cellPhone:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/dodonew/online/bean/Address;->city:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setIsdefault(Ljava/lang/String;)V
    .locals 0
    .param p1, "isdefault"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/dodonew/online/bean/Address;->isdefault:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setPostNum(Ljava/lang/String;)V
    .locals 0
    .param p1, "postNum"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/dodonew/online/bean/Address;->postNum:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0
    .param p1, "province"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/dodonew/online/bean/Address;->province:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setRecivePeson(Ljava/lang/String;)V
    .locals 0
    .param p1, "recivePeson"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/dodonew/online/bean/Address;->recivePeson:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/dodonew/online/bean/Address;->userId:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/dodonew/online/bean/Address;->addressId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/dodonew/online/bean/Address;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/dodonew/online/bean/Address;->cellPhone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/dodonew/online/bean/Address;->city:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/dodonew/online/bean/Address;->isdefault:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/dodonew/online/bean/Address;->postNum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/dodonew/online/bean/Address;->province:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/dodonew/online/bean/Address;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/dodonew/online/bean/Address;->recivePeson:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    return-void
.end method
