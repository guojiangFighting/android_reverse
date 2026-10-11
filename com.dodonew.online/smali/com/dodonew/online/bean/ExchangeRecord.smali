.class public Lcom/dodonew/online/bean/ExchangeRecord;
.super Ljava/lang/Object;
.source "ExchangeRecord.java"


# instance fields
.field private convTime:Ljava/lang/String;

.field private convertSum:Ljava/lang/String;

.field private giftName:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private scorepay:Ljava/lang/String;

.field private sendStau:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConvTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dodonew/online/bean/ExchangeRecord;->convTime:Ljava/lang/String;

    return-object v0
.end method

.method public getConvertSum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/dodonew/online/bean/ExchangeRecord;->convertSum:Ljava/lang/String;

    return-object v0
.end method

.method public getGiftName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dodonew/online/bean/ExchangeRecord;->giftName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dodonew/online/bean/ExchangeRecord;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getScorepay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dodonew/online/bean/ExchangeRecord;->scorepay:Ljava/lang/String;

    return-object v0
.end method

.method public getSendStau()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/dodonew/online/bean/ExchangeRecord;->sendStau:Ljava/lang/String;

    return-object v0
.end method

.method public setConvTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "convTime"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/dodonew/online/bean/ExchangeRecord;->convTime:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setConvertSum(Ljava/lang/String;)V
    .locals 0
    .param p1, "convertSum"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/dodonew/online/bean/ExchangeRecord;->convertSum:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setGiftName(Ljava/lang/String;)V
    .locals 0
    .param p1, "giftName"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/dodonew/online/bean/ExchangeRecord;->giftName:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/dodonew/online/bean/ExchangeRecord;->id:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setScorepay(Ljava/lang/String;)V
    .locals 0
    .param p1, "scorepay"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/dodonew/online/bean/ExchangeRecord;->scorepay:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setSendStau(Ljava/lang/String;)V
    .locals 0
    .param p1, "sendStau"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/dodonew/online/bean/ExchangeRecord;->sendStau:Ljava/lang/String;

    .line 61
    return-void
.end method
