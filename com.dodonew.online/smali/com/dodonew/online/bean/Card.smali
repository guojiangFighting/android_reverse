.class public Lcom/dodonew/online/bean/Card;
.super Ljava/lang/Object;
.source "Card.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/dodonew/online/bean/Card;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accountPwd:Ljava/lang/String;

.field private addTimes:Ljava/lang/String;

.field private address:Ljava/lang/String;

.field private consTime:Ljava/lang/String;

.field private consume:Ljava/lang/String;

.field private domainID:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isDel:Ljava/lang/String;

.field private memberLevel:Ljava/lang/String;

.field private memberNo:Ljava/lang/String;

.field private netAccount:Ljava/lang/String;

.field private netAccountBalance:Ljava/lang/String;

.field private netBarID:Ljava/lang/String;

.field private netBarName:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 196
    new-instance v0, Lcom/dodonew/online/bean/Card$1;

    invoke-direct {v0}, Lcom/dodonew/online/bean/Card$1;-><init>()V

    sput-object v0, Lcom/dodonew/online/bean/Card;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Card;->accountPwd:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Card;->addTimes:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Card;->address:Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Card;->domainID:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Card;->id:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Card;->memberLevel:Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Card;->memberNo:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Card;->netAccount:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Card;->netBarID:Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Card;->netBarName:Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Card;->consTime:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Card;->status:Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Card;->consume:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Card;->netAccountBalance:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Card;->isDel:Ljava/lang/String;

    .line 194
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public getAccountPwd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dodonew/online/bean/Card;->accountPwd:Ljava/lang/String;

    return-object v0
.end method

.method public getAddTimes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/dodonew/online/bean/Card;->addTimes:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dodonew/online/bean/Card;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getConsTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/dodonew/online/bean/Card;->consTime:Ljava/lang/String;

    return-object v0
.end method

.method public getConsume()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/dodonew/online/bean/Card;->consume:Ljava/lang/String;

    return-object v0
.end method

.method public getDomainID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dodonew/online/bean/Card;->domainID:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/dodonew/online/bean/Card;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dodonew/online/bean/Card;->memberLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dodonew/online/bean/Card;->memberNo:Ljava/lang/String;

    return-object v0
.end method

.method public getNetAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dodonew/online/bean/Card;->netAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getNetAccountBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/dodonew/online/bean/Card;->netAccountBalance:Ljava/lang/String;

    return-object v0
.end method

.method public getNetBarID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/dodonew/online/bean/Card;->netBarID:Ljava/lang/String;

    return-object v0
.end method

.method public getNetBarName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/dodonew/online/bean/Card;->netBarName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/dodonew/online/bean/Card;->status:Ljava/lang/String;

    return-object v0
.end method

.method public isDel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dodonew/online/bean/Card;->isDel:Ljava/lang/String;

    return-object v0
.end method

.method public setAccountPwd(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountPwd"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/dodonew/online/bean/Card;->accountPwd:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setAddTimes(Ljava/lang/String;)V
    .locals 0
    .param p1, "addTimes"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/dodonew/online/bean/Card;->addTimes:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/dodonew/online/bean/Card;->address:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setConsTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "consTime"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/dodonew/online/bean/Card;->consTime:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setConsume(Ljava/lang/String;)V
    .locals 0
    .param p1, "consume"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/dodonew/online/bean/Card;->consume:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setDel(Ljava/lang/String;)V
    .locals 0
    .param p1, "del"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/dodonew/online/bean/Card;->isDel:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setDomainID(Ljava/lang/String;)V
    .locals 0
    .param p1, "domainID"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/dodonew/online/bean/Card;->domainID:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setDommainID(Ljava/lang/String;)V
    .locals 0
    .param p1, "dommainID"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/dodonew/online/bean/Card;->domainID:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/dodonew/online/bean/Card;->id:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setMemberLevel(Ljava/lang/String;)V
    .locals 0
    .param p1, "memberLevel"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/dodonew/online/bean/Card;->memberLevel:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setMemberNo(Ljava/lang/String;)V
    .locals 0
    .param p1, "memberNo"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/dodonew/online/bean/Card;->memberNo:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setNetAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "netAccount"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/dodonew/online/bean/Card;->netAccount:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setNetAccountBalance(Ljava/lang/String;)V
    .locals 0
    .param p1, "netAccountBalance"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/dodonew/online/bean/Card;->netAccountBalance:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setNetBarID(Ljava/lang/String;)V
    .locals 0
    .param p1, "netBarID"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/dodonew/online/bean/Card;->netBarID:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setNetBarName(Ljava/lang/String;)V
    .locals 0
    .param p1, "netBarName"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/dodonew/online/bean/Card;->netBarName:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/dodonew/online/bean/Card;->status:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lcom/dodonew/online/bean/Card;->accountPwd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/dodonew/online/bean/Card;->addTimes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/dodonew/online/bean/Card;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/dodonew/online/bean/Card;->domainID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/dodonew/online/bean/Card;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/dodonew/online/bean/Card;->memberLevel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/dodonew/online/bean/Card;->memberNo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/dodonew/online/bean/Card;->netAccount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/dodonew/online/bean/Card;->netBarID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/dodonew/online/bean/Card;->netBarName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/dodonew/online/bean/Card;->consTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/dodonew/online/bean/Card;->status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/dodonew/online/bean/Card;->consume:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/dodonew/online/bean/Card;->netAccountBalance:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/dodonew/online/bean/Card;->isDel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    return-void
.end method
