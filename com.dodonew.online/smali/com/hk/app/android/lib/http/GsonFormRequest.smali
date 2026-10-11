.class public Lcom/hk/app/android/lib/http/GsonFormRequest;
.super Lcom/hk/app/android/lib/http/FormBaseRequest;
.source "GsonFormRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/hk/app/android/lib/http/FormBaseRequest",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected entityClass:Ljava/lang/Class;

.field private mGson:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 4
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
    .line 23
    .local p0, "this":Lcom/hk/app/android/lib/http/GsonFormRequest;, "Lcom/hk/app/android/lib/http/GsonFormRequest<TT;>;"
    .local p3, "listener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<TT;>;"
    .local p4, "errorListener":Lcom/android/volley/Response$ErrorListener;, "Lcom/android/volley/Response$ErrorListener;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hk/app/android/lib/http/FormBaseRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 32
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    iput-object v2, p0, Lcom/hk/app/android/lib/http/GsonFormRequest;->mGson:Lcom/google/gson/Gson;

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 25
    .local v1, "type":Ljava/lang/reflect/Type;
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .end local v1    # "type":Ljava/lang/reflect/Type;
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 26
    .local v0, "trueType":Ljava/lang/reflect/Type;
    check-cast v0, Ljava/lang/Class;

    .end local v0    # "trueType":Ljava/lang/reflect/Type;
    iput-object v0, p0, Lcom/hk/app/android/lib/http/GsonFormRequest;->entityClass:Ljava/lang/Class;

    .line 27
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
    .line 29
    .local p0, "this":Lcom/hk/app/android/lib/http/GsonFormRequest;, "Lcom/hk/app/android/lib/http/GsonFormRequest<TT;>;"
    .local p2, "listener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<TT;>;"
    .local p3, "errorListener":Lcom/android/volley/Response$ErrorListener;, "Lcom/android/volley/Response$ErrorListener;"
    invoke-direct {p0, p1, p2, p3}, Lcom/hk/app/android/lib/http/FormBaseRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 32
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/hk/app/android/lib/http/GsonFormRequest;->mGson:Lcom/google/gson/Gson;

    .line 30
    return-void
.end method


# virtual methods
.method protected deliverResponse(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/hk/app/android/lib/http/GsonFormRequest;, "Lcom/hk/app/android/lib/http/GsonFormRequest<TT;>;"
    .local p1, "response":Ljava/lang/Object;, "TT;"
    invoke-super {p0, p1}, Lcom/hk/app/android/lib/http/FormBaseRequest;->deliverResponse(Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 5
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/hk/app/android/lib/http/GsonFormRequest;, "Lcom/hk/app/android/lib/http/GsonFormRequest<TT;>;"
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v3, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v4, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v4}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 39
    .local v1, "json":Ljava/lang/String;
    iget-object v3, p0, Lcom/hk/app/android/lib/http/GsonFormRequest;->mGson:Lcom/google/gson/Gson;

    iget-object v4, p0, Lcom/hk/app/android/lib/http/GsonFormRequest;->entityClass:Ljava/lang/Class;

    invoke-virtual {v3, v1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 41
    .local v2, "res":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v3

    .line 40
    invoke-static {v2, v3}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 45
    .end local v1    # "json":Ljava/lang/String;
    .end local v2    # "res":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v3

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lcom/android/volley/ParseError;

    invoke-direct {v3, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v3

    goto :goto_0

    .line 44
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 45
    .local v0, "e":Lcom/google/gson/JsonSyntaxException;
    new-instance v3, Lcom/android/volley/ParseError;

    invoke-direct {v3, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v3

    goto :goto_0
.end method

.method public setGson(Lcom/google/gson/Gson;)V
    .locals 0
    .param p1, "mGson"    # Lcom/google/gson/Gson;

    .prologue
    .line 58
    .local p0, "this":Lcom/hk/app/android/lib/http/GsonFormRequest;, "Lcom/hk/app/android/lib/http/GsonFormRequest<TT;>;"
    iput-object p1, p0, Lcom/hk/app/android/lib/http/GsonFormRequest;->mGson:Lcom/google/gson/Gson;

    .line 59
    return-void
.end method
