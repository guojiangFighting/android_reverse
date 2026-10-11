.class public Lcom/dodonew/online/bean/Store;
.super Ljava/lang/Object;
.source "Store.java"


# instance fields
.field private fileServer:Ljava/lang/String;

.field private storeId:Ljava/lang/String;

.field private storeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dodonew/online/bean/Store;->fileServer:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/dodonew/online/bean/Store;->storeId:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/dodonew/online/bean/Store;->storeName:Ljava/lang/String;

    return-object v0
.end method

.method public setFileServer(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileServer"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/dodonew/online/bean/Store;->fileServer:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setStoreId(Ljava/lang/String;)V
    .locals 0
    .param p1, "storeId"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/dodonew/online/bean/Store;->storeId:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setStoreName(Ljava/lang/String;)V
    .locals 0
    .param p1, "storeName"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/dodonew/online/bean/Store;->storeName:Ljava/lang/String;

    .line 25
    return-void
.end method
