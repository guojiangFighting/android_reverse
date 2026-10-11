.class public Lcom/dodonew/online/http/JsonRequest;
.super Lcom/dodonew/online/http/JsonBaseRequest;
.source "JsonRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/dodonew/online/http/JsonBaseRequest",
        "<",
        "Lcom/dodonew/online/bean/RequestResult",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_TYPE:Ljava/lang/reflect/Type;


# instance fields
.field private context:Landroid/content/Context;

.field private desIV:Ljava/lang/String;

.field private desKey:Ljava/lang/String;

.field private mGson:Lcom/google/gson/Gson;

.field private mHandler:Landroid/os/Handler;

.field private mRequestBody:Ljava/lang/String;

.field private typeOfT:Ljava/lang/reflect/Type;

.field private useDes:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/dodonew/online/http/JsonRequest$1;

    invoke-direct {v0}, Lcom/dodonew/online/http/JsonRequest$1;-><init>()V

    .line 43
    invoke-virtual {v0}, Lcom/dodonew/online/http/JsonRequest$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    sput-object v0, Lcom/dodonew/online/http/JsonRequest;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "method"    # I
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "requestBody"    # Ljava/lang/String;
    .param p6, "errorListener"    # Lcom/android/volley/Response$ErrorListener;
    .param p7, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
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
    .line 53
    .local p0, "this":Lcom/dodonew/online/http/JsonRequest;, "Lcom/dodonew/online/http/JsonRequest<TT;>;"
    .local p5, "listener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Lcom/dodonew/online/bean/RequestResult<TT;>;>;"
    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/dodonew/online/http/JsonBaseRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/http/JsonRequest;->useDes:Z

    .line 44
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/http/JsonRequest;->mGson:Lcom/google/gson/Gson;

    .line 46
    const-string v0, "65102933"

    iput-object v0, p0, Lcom/dodonew/online/http/JsonRequest;->desKey:Ljava/lang/String;

    .line 47
    const-string v0, "32028092"

    iput-object v0, p0, Lcom/dodonew/online/http/JsonRequest;->desIV:Ljava/lang/String;

    .line 174
    new-instance v0, Lcom/dodonew/online/http/JsonRequest$2;

    invoke-direct {v0, p0}, Lcom/dodonew/online/http/JsonRequest$2;-><init>(Lcom/dodonew/online/http/JsonRequest;)V

    iput-object v0, p0, Lcom/dodonew/online/http/JsonRequest;->mHandler:Landroid/os/Handler;

    .line 54
    iput-object p1, p0, Lcom/dodonew/online/http/JsonRequest;->context:Landroid/content/Context;

    .line 55
    iput-object p7, p0, Lcom/dodonew/online/http/JsonRequest;->typeOfT:Ljava/lang/reflect/Type;

    .line 56
    iput-object p4, p0, Lcom/dodonew/online/http/JsonRequest;->mRequestBody:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "requestBody"    # Ljava/lang/String;
    .param p5, "errorListener"    # Lcom/android/volley/Response$ErrorListener;
    .param p6, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
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
    .line 60
    .local p0, "this":Lcom/dodonew/online/http/JsonRequest;, "Lcom/dodonew/online/http/JsonRequest<TT;>;"
    .local p4, "listener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Lcom/dodonew/online/bean/RequestResult<TT;>;>;"
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    .line 61
    return-void
.end method

