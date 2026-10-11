.class public abstract Lcom/hk/app/android/lib/http/FormBaseRequest;
.super Lcom/android/volley/Request;
.source "FormBaseRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/Request",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"


# instance fields
.field private mHeaders:Ljava/util/Map;
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

.field private final mListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private requestParams:Lcom/hk/app/android/lib/http/AjaxParams;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 1
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<TT;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/hk/app/android/lib/http/FormBaseRequest;, "Lcom/hk/app/android/lib/http/FormBaseRequest<TT;>;"
    .local p3, "listener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<TT;>;"
    .local p4, "errorListener":Lcom/android/volley/Response$ErrorListener;, "Lcom/android/volley/Response$ErrorListener;"
    invoke-direct {p0, p1, p2, p4}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 52
    iput-object p3, p0, Lcom/hk/app/android/lib/http/FormBaseRequest;->mListener:Lcom/android/volley/Response$Listener;

    .line 53
    new-instance v0, Lcom/hk/app/android/lib/http/AjaxParams;

    invoke-direct {v0}, Lcom/hk/app/android/lib/http/AjaxParams;-><init>()V

    iput-object v0, p0, Lcom/hk/app/android/lib/http/FormBaseRequest;->requestParams:Lcom/hk/app/android/lib/http/AjaxParams;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<TT;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/hk/app/android/lib/http/FormBaseRequest;, "Lcom/hk/app/android/lib/http/FormBaseRequest<TT;>;"
    .local p2, "listener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<TT;>;"
    .local p3, "errorListener":Lcom/android/volley/Response$ErrorListener;, "Lcom/android/volley/Response$ErrorListener;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/hk/app/android/lib/http/FormBaseRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 41
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 77
    .local p0, "this":Lcom/hk/app/android/lib/http/FormBaseRequest;, "Lcom/hk/app/android/lib/http/FormBaseRequest<TT;>;"
    iget-object v0, p0, Lcom/hk/app/android/lib/http/FormBaseRequest;->mHeaders:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hk/app/android/lib/http/FormBaseRequest;->mHeaders:Ljava/util/Map;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/hk/app/android/lib/http/FormBaseRequest;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void
.end method

.method public deliverError(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 122
    .local p0, "this":Lcom/hk/app/android/lib/http/FormBaseRequest;, "Lcom/hk/app/android/lib/http/FormBaseRequest<TT;>;"
    invoke-virtual {p0}, Lcom/hk/app/android/lib/http/FormBaseRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/volley/VolleyError;->url:Ljava/lang/String;

    .line 123
    invoke-super {p0, p1}, Lcom/android/volley/Request;->deliverError(Lcom/android/volley/VolleyError;)V

    .line 124
    return-void
.end method

.method protected deliverResponse(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lcom/hk/app/android/lib/http/FormBaseRequest;, "Lcom/hk/app/android/lib/http/FormBaseRequest<TT;>;"
    .local p1, "response":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/hk/app/android/lib/http/FormBaseRequest;->mListener:Lcom/android/volley/Response$Listener;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/hk/app/android/lib/http/FormBaseRequest;->mListener:Lcom/android/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    .line 96
    :cond_0
    return-void
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    .local p0, "this":Lcom/hk/app/android/lib/http/FormBaseRequest;, "Lcom/hk/app/android/lib/http/FormBaseRequest<TT;>;"
    iget-object v0, p0, Lcom/hk/app/android/lib/http/FormBaseRequest;->requestParams:Lcom/hk/app/android/lib/http/AjaxParams;

    invoke-virtual {v0}, Lcom/hk/app/android/lib/http/AjaxParams;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 4
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lcom/hk/app/android/lib/http/FormBaseRequest;, "Lcom/hk/app/android/lib/http/FormBaseRequest<TT;>;"
    iget-object v2, p0, Lcom/hk/app/android/lib/http/FormBaseRequest;->requestParams:Lcom/hk/app/android/lib/http/AjaxParams;

    invoke-virtual {v2}, Lcom/hk/app/android/lib/http/AjaxParams;->getContentLength()J

    move-result-wide v0

    .line 70
    .local v0, "contentLength":J
    iget-object v2, p0, Lcom/hk/app/android/lib/http/FormBaseRequest;->requestParams:Lcom/hk/app/android/lib/http/AjaxParams;

    invoke-virtual {v2}, Lcom/hk/app/android/lib/http/AjaxParams;->isFileUpload()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    const-string v2, "Content-Length"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/hk/app/android/lib/http/FormBaseRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/hk/app/android/lib/http/FormBaseRequest;->mHeaders:Ljava/util/Map;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/hk/app/android/lib/http/FormBaseRequest;->mHeaders:Ljava/util/Map;

    :goto_0
    return-object v2

    :cond_1
    invoke-super {p0}, Lcom/android/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object v2

    goto :goto_0
.end method

.method public getHttpEntity()Lorg/apache/http/HttpEntity;
    .locals 2

    .prologue
    .line 110
    .local p0, "this":Lcom/hk/app/android/lib/http/FormBaseRequest;, "Lcom/hk/app/android/lib/http/FormBaseRequest<TT;>;"
    iget-object v0, p0, Lcom/hk/app/android/lib/http/FormBaseRequest;->requestParams:Lcom/hk/app/android/lib/http/AjaxParams;

    invoke-virtual {v0}, Lcom/hk/app/android/lib/http/AjaxParams;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 111
    const-string v0, "\u6570\u636e\u5305\u4e3a\u7a7a"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    invoke-virtual {p0}, Lcom/hk/app/android/lib/http/FormBaseRequest;->cancel()V

    .line 113
    new-instance v0, Lcom/hk/app/android/lib/http/HttpEntityError;

    invoke-direct {v0}, Lcom/hk/app/android/lib/http/HttpEntityError;-><init>()V

    invoke-virtual {p0, v0}, Lcom/hk/app/android/lib/http/FormBaseRequest;->deliverError(Lcom/android/volley/VolleyError;)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/hk/app/android/lib/http/FormBaseRequest;->requestParams:Lcom/hk/app/android/lib/http/AjaxParams;

    invoke-virtual {v0}, Lcom/hk/app/android/lib/http/AjaxParams;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    return-object v0
.end method

.method protected abstract parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<TT;>;"
        }
    .end annotation
.end method

.method public setRequestParams(Lcom/hk/app/android/lib/http/AjaxParams;)V
    .locals 0
    .param p1, "requestParams"    # Lcom/hk/app/android/lib/http/AjaxParams;

    .prologue
    .line 61
    .local p0, "this":Lcom/hk/app/android/lib/http/FormBaseRequest;, "Lcom/hk/app/android/lib/http/FormBaseRequest<TT;>;"
    iput-object p1, p0, Lcom/hk/app/android/lib/http/FormBaseRequest;->requestParams:Lcom/hk/app/android/lib/http/AjaxParams;

    .line 62
    return-void
.end method
