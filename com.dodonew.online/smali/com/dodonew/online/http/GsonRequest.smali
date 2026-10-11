.class public Lcom/dodonew/online/http/GsonRequest;
.super Lcom/dodonew/online/http/GsonBaseRequest;
.source "GsonRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/dodonew/online/http/GsonBaseRequest",
        "<",
        "Lcom/dodonew/online/bean/RequestResult",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_TYPE:Ljava/lang/reflect/Type;


# instance fields
.field private append:Ljava/lang/String;

.field private desIV:Ljava/lang/String;

.field private desKey:Ljava/lang/String;

.field private mGson:Lcom/google/gson/Gson;

.field private mMap:Ljava/util/Map;
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

.field private mpKey:Ljava/lang/String;

.field private sign:Ljava/lang/String;

.field private typeOfT:Ljava/lang/reflect/Type;

.field private useDes:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/dodonew/online/http/GsonRequest$1;

    invoke-direct {v0}, Lcom/dodonew/online/http/GsonRequest$1;-><init>()V

    .line 37
    invoke-virtual {v0}, Lcom/dodonew/online/http/GsonRequest$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    sput-object v0, Lcom/dodonew/online/http/GsonRequest;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 36
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V
    .locals 1
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "errorListener"    # Lcom/android/volley/Response$ErrorListener;
    .param p5, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/dodonew/online/bean/RequestResult",
            "<TT;>;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/dodonew/online/http/GsonRequest;, "Lcom/dodonew/online/http/GsonRequest<TT;>;"
    .local p3, "listener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Lcom/dodonew/online/bean/RequestResult<TT;>;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dodonew/online/http/GsonBaseRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/http/GsonRequest;->useDes:Z

    .line 39
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/http/GsonRequest;->mGson:Lcom/google/gson/Gson;

    .line 53
    iput-object p5, p0, Lcom/dodonew/online/http/GsonRequest;->typeOfT:Ljava/lang/reflect/Type;

    .line 54
    invoke-direct {p0}, Lcom/dodonew/online/http/GsonRequest;->initPara()V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "errorListener"    # Lcom/android/volley/Response$ErrorListener;
    .param p4, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/dodonew/online/bean/RequestResult",
            "<TT;>;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/dodonew/online/http/GsonRequest;, "Lcom/dodonew/online/http/GsonRequest<TT;>;"
    .local p2, "listener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Lcom/dodonew/online/bean/RequestResult<TT;>;>;"
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/dodonew/online/http/GsonRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    .line 48
    return-void
.end method

