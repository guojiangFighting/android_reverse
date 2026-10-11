.class public Lcom/amap/api/mapcore/util/r;
.super Ljava/lang/Object;
.source "UpdateItem.java"


# instance fields
.field public a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:J

.field private h:J

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Z

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x6

    iput v0, p0, Lcom/amap/api/mapcore/util/r;->a:I

    .line 24
    iput-object v1, p0, Lcom/amap/api/mapcore/util/r;->b:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/amap/api/mapcore/util/r;->c:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/amap/api/mapcore/util/r;->d:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/amap/api/mapcore/util/r;->e:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore/util/r;->f:Ljava/lang/String;

    .line 30
    iput-wide v2, p0, Lcom/amap/api/mapcore/util/r;->g:J

    .line 31
    iput-wide v2, p0, Lcom/amap/api/mapcore/util/r;->h:J

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore/util/r;->i:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/r;->l:Z

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore/util/r;->n:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps/offlinemap/OfflineMapCity;Landroid/content/Context;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x6

    iput v0, p0, Lcom/amap/api/mapcore/util/r;->a:I

    .line 24
    iput-object v1, p0, Lcom/amap/api/mapcore/util/r;->b:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/amap/api/mapcore/util/r;->c:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/amap/api/mapcore/util/r;->d:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/amap/api/mapcore/util/r;->e:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore/util/r;->f:Ljava/lang/String;

    .line 30
    iput-wide v4, p0, Lcom/amap/api/mapcore/util/r;->g:J

    .line 31
    iput-wide v4, p0, Lcom/amap/api/mapcore/util/r;->h:J

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore/util/r;->i:Ljava/lang/String;

    .line 37
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/r;->l:Z

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore/util/r;->n:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/amap/api/mapcore/util/r;->o:Landroid/content/Context;

    .line 46
    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getCity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/r;->b:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getAdcode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/r;->d:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/r;->c:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/r;->h:J

    .line 50
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/r;->a()V

    .line 51
    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/r;->f:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/r;->n:Ljava/lang/String;

    .line 53
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/r;->l:Z

    .line 54
    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getState()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/r;->a:I

    .line 55
    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getcompleteCode()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/r;->m:I

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps/offlinemap/OfflineMapProvince;Landroid/content/Context;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x6

    iput v0, p0, Lcom/amap/api/mapcore/util/r;->a:I

    .line 24
    iput-object v1, p0, Lcom/amap/api/mapcore/util/r;->b:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/amap/api/mapcore/util/r;->c:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/amap/api/mapcore/util/r;->d:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/amap/api/mapcore/util/r;->e:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore/util/r;->f:Ljava/lang/String;

    .line 30
    iput-wide v2, p0, Lcom/amap/api/mapcore/util/r;->g:J

    .line 31
    iput-wide v2, p0, Lcom/amap/api/mapcore/util/r;->h:J

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore/util/r;->i:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/r;->l:Z

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore/util/r;->n:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/amap/api/mapcore/util/r;->o:Landroid/content/Context;

    .line 60
    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getProvinceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/r;->b:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getProvinceCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/r;->d:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/r;->c:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/r;->h:J

    .line 64
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/r;->a()V

    .line 65
    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/r;->f:Ljava/lang/String;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/r;->l:Z

    .line 67
    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getState()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/r;->a:I

    .line 68
    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getcompleteCode()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/r;->m:I

    .line 69
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/bk;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/r;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/r;->e:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 176
    iput p1, p0, Lcom/amap/api/mapcore/util/r;->k:I

    .line 177
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 172
    iput-wide p1, p0, Lcom/amap/api/mapcore/util/r;->g:J

    .line 173
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/amap/api/mapcore/util/r;->b:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/r;->l:Z

    .line 221
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 95
    const/4 v0, 0x6

    iput v0, p0, Lcom/amap/api/mapcore/util/r;->a:I

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/r;->b(I)V

    .line 97
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/mapcore/util/r;->a(J)V

    .line 98
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 224
    iput p1, p0, Lcom/amap/api/mapcore/util/r;->m:I

    .line 225
    return-void
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 188
    iput-wide p1, p0, Lcom/amap/api/mapcore/util/r;->g:J

    .line 189
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/amap/api/mapcore/util/r;->f:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(J)V
    .locals 1

    .prologue
    .line 196
    iput-wide p1, p0, Lcom/amap/api/mapcore/util/r;->h:J

    .line 197
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/amap/api/mapcore/util/r;->e:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/amap/api/mapcore/util/r;->d:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/amap/api/mapcore/util/r;->c:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/amap/api/mapcore/util/r;->i:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/amap/api/mapcore/util/r;->j:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public h()J
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/r;->h:J

    return-wide v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/amap/api/mapcore/util/r;->n:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public i()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/amap/api/mapcore/util/r;->k:I

    return v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 247
    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 251
    const-string v1, "file"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_0

    .line 255
    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/r;->b:Ljava/lang/String;

    .line 256
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/r;->d:Ljava/lang/String;

    .line 257
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/r;->c:Ljava/lang/String;

    .line 258
    const-string v1, "fileName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/r;->e:Ljava/lang/String;

    .line 259
    const-string v1, "lLocalLength"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/amap/api/mapcore/util/r;->g:J

    .line 260
    const-string v1, "lRemoteLength"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/amap/api/mapcore/util/r;->h:J

    .line 261
    const-string v1, "mState"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/amap/api/mapcore/util/r;->a:I

    .line 263
    const-string v1, "version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/r;->f:Ljava/lang/String;

    .line 264
    const-string v1, "localPath"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/r;->j:Ljava/lang/String;

    .line 265
    const-string v1, "vMapFileNames"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/r;->i:Ljava/lang/String;

    .line 266
    const-string v1, "isSheng"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/r;->l:Z

    .line 267
    const-string v1, "mCompleteCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/amap/api/mapcore/util/r;->m:I

    .line 268
    const-string v1, "mCityCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/r;->n:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    const-string v1, "UpdateItem"

    const-string v2, "readFileToJSONObject"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public j()J
    .locals 2

    .prologue
    .line 184
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/r;->g:J

    return-wide v0
