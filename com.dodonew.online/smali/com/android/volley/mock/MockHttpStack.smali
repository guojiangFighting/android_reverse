.class public Lcom/android/volley/mock/MockHttpStack;
.super Ljava/lang/Object;
.source "MockHttpStack.java"

# interfaces
.implements Lcom/android/volley/toolbox/HttpStack;


# instance fields
.field private mLastHeaders:Ljava/util/Map;
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

.field private mLastPostBody:[B

.field private mLastUrl:Ljava/lang/String;

.field private mResponseToReturn:Lorg/apache/http/HttpResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastHeaders()Ljava/util/Map;
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
    .line 43
    iget-object v0, p0, Lcom/android/volley/mock/MockHttpStack;->mLastHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getLastPostBody()[B
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/volley/mock/MockHttpStack;->mLastPostBody:[B

    return-object v0
.end method

.method public getLastUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/volley/mock/MockHttpStack;->mLastUrl:Ljava/lang/String;

    return-object v0
.end method

.method public performRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    .local p2, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/volley/mock/MockHttpStack;->mLastUrl:Ljava/lang/String;

    .line 58
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/volley/mock/MockHttpStack;->mLastHeaders:Ljava/util/Map;

    .line 59
    invoke-virtual {p1}, Lcom/android/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/android/volley/mock/MockHttpStack;->mLastHeaders:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 62
    :cond_0
    if-eqz p2, :cond_1

    .line 63
    iget-object v1, p0, Lcom/android/volley/mock/MockHttpStack;->mLastHeaders:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 66
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/android/volley/Request;->getBody()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/volley/mock/MockHttpStack;->mLastPostBody:[B
    :try_end_0
    .catch Lcom/android/volley/AuthFailureError; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    iget-object v1, p0, Lcom/android/volley/mock/MockHttpStack;->mResponseToReturn:Lorg/apache/http/HttpResponse;

    return-object v1

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Lcom/android/volley/AuthFailureError;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/volley/mock/MockHttpStack;->mLastPostBody:[B

    goto :goto_0
.end method

.method public setResponseToReturn(Lorg/apache/http/HttpResponse;)V
    .locals 0
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/volley/mock/MockHttpStack;->mResponseToReturn:Lorg/apache/http/HttpResponse;

    .line 52
    return-void
.end method