.method private paraMap(Ljava/util/Map;)V
    .locals 8
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
    .line 139
    .local p0, "this":Lcom/dodonew/online/http/JsonRequest;, "Lcom/dodonew/online/http/JsonRequest<TT;>;"
    .local p1, "addMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, "time":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 141
    new-instance p1, Ljava/util/HashMap;

    .end local p1    # "addMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 143
    .restart local p1    # "addMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v2, ""

    .line 144
    .local v2, "encrypt":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/dodonew/online/http/JsonRequest;->useDes:Z

    if-eqz v5, :cond_3

    .line 145
    const-string v5, "timeStamp"

    invoke-interface {p1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v5, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    if-eqz v5, :cond_2

    .line 147
    const-string v5, "userId"

    sget-object v6, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v6}, Lcom/dodonew/online/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v5, Lcom/dodonew/online/DodonewOnlineApplication;->devId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 149
    invoke-static {}, Lcom/dodonew/online/DodonewOnlineApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/dodonew/online/util/Utils;->getDevId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/dodonew/online/DodonewOnlineApplication;->devId:Ljava/lang/String;

    .line 151
    :cond_1
    const-string v5, "imei"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Android"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/dodonew/online/DodonewOnlineApplication;->devId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_2
    const-string v5, "sdlkjsdljf0j2fsjk"

    const-string v6, "sign"

    invoke-static {p1, v5, v6}, Lcom/dodonew/online/http/RequestUtil;->paraMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "code":Ljava/lang/String;
    iget-object v5, p0, Lcom/dodonew/online/http/JsonRequest;->desKey:Ljava/lang/String;

    iget-object v6, p0, Lcom/dodonew/online/http/JsonRequest;->desIV:Ljava/lang/String;

    invoke-static {v0, v5, v6}, Lcom/dodonew/online/http/RequestUtil;->encodeDesMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 158
    .end local v0    # "code":Ljava/lang/String;
    :goto_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 160
    .local v3, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "Encrypt"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/dodonew/online/http/JsonRequest;->mRequestBody:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_1
    return-void

    .line 156
    .end local v3    # "obj":Lorg/json/JSONObject;
    :cond_3
    iget-object v5, p0, Lcom/dodonew/online/http/JsonRequest;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v5, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 162
    .restart local v3    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public addRequestMap(Ljava/util/Map;)V
    .locals 1
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
    .line 126
    .local p0, "this":Lcom/dodonew/online/http/JsonRequest;, "Lcom/dodonew/online/http/JsonRequest<TT;>;"
    .local p1, "addMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/http/JsonRequest;->useDes:Z

    .line 127
    invoke-direct {p0, p1}, Lcom/dodonew/online/http/JsonRequest;->paraMap(Ljava/util/Map;)V

    .line 129
    return-void
.end method

