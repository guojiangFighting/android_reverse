.class public Lcom/dodonew/online/bean/HotCities;
.super Ljava/lang/Object;
.source "HotCities.java"


# instance fields
.field private hotList:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHotList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/dodonew/online/bean/HotCities;->hotList:[Ljava/lang/String;

    return-object v0
.end method

.method public setHotList([Ljava/lang/String;)V
    .locals 0
    .param p1, "hotList"    # [Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/dodonew/online/bean/HotCities;->hotList:[Ljava/lang/String;

    .line 16
    return-void
.end method
