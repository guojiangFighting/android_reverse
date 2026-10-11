.class public Lcom/dodonew/online/bean/OrderRecharge;
.super Ljava/lang/Object;
.source "OrderRecharge.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/dodonew/online/bean/OrderRecharge;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private amount:Ljava/lang/String;

.field private netBarName:Ljava/lang/String;

.field private orderDesc:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private orderNum:Ljava/lang/String;

.field private orderStatus:Ljava/lang/String;

.field private orderTime:Ljava/lang/String;

.field private payType:Ljava/lang/String;

.field private toAccount:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/dodonew/online/bean/OrderRecharge$1;

    invoke-direct {v0}, Lcom/dodonew/online/bean/OrderRecharge$1;-><init>()V

    sput-object v0, Lcom/dodonew/online/bean/OrderRecharge;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OrderRecharge;->amount:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OrderRecharge;->netBarName:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OrderRecharge;->orderDesc:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OrderRecharge;->orderId:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OrderRecharge;->orderNum:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OrderRecharge;->orderStatus:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OrderRecharge;->orderTime:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OrderRecharge;->payType:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OrderRecharge;->toAccount:Ljava/lang/String;

    .line 124
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public getAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderRecharge;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public getNetBarName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderRecharge;->netBarName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderRecharge;->orderDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderRecharge;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderRecharge;->orderNum:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderRecharge;->orderStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderRecharge;->orderTime:Ljava/lang/String;

    return-object v0
.end method

.method public getPayType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderRecharge;->payType:Ljava/lang/String;

    return-object v0
.end method

.method public getToAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderRecharge;->toAccount:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 0
    .param p1, "amount"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/dodonew/online/bean/OrderRecharge;->amount:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setNetBarName(Ljava/lang/String;)V
    .locals 0
    .param p1, "netBarName"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/dodonew/online/bean/OrderRecharge;->netBarName:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setOrderDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "orderDesc"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/dodonew/online/bean/OrderRecharge;->orderDesc:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0
    .param p1, "orderId"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/dodonew/online/bean/OrderRecharge;->orderId:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setOrderNum(Ljava/lang/String;)V
    .locals 0
    .param p1, "orderNum"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/dodonew/online/bean/OrderRecharge;->orderNum:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setOrderStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "orderStatus"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/dodonew/online/bean/OrderRecharge;->orderStatus:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setOrderTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "orderTime"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/dodonew/online/bean/OrderRecharge;->orderTime:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setPayType(Ljava/lang/String;)V
    .locals 0
    .param p1, "payType"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/dodonew/online/bean/OrderRecharge;->payType:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setToAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "toAccount"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/dodonew/online/bean/OrderRecharge;->toAccount:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderRecharge;->amount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderRecharge;->netBarName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderRecharge;->orderDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderRecharge;->orderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderRecharge;->orderNum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderRecharge;->orderStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderRecharge;->orderTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderRecharge;->payType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/dodonew/online/bean/OrderRecharge;->toAccount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    return-void
.end method
