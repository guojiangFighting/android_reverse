.class public Lcom/android/volley/mock/MockRequest;
.super Lcom/android/volley/Request;
.source "MockRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request",
        "<[B>;"
    }
.end annotation


# instance fields
.field public cancel_called:Z

.field public deliverError_called:Z

.field public deliverResponse_called:Z

.field private mCacheKey:Ljava/lang/String;

.field private mPostParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPriority:Lcom/android/volley/Request$Priority;

.field public parseResponse_called:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    const-string v0, "http://foo.com"

    const/4 v1, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/volley/mock/MockRequest;->mPostParams:Ljava/util/Map;

    .line 49
    invoke-super {p0}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/volley/mock/MockRequest;->mCacheKey:Ljava/lang/String;

    .line 60
    iput-boolean v2, p0, Lcom/android/volley/mock/MockRequest;->deliverResponse_called:Z

    .line 61
    iput-boolean v2, p0, Lcom/android/volley/mock/MockRequest;->parseResponse_called:Z

    .line 68
    iput-boolean v2, p0, Lcom/android/volley/mock/MockRequest;->deliverError_called:Z

    .line 76
    iput-boolean v2, p0, Lcom/android/volley/mock/MockRequest;->cancel_called:Z

    .line 84
    invoke-super {p0}, Lcom/android/volley/Request;->getPriority()Lcom/android/volley/Request$Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/android/volley/mock/MockRequest;->mPriority:Lcom/android/volley/Request$Priority;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .local p2, "listener":Lcom/android/volley/Response$ErrorListener;, "Lcom/android/volley/Response$ErrorListener;"
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, v1, p1, p2}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/volley/mock/MockRequest;->mPostParams:Ljava/util/Map;

    .line 49
    invoke-super {p0}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/volley/mock/MockRequest;->mCacheKey:Ljava/lang/String;

    .line 60
    iput-boolean v1, p0, Lcom/android/volley/mock/MockRequest;->deliverResponse_called:Z

    .line 61
    iput-boolean v1, p0, Lcom/android/volley/mock/MockRequest;->parseResponse_called:Z

    .line 68
    iput-boolean v1, p0, Lcom/android/volley/mock/MockRequest;->deliverError_called:Z

    .line 76
    iput-boolean v1, p0, Lcom/android/volley/mock/MockRequest;->cancel_called:Z

    .line 84
    invoke-super {p0}, Lcom/android/volley/Request;->getPriority()Lcom/android/volley/Request$Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/android/volley/mock/MockRequest;->mPriority:Lcom/android/volley/Request$Priority;

    .line 36
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/mock/MockRequest;->cancel_called:Z

    .line 81
    invoke-super {p0}, Lcom/android/volley/Request;->cancel()V

    .line 82
    return-void
.end method

.method public deliverError(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/android/volley/Request;->deliverError(Lcom/android/volley/VolleyError;)V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/mock/MockRequest;->deliverError_called:Z

    .line 74
    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/android/volley/mock/MockRequest;->deliverResponse([B)V

    return-void
.end method

.method protected deliverResponse([B)V
    .locals 1
    .param p1, "response"    # [B

    .prologue
    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/mock/MockRequest;->deliverResponse_called:Z

    .line 66
    return-void
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/volley/mock/MockRequest;->mCacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPostParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/volley/mock/MockRequest;->mPostParams:Ljava/util/Map;

    return-object v0
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/volley/mock/MockRequest;->mPriority:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 2
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/mock/MockRequest;->parseResponse_called:Z

    .line 98
    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-static {v1}, Lcom/android/volley/utils/CacheTestUtils;->makeRandomCacheEntry([B)Lcom/android/volley/Cache$Entry;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v0

    return-object v0
.end method

.method public setCacheKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "cacheKey"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/volley/mock/MockRequest;->mCacheKey:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setPostParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/volley/mock/MockRequest;->mPostParams:Ljava/util/Map;

    .line 42
    return-void
.end method

.method public setPriority(Lcom/android/volley/Request$Priority;)V
    .locals 0

    .prologue
    .line 87
    .local p1, "priority":Lcom/android/volley/Request$Priority;, "Lcom/android/volley/Request$Priority;"
    iput-object p1, p0, Lcom/android/volley/mock/MockRequest;->mPriority:Lcom/android/volley/Request$Priority;

    .line 88
    return-void
.end method
