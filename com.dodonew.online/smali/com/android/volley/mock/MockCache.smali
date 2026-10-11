.class public Lcom/android/volley/mock/MockCache;
.super Ljava/lang/Object;
.source "MockCache.java"

# interfaces
.implements Lcom/android/volley/Cache;


# instance fields
.field public clearCalled:Z

.field public entryPut:Lcom/android/volley/Cache$Entry;

.field public getCalled:Z

.field public keyPut:Ljava/lang/String;

.field private mFakeEntry:Lcom/android/volley/Cache$Entry;

.field public putCalled:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v0, p0, Lcom/android/volley/mock/MockCache;->clearCalled:Z

    .line 29
    iput-boolean v0, p0, Lcom/android/volley/mock/MockCache;->getCalled:Z

    .line 30
    iput-object v1, p0, Lcom/android/volley/mock/MockCache;->mFakeEntry:Lcom/android/volley/Cache$Entry;

    .line 42
    iput-boolean v0, p0, Lcom/android/volley/mock/MockCache;->putCalled:Z

    .line 43
    iput-object v1, p0, Lcom/android/volley/mock/MockCache;->keyPut:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/android/volley/mock/MockCache;->entryPut:Lcom/android/volley/Cache$Entry;

    .line 21
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/mock/MockCache;->clearCalled:Z

    .line 27
    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/mock/MockCache;->getCalled:Z

    .line 39
    iget-object v0, p0, Lcom/android/volley/mock/MockCache;->mFakeEntry:Lcom/android/volley/Cache$Entry;

    return-object v0
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public invalidate(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fullExpire"    # Z

    .prologue
    .line 55
    return-void
.end method

.method public put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/volley/Cache$Entry;

    .prologue
    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/mock/MockCache;->putCalled:Z

    .line 49
    iput-object p1, p0, Lcom/android/volley/mock/MockCache;->keyPut:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/android/volley/mock/MockCache;->entryPut:Lcom/android/volley/Cache$Entry;

    .line 51
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 59
    return-void
.end method

.method public setEntryToReturn(Lcom/android/volley/Cache$Entry;)V
    .locals 0
    .param p1, "entry"    # Lcom/android/volley/Cache$Entry;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/volley/mock/MockCache;->mFakeEntry:Lcom/android/volley/Cache$Entry;

    .line 34
    return-void
.end method
