.class public Lcom/dodonew/online/bean/ProvinceEvent;
.super Ljava/lang/Object;
.source "ProvinceEvent.java"


# instance fields
.field private province:Lcom/dodonew/online/bean/Province;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/bean/Province;)V
    .locals 0
    .param p1, "province"    # Lcom/dodonew/online/bean/Province;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/dodonew/online/bean/ProvinceEvent;->province:Lcom/dodonew/online/bean/Province;

    .line 10
    return-void
.end method


# virtual methods
.method public getProvince()Lcom/dodonew/online/bean/Province;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/dodonew/online/bean/ProvinceEvent;->province:Lcom/dodonew/online/bean/Province;

    return-object v0
.end method

.method public setProvince(Lcom/dodonew/online/bean/Province;)V
    .locals 0
    .param p1, "province"    # Lcom/dodonew/online/bean/Province;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/dodonew/online/bean/ProvinceEvent;->province:Lcom/dodonew/online/bean/Province;

    .line 20
    return-void
.end method