.method public static encodeDesMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "mpKey"    # Ljava/lang/String;
    .param p2, "desKey"    # Ljava/lang/String;
    .param p3, "desIV"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 187
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Lcom/dodonew/online/util/DesSecurity;

    invoke-direct {v1, p2, p3}, Lcom/dodonew/online/util/DesSecurity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .local v1, "ds":Lcom/dodonew/online/util/DesSecurity;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/dodonew/online/util/DesSecurity;->encrypt64([B)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "d":Ljava/lang/String;
    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .end local v0    # "d":Ljava/lang/String;
    .end local v1    # "ds":Lcom/dodonew/online/util/DesSecurity;
    :goto_0
    return-object v3

    .line 191
    :catch_0
    move-exception v2

    .line 192
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B
    .locals 7
    .param p2, "paramsEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "this":Lcom/dodonew/online/http/GsonRequest;, "Lcom/dodonew/online/http/GsonRequest<TT;>;"
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .local v0, "encodedParams":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 219
    .local v2, "var5":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 220
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 221
    .local v1, "uee":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 223
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const/16 v4, 0x26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    .end local v1    # "uee":Ljava/util/Map$Entry;
    .end local v2    # "var5":Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .line 229
    .local v3, "var6":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Encoding not supported: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 227
    .end local v3    # "var6":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "var5":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    return-object v4
.end method

.method private initPara()V
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lcom/dodonew/online/http/GsonRequest;, "Lcom/dodonew/online/http/GsonRequest<TT;>;"
    iget-boolean v0, p0, Lcom/dodonew/online/http/GsonRequest;->useDes:Z

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "!A^@#8$%"

    iput-object v0, p0, Lcom/dodonew/online/http/GsonRequest;->desKey:Ljava/lang/String;

    .line 60
    const-string v0, "demin!@3"

    iput-object v0, p0, Lcom/dodonew/online/http/GsonRequest;->desIV:Ljava/lang/String;

    .line 61
    const-string v0, "checkCode"

    iput-object v0, p0, Lcom/dodonew/online/http/GsonRequest;->sign:Ljava/lang/String;

    .line 62
    const-string v0, "d"

    iput-object v0, p0, Lcom/dodonew/online/http/GsonRequest;->mpKey:Ljava/lang/String;

    .line 63
    const-string v0, "nccd"

    iput-object v0, p0, Lcom/dodonew/online/http/GsonRequest;->append:Ljava/lang/String;

    .line 66
    :cond_0
    return-void
.end method

.method private paraMap(Ljava/util/Map;)V
    .locals 12
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
    .line 159
    .local p0, "this":Lcom/dodonew/online/http/GsonRequest;, "Lcom/dodonew/online/http/GsonRequest<TT;>;"
    .local p1, "addMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/dodonew/online/http/GsonRequest;->useDes:Z

    .line 161
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 162
    .local v6, "keyset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 164
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 165
    .local v5, "keyName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "keyName":Ljava/lang/String;
    .end local v6    # "keyset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 180
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 182
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 168
    .restart local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v6    # "keyset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 171
    if-eqz v3, :cond_1

    .line 172
    const-string v8, "&"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :cond_1
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 176
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/dodonew/online/http/GsonRequest;->append:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/dodonew/online/util/Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "checkCode":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/dodonew/online/http/GsonRequest;->sign:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/dodonew/online/http/GsonRequest;->mpKey:Ljava/lang/String;

    iget-object v10, p0, Lcom/dodonew/online/http/GsonRequest;->desKey:Ljava/lang/String;

    iget-object v11, p0, Lcom/dodonew/online/http/GsonRequest;->desIV:Ljava/lang/String;

    invoke-static {v8, v9, v10, v11}, Lcom/dodonew/online/http/GsonRequest;->encodeDesMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    iput-object v8, p0, Lcom/dodonew/online/http/GsonRequest;->mMap:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public addRequestMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lcom/dodonew/online/http/GsonRequest;, "Lcom/dodonew/online/http/GsonRequest<TT;>;"
    .local p3, "addMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "time":Ljava/lang/String;
    if-nez p3, :cond_0

    .line 149
    new-instance p3, Ljava/util/HashMap;

    .end local p3    # "addMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 151
    .restart local p3    # "addMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v1, "appid"

    const-string v2, "9"

    invoke-interface {p3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v1, "time"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v1, "action"

    invoke-interface {p3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v1, "cmd"

    invoke-interface {p3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-direct {p0, p3}, Lcom/dodonew/online/http/GsonRequest;->paraMap(Ljava/util/Map;)V

    .line 156
    return-void
.end method

.method public addRequestMap(Ljava/util/Map;)V
    .locals 4
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
    .line 111
    .local p0, "this":Lcom/dodonew/online/http/GsonRequest;, "Lcom/dodonew/online/http/GsonRequest<TT;>;"
    .local p1, "addMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "time":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 113
    new-instance p1, Ljava/util/HashMap;

    .end local p1    # "addMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 115
    .restart local p1    # "addMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v1, "timeStamp"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-direct {p0, p1}, Lcom/dodonew/online/http/GsonRequest;->paraMap(Ljava/util/Map;)V

    .line 118
    return-void
.end method

.method public addRequestMap(Ljava/util/Map;Z)V
    .locals 6
    .param p2, "isUseDes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lcom/dodonew/online/http/GsonRequest;, "Lcom/dodonew/online/http/GsonRequest<TT;>;"
    .local p1, "addMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "time":Ljava/lang/String;
    iput-boolean p2, p0, Lcom/dodonew/online/http/GsonRequest;->useDes:Z

    .line 123
    if-nez p1, :cond_0

    .line 124
    new-instance p1, Ljava/util/HashMap;

    .end local p1    # "addMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 126
    .restart local p1    # "addMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    if-eqz p2, :cond_2

    .line 127
    invoke-direct {p0, p1}, Lcom/dodonew/online/http/GsonRequest;->paraMap(Ljava/util/Map;)V

    .line 144
    :cond_1
    return-void

    .line 129
    :cond_2
    iput-object p1, p0, Lcom/dodonew/online/http/GsonRequest;->mMap:Ljava/util/Map;

    .line 130
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 131
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 133
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 134
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public decodeDesJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "desKey"    # Ljava/lang/String;
    .param p3, "desIV"    # Ljava/lang/String;

    .prologue
    .line 199
    .local p0, "this":Lcom/dodonew/online/http/GsonRequest;, "Lcom/dodonew/online/http/GsonRequest<TT;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    .end local p1    # "json":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 203
    .restart local p1    # "json":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v0, Lcom/dodonew/online/util/DesSecurity;

    invoke-direct {v0, p2, p3}, Lcom/dodonew/online/util/DesSecurity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .local v0, "ds":Lcom/dodonew/online/util/DesSecurity;
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/util/DesSecurity;->decrypt64(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v2, "string":Ljava/lang/String;
    move-object p1, v2

    .line 205
    goto :goto_0

    .line 206
    .end local v0    # "ds":Lcom/dodonew/online/util/DesSecurity;
    .end local v2    # "string":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected deliverResponse(Lcom/dodonew/online/bean/RequestResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dodonew/online/bean/RequestResult",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/dodonew/online/http/GsonRequest;, "Lcom/dodonew/online/http/GsonRequest<TT;>;"
    .local p1, "response":Lcom/dodonew/online/bean/RequestResult;, "Lcom/dodonew/online/bean/RequestResult<TT;>;"
    invoke-super {p0, p1}, Lcom/dodonew/online/http/GsonBaseRequest;->deliverResponse(Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    .local p0, "this":Lcom/dodonew/online/http/GsonRequest;, "Lcom/dodonew/online/http/GsonRequest<TT;>;"
    check-cast p1, Lcom/dodonew/online/bean/RequestResult;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/http/GsonRequest;->deliverResponse(Lcom/dodonew/online/bean/RequestResult;)V

    return-void
.end method

.method protected getParams()Ljava/util/Map;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lcom/dodonew/online/http/GsonRequest;, "Lcom/dodonew/online/http/GsonRequest<TT;>;"
    iget-object v0, p0, Lcom/dodonew/online/http/GsonRequest;->mMap:Ljava/util/Map;

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 6
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Lcom/dodonew/online/bean/RequestResult",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lcom/dodonew/online/http/GsonRequest;, "Lcom/dodonew/online/http/GsonRequest<TT;>;"
    const-string v2, ""

    .line 73
    .local v2, "parsed":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/String;

    .end local v2    # "parsed":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v5, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v5}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .restart local v2    # "parsed":Ljava/lang/String;
    :goto_0
    iget-boolean v4, p0, Lcom/dodonew/online/http/GsonRequest;->useDes:Z

    if-eqz v4, :cond_0

    .line 78
    iget-object v4, p0, Lcom/dodonew/online/http/GsonRequest;->desKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/dodonew/online/http/GsonRequest;->desIV:Ljava/lang/String;

    invoke-virtual {p0, v2, v4, v5}, Lcom/dodonew/online/http/GsonRequest;->decodeDesJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    :cond_0
    const-string v4, "http"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v4, p0, Lcom/dodonew/online/http/GsonRequest;->mGson:Lcom/google/gson/Gson;

    iget-object v5, p0, Lcom/dodonew/online/http/GsonRequest;->typeOfT:Ljava/lang/reflect/Type;

    invoke-virtual {v4, v2, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dodonew/online/bean/RequestResult;

    .line 82
    .local v3, "res":Lcom/dodonew/online/bean/RequestResult;, "Lcom/dodonew/online/bean/RequestResult<TT;>;"
    iput-object v2, v3, Lcom/dodonew/online/bean/RequestResult;->response:Ljava/lang/String;

    .line 83
    iget-boolean v4, p0, Lcom/dodonew/online/http/GsonRequest;->useDes:Z

    if-eqz v4, :cond_1

    .line 85
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 86
    .local v1, "object":Lorg/json/JSONObject;
    const-string v4, "code"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 87
    const-string v4, "data"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 88
    const-string v4, "data"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/dodonew/online/bean/RequestResult;->response:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    .end local v1    # "object":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v4

    return-object v4

    .line 74
    .end local v2    # "parsed":Ljava/lang/String;
    .end local v3    # "res":Lcom/dodonew/online/bean/RequestResult;, "Lcom/dodonew/online/bean/RequestResult<TT;>;"
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/String;

    iget-object v4, p1, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    .restart local v2    # "parsed":Ljava/lang/String;
    goto :goto_0

    .line 90
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v3    # "res":Lcom/dodonew/online/bean/RequestResult;, "Lcom/dodonew/online/bean/RequestResult<TT;>;"
    :catch_1
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