.end method

.method public k()J
    .locals 2

    .prologue
    .line 192
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/r;->h:J

    return-wide v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->i:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->j:Ljava/lang/String;

    return-object v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/r;->l:Z

    return v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/amap/api/mapcore/util/r;->m:I

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->n:Ljava/lang/String;

    return-object v0
.end method

.method public q()V
    .locals 6

    .prologue
    .line 277
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 280
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 281
    const-string v2, "title"

    iget-object v3, p0, Lcom/amap/api/mapcore/util/r;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 282
    const-string v2, "code"

    iget-object v3, p0, Lcom/amap/api/mapcore/util/r;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    const-string v2, "url"

    iget-object v3, p0, Lcom/amap/api/mapcore/util/r;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 284
    const-string v2, "fileName"

    iget-object v3, p0, Lcom/amap/api/mapcore/util/r;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 285
    const-string v2, "lLocalLength"

    iget-wide v4, p0, Lcom/amap/api/mapcore/util/r;->g:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 286
    const-string v2, "lRemoteLength"

    iget-wide v4, p0, Lcom/amap/api/mapcore/util/r;->h:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 287
    const-string v2, "mState"

    iget v3, p0, Lcom/amap/api/mapcore/util/r;->a:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 289
    const-string v2, "version"

    iget-object v3, p0, Lcom/amap/api/mapcore/util/r;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    const-string v2, "localPath"

    iget-object v3, p0, Lcom/amap/api/mapcore/util/r;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    iget-object v2, p0, Lcom/amap/api/mapcore/util/r;->i:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 292
    const-string v2, "vMapFileNames"

    iget-object v3, p0, Lcom/amap/api/mapcore/util/r;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 295
    :cond_0
    const-string v2, "isSheng"

    iget-boolean v3, p0, Lcom/amap/api/mapcore/util/r;->l:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 296
    const-string v2, "mCompleteCode"

    iget v3, p0, Lcom/amap/api/mapcore/util/r;->m:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 297
    const-string v2, "mCityCode"

    iget-object v3, p0, Lcom/amap/api/mapcore/util/r;->n:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    const-string v2, "file"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 299
    new-instance v3, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amap/api/mapcore/util/r;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 301
    const/4 v2, 0x0

    .line 303
    :try_start_1
    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v3, "utf-8"

    invoke-direct {v1, v4, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 312
    if-eqz v1, :cond_1

    .line 313
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 323
    :cond_1
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 315
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 318
    :catch_1
    move-exception v0

    .line 319
    const-string v1, "UpdateItem"

    const-string v2, "saveJSONObjectToFile parseJson"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 306
    :catch_2
    move-exception v0

    move-object v1, v2

    .line 307
    :goto_1
    :try_start_5
    const-string v2, "UpdateItem"

    const-string v3, "saveJSONObjectToFile"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 312
    if-eqz v1, :cond_1

    .line 313
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 314
    :catch_3
    move-exception v0

    .line 315
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    .line 311
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 312
    :goto_2
    if-eqz v1, :cond_2

    .line 313
    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1

    .line 316
    :cond_2
    :goto_3
    :try_start_9
    throw v0

    .line 314
    :catch_4
    move-exception v1

    .line 315
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_3

    .line 311
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 306
    :catch_5
    move-exception v0

    goto :goto_1
.end method