.method public addRequestMap(Ljava/util/Map;I)V
    .locals 8
    .param p2, "a"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lcom/dodonew/online/http/JsonRequest;, "Lcom/dodonew/online/http/JsonRequest<TT;>;"
    .local p1, "addMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, "time":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 109
    new-instance p1, Ljava/util/HashMap;

    .end local p1    # "addMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 111
    .restart local p1    # "addMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v5, "timeStamp"

    invoke-interface {p1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v5, "sdlkjsdljf0j2fsjk"

    const-string v6, "sign"

    invoke-static {p1, v5, v6}, Lcom/dodonew/online/http/RequestUtil;->paraMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "code":Ljava/lang/String;
    iget-object v5, p0, Lcom/dodonew/online/http/JsonRequest;->desKey:Ljava/lang/String;

    iget-object v6, p0, Lcom/dodonew/online/http/JsonRequest;->desIV:Ljava/lang/String;

    invoke-static {v0, v5, v6}, Lcom/dodonew/online/http/RequestUtil;->encodeDesMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "encrypt":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 116
    .local v3, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "Encrypt"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/dodonew/online/http/JsonRequest;->mRequestBody:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public addRequestMap(Ljava/util/Map;Z)V
    .locals 1
    .param p2, "userDes"    # Z
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
    .line 132
    .local p0, "this":Lcom/dodonew/online/http/JsonRequest;, "Lcom/dodonew/online/http/JsonRequest<TT;>;"
    .local p1, "addMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-boolean p2, p0, Lcom/dodonew/online/http/JsonRequest;->useDes:Z

    .line 133
    if-eqz p1, :cond_0

    .line 134
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/http/JsonRequest;->mRequestBody:Ljava/lang/String;

    .line 136
    :cond_0
    return-void
.end method

.method public getBody()[B
    .locals 6

    .prologue
    .local p0, "this":Lcom/dodonew/online/http/JsonRequest;, "Lcom/dodonew/online/http/JsonRequest<TT;>;"
    const/4 v1, 0x0

    .line 66
    :try_start_0
    iget-object v2, p0, Lcom/dodonew/online/http/JsonRequest;->mRequestBody:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 69
    :goto_0
    return-object v1

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/dodonew/online/http/JsonRequest;->mRequestBody:Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "var2":Ljava/io/UnsupportedEncodingException;
    const-string v2, "Unsupported Encoding while trying to get the bytes of %s using %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/dodonew/online/http/JsonRequest;->mRequestBody:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "utf-8"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/android/volley/VolleyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public intentLoginActivity()V
    .locals 5

    .prologue
    .line 168
    .local p0, "this":Lcom/dodonew/online/http/JsonRequest;, "Lcom/dodonew/online/http/JsonRequest<TT;>;"
    iget-object v1, p0, Lcom/dodonew/online/http/JsonRequest;->context:Landroid/content/Context;

    const-string v2, "\u5f53\u524d\u8d26\u53f7\u5df2\u5728\u5176\u5b83\u8bbe\u5907\u767b\u5f55."

    const/16 v3, 0x11

    invoke-static {v1, v2, v3}, Lcom/dodonew/online/util/ToastMsg;->showToastMsg(Landroid/content/Context;Ljava/lang/String;I)V

    .line 169
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dodonew/online/http/JsonRequest;->context:Landroid/content/Context;

    const-class v2, Lcom/dodonew/online/ui/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/dodonew/online/http/JsonRequest;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 171
    invoke-static {}, Lcom/dodonew/online/DodonewOnlineApplication;->getInstance()Lcom/dodonew/online/DodonewOnlineApplication;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/dodonew/online/ui/LoginActivity;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/dodonew/online/DodonewOnlineApplication;->removeAllActivity([Ljava/lang/Class;)Z

    .line 172
    return-void
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 7
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
    .line 75
    .local p0, "this":Lcom/dodonew/online/http/JsonRequest;, "Lcom/dodonew/online/http/JsonRequest<TT;>;"
    const-string v3, ""

    .line 77
    .local v3, "parsed":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/String;

    .end local v3    # "parsed":Ljava/lang/String;
    iget-object v5, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v6, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v6}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .restart local v3    # "parsed":Ljava/lang/String;
    :goto_0
    iget-boolean v5, p0, Lcom/dodonew/online/http/JsonRequest;->useDes:Z

    if-eqz v5, :cond_0

    .line 82
    iget-object v5, p0, Lcom/dodonew/online/http/JsonRequest;->desKey:Ljava/lang/String;

    iget-object v6, p0, Lcom/dodonew/online/http/JsonRequest;->desIV:Ljava/lang/String;

    invoke-static {v3, v5, v6}, Lcom/dodonew/online/http/RequestUtil;->decodeDesJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    :cond_0
    const-string v5, "yang"

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v5, p0, Lcom/dodonew/online/http/JsonRequest;->mGson:Lcom/google/gson/Gson;

    iget-object v6, p0, Lcom/dodonew/online/http/JsonRequest;->typeOfT:Ljava/lang/reflect/Type;

    invoke-virtual {v5, v3, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dodonew/online/bean/RequestResult;

    .line 86
    .local v4, "res":Lcom/dodonew/online/bean/RequestResult;, "Lcom/dodonew/online/bean/RequestResult<TT;>;"
    iput-object v3, v4, Lcom/dodonew/online/bean/RequestResult;->response:Ljava/lang/String;

    .line 87
    iget-boolean v5, p0, Lcom/dodonew/online/http/JsonRequest;->useDes:Z

    if-eqz v5, :cond_1

    .line 89
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 90
    .local v2, "object":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 91
    const-string v5, "code"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "code":Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 93
    const-string v5, "data"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 94
    const-string v5, "data"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/dodonew/online/bean/RequestResult;->response:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 103
    .end local v0    # "code":Ljava/lang/String;
    .end local v2    # "object":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v5

    return-object v5

    .line 78
    .end local v3    # "parsed":Ljava/lang/String;
    .end local v4    # "res":Lcom/dodonew/online/bean/RequestResult;, "Lcom/dodonew/online/bean/RequestResult<TT;>;"
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/String;

    iget-object v5, p1, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    .restart local v3    # "parsed":Ljava/lang/String;
    goto :goto_0

    .line 95
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "code":Ljava/lang/String;
    .restart local v2    # "object":Lorg/json/JSONObject;
    .restart local v4    # "res":Lcom/dodonew/online/bean/RequestResult;, "Lcom/dodonew/online/bean/RequestResult<TT;>;"
    :cond_2
    :try_start_2
    const-string v5, "-10"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 96
    iget-object v5, p0, Lcom/dodonew/online/http/JsonRequest;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 99
    .end local v0    # "code":Ljava/lang/String;
    .end local v2    # "object":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
