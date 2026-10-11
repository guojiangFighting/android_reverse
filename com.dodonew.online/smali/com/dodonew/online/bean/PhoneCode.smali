.class public Lcom/dodonew/online/bean/PhoneCode;
.super Ljava/lang/Object;
.source "PhoneCode.java"


# instance fields
.field private phone:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/dodonew/online/bean/PhoneCode;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/dodonew/online/bean/PhoneCode;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/dodonew/online/bean/PhoneCode;->phone:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/dodonew/online/bean/PhoneCode;->token:Ljava/lang/String;

    .line 25
    return-void
.end method
