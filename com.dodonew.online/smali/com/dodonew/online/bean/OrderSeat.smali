.class public Lcom/dodonew/online/bean/OrderSeat;
.super Ljava/lang/Object;
.source "OrderSeat.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/dodonew/online/bean/OrderSeat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private amount:Ljava/lang/String;

.field private bookLong:Ljava/lang/String;

.field private bookTime:Ljava/lang/String;

.field private domainId:Ljava/lang/String;

.field private memberId:Ljava/lang/String;

.field private netBarCaption:Ljava/lang/String;

.field private netbarId:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private orderInfo:Ljava/lang/String;

.field private payAccount:Ljava/lang/String;

.field private payStatus:Ljava/lang/String;

.field private payTime:Ljava/lang/String;

.field private termId:Ljava/lang/String;

.field private toPayAccount:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 181
    new-instance v0, Lcom/dodonew/online/bean/OrderSeat$1;

    invoke-direct {v0}, Lcom/dodonew/online/bean/OrderSeat$1;-><init>()V

    sput-object v0, Lcom/dodonew/online/bean/OrderSeat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->orderId:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->payTime:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->amount:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->netBarCaption:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->orderInfo:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->bookTime:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->bookLong:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->netbarId:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->domainId:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->memberId:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->payStatus:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->termId:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->payAccount:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->toPayAccount:Ljava/lang/String;

    .line 179
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public getAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public getBookLong()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->bookLong:Ljava/lang/String;

    return-object v0
.end method

.method public getBookTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->bookTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDomainId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->domainId:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->memberId:Ljava/lang/String;

    return-object v0
.end method

.method public getNetBarCaption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->netBarCaption:Ljava/lang/String;

    return-object v0
.end method

.method public getNetbarId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->netbarId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->orderInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getPayAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->payAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getPayStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->payStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getPayTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->payTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTermId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->termId:Ljava/lang/String;

    return-object v0
.end method

.method public getToPayAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->toPayAccount:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 0
    .param p1, "amount"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/dodonew/online/bean/OrderSeat;->amount:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setBookLong(Ljava/lang/String;)V
    .locals 0
    .param p1, "bookLong"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/dodonew/online/bean/OrderSeat;->bookLong:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setBookTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "bookTime"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/dodonew/online/bean/OrderSeat;->bookTime:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setDomainId(Ljava/lang/String;)V
    .locals 0
    .param p1, "domainId"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/dodonew/online/bean/OrderSeat;->domainId:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setMemberId(Ljava/lang/String;)V
    .locals 0
    .param p1, "memberId"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/dodonew/online/bean/OrderSeat;->memberId:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setNetBarCaption(Ljava/lang/String;)V
    .locals 0
    .param p1, "netBarCaption"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/dodonew/online/bean/OrderSeat;->netBarCaption:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setNetbarId(Ljava/lang/String;)V
    .locals 0
    .param p1, "netbarId"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/dodonew/online/bean/OrderSeat;->netbarId:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0
    .param p1, "orderId"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/dodonew/online/bean/OrderSeat;->orderId:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setOrderInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "orderInfo"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/dodonew/online/bean/OrderSeat;->orderInfo:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setPayAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "payAccount"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/dodonew/online/bean/OrderSeat;->payAccount:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setPayStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "payStatus"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/dodonew/online/bean/OrderSeat;->payStatus:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setPayTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "payTime"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/dodonew/online/bean/OrderSeat;->payTime:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setTermId(Ljava/lang/String;)V
    .locals 0
    .param p1, "termId"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/dodonew/online/bean/OrderSeat;->termId:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setToPayAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "toPayAccount"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/dodonew/online/bean/OrderSeat;->toPayAccount:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->orderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->payTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->amount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->netBarCaption:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->orderInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->bookTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->bookLong:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->netbarId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->domainId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->memberId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->payStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->termId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->payAccount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderSeat;->toPayAccount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    return-void
.end method
