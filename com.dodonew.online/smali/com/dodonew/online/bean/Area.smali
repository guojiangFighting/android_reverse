.class public Lcom/dodonew/online/bean/Area;
.super Ljava/lang/Object;
.source "Area.java"


# instance fields
.field private domainid:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDomainid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/dodonew/online/bean/Area;->domainid:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/dodonew/online/bean/Area;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setDomainid(Ljava/lang/String;)V
    .locals 0
    .param p1, "domainid"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/dodonew/online/bean/Area;->domainid:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/dodonew/online/bean/Area;->name:Ljava/lang/String;

    .line 25
    return-void
.end method
