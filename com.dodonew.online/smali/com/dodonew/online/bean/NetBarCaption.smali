.class public Lcom/dodonew/online/bean/NetBarCaption;
.super Ljava/lang/Object;
.source "NetBarCaption.java"


# instance fields
.field private netBarCaption:Ljava/lang/String;

.field private netBarId:Ljava/lang/String;

.field private useWxpay:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNetBarCaption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBarCaption;->netBarCaption:Ljava/lang/String;

    return-object v0
.end method

.method public getNetBarId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBarCaption;->netBarId:Ljava/lang/String;

    return-object v0
.end method

.method public getUseWxpay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBarCaption;->useWxpay:Ljava/lang/String;

    return-object v0
.end method

.method public setNetBarCaption(Ljava/lang/String;)V
    .locals 0
    .param p1, "netBarCaption"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/dodonew/online/bean/NetBarCaption;->netBarCaption:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setNetBarId(Ljava/lang/String;)V
    .locals 0
    .param p1, "netBarId"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/dodonew/online/bean/NetBarCaption;->netBarId:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setUseWxpay(Ljava/lang/String;)V
    .locals 0
    .param p1, "useWxpay"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/dodonew/online/bean/NetBarCaption;->useWxpay:Ljava/lang/String;

    .line 33
    return-void
.end method
