.class public Lcom/dodonew/online/bean/AddressEvent;
.super Ljava/lang/Object;
.source "AddressEvent.java"


# instance fields
.field private address:Lcom/dodonew/online/bean/Address;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/bean/Address;)V
    .locals 0
    .param p1, "address"    # Lcom/dodonew/online/bean/Address;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/dodonew/online/bean/AddressEvent;->address:Lcom/dodonew/online/bean/Address;

    .line 12
    return-void
.end method


# virtual methods
.method public getAddress()Lcom/dodonew/online/bean/Address;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/dodonew/online/bean/AddressEvent;->address:Lcom/dodonew/online/bean/Address;

    return-object v0
.end method

.method public setAddress(Lcom/dodonew/online/bean/Address;)V
    .locals 0
    .param p1, "address"    # Lcom/dodonew/online/bean/Address;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/dodonew/online/bean/AddressEvent;->address:Lcom/dodonew/online/bean/Address;

    .line 20
    return-void
.end method
