.class public Lcom/umeng/fb/model/Store;
.super Ljava/lang/Object;
.source "Store.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/umeng/fb/model/Store; = null

.field private static final d:Ljava/lang/String; = "umeng_feedback_conversations"

.field private static final e:Ljava/lang/String; = "umeng_feedback_user_info"

.field private static final f:Ljava/lang/String; = "user"

.field private static final g:Ljava/lang/String; = "uid"

.field private static final h:Ljava/lang/String; = "device_uuid"

.field private static final i:Ljava/lang/String; = "conversation_format_version"

.field private static final j:Ljava/lang/String; = "last_update_at"

.field private static final k:Ljava/lang/String; = "last_sync_at"


# instance fields
.field private c:Landroid/content/Context;

.field private l:Landroid/content/SharedPreferences;

.field private m:Landroid/content/SharedPreferences;

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/umeng/fb/model/Conversation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/umeng/fb/model/Store;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/fb/model/Store;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/fb/model/Store;->n:Ljava/util/Map;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/fb/model/Store;->c:Landroid/content/Context;

    .line 80
    iget-object v0, p0, Lcom/umeng/fb/model/Store;->c:Landroid/content/Context;

    const-string v1, "umeng_feedback_conversations"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/fb/model/Store;->l:Landroid/content/SharedPreferences;

    .line 81
    iget-object v0, p0, Lcom/umeng/fb/model/Store;->c:Landroid/content/Context;

    const-string v1, "umeng_feedback_user_info"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/fb/model/Store;->m:Landroid/content/SharedPreferences;

    .line 82
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/umeng/fb/model/Store;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/umeng/fb/model/Store;->b:Lcom/umeng/fb/model/Store;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/umeng/fb/model/Store;

    invoke-direct {v0, p0}, Lcom/umeng/fb/model/Store;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/fb/model/Store;->b:Lcom/umeng/fb/model/Store;

    .line 88
    :cond_0
    sget-object v0, Lcom/umeng/fb/model/Store;->b:Lcom/umeng/fb/model/Store;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/umeng/fb/model/Store;->l:Landroid/content/SharedPreferences;

    .line 207
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 206
    invoke-static {v0}, Lcom/umeng/fb/util/d;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 208
    iget-object v0, p0, Lcom/umeng/fb/model/Store;->m:Landroid/content/SharedPreferences;

    .line 209
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 208
    invoke-static {v0}, Lcom/umeng/fb/util/d;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 210
    return-void
.end method

.method public getAllConversationIds()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/umeng/fb/model/Store;->l:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 194
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 195
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 198
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 199
    return-object v1
.end method

.method public getConversationById(Ljava/lang/String;)Lcom/umeng/fb/model/Conversation;
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/umeng/fb/model/Store;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/umeng/fb/model/Store;->l:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/umeng/fb/model/Store;->c:Landroid/content/Context;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, p1}, Lcom/umeng/fb/model/Conversation;->a(Landroid/content/Context;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/umeng/fb/model/Conversation;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/umeng/fb/model/Store;->n:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/umeng/fb/model/Store;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/fb/model/Conversation;

    return-object v0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDeviceUUID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/umeng/fb/model/Store;->m:Landroid/content/SharedPreferences;

    const-string v1, "device_uuid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/umeng/fb/model/Store;->m:Landroid/content/SharedPreferences;

    .line 229
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "device_uuid"

    .line 230
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 228
    invoke-static {v1}, Lcom/umeng/fb/util/d;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 232
    :cond_0
    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/umeng/fb/model/Store;->m:Landroid/content/SharedPreferences;

    const-string v1, "uid"

    const-string v2, ""

    .line 221
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Lcom/umeng/fb/model/UserInfo;
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/umeng/fb/model/Store;->m:Landroid/content/SharedPreferences;

    const-string v1, "user"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Lcom/umeng/fb/model/UserInfo;

    invoke-direct {v0}, Lcom/umeng/fb/model/UserInfo;-><init>()V

    .line 131
    :goto_0
    return-object v0

    .line 127
    :cond_0
    :try_start_0
    new-instance v0, Lcom/umeng/fb/model/UserInfo;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/umeng/fb/model/UserInfo;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 131
    new-instance v0, Lcom/umeng/fb/model/UserInfo;

    invoke-direct {v0}, Lcom/umeng/fb/model/UserInfo;-><init>()V

    goto :goto_0
.end method

.method public getUserInfoLastSyncAt()J
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/umeng/fb/model/Store;->m:Landroid/content/SharedPreferences;

    const-string v1, "last_sync_at"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 156
    return-wide v0
.end method

.method public getUserInfoLastUpdateAt()J
    .locals 4

    .prologue
    .line 142
    iget-object v0, p0, Lcom/umeng/fb/model/Store;->m:Landroid/content/SharedPreferences;

    const-string v1, "last_update_at"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 145
    return-wide v0
.end method

.method public isMigrated()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 274
    iget-object v1, p0, Lcom/umeng/fb/model/Store;->m:Landroid/content/SharedPreferences;

    const-string v2, "conversation_format_version"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 275
    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 276
    const/4 v0, 0x1

    .line 277
    :cond_0
    return v0
.end method

.method public migrateData()V
    .locals 16

    .prologue
    .line 238
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/umeng/fb/model/Store;->l:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v11

    .line 240
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    .line 241
    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    .line 242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/umeng/fb/model/Store;->c:Landroid/content/Context;

    invoke-static {v2, v8}, Lcom/umeng/fb/model/Conversation;->newInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/umeng/fb/model/Conversation;

    move-result-object v13

    .line 243
    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 244
    const/4 v2, 0x0

    move v10, v2

    :goto_1
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v10, v2, :cond_1

    .line 245
    invoke-virtual {v14, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 247
    :try_start_1
    const-string v3, "content"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 248
    const-string v4, "reply_id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 249
    const-string v5, "status"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 250
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 251
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd HH:mm:ss"

    sget-object v7, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v6, "datetime"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 252
    const-string v5, "type"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 253
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 254
    new-instance v2, Lcom/umeng/fb/model/Reply;

    invoke-direct/range {v2 .. v7}, Lcom/umeng/fb/model/Reply;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 255
    iput-object v15, v2, Lcom/umeng/fb/model/Reply;->status:Ljava/lang/String;

    .line 256
    invoke-virtual {v13, v2}, Lcom/umeng/fb/model/Conversation;->addReply(Lcom/umeng/fb/model/Reply;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 244
    :goto_2
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_1

    .line 257
    :catch_0
    move-exception v2

    .line 258
    :try_start_2
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 267
    :catch_1
    move-exception v2

    .line 268
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 270
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/umeng/fb/model/Store;->m:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "conversation_format_version"

    const/4 v4, 0x5

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/fb/util/d;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 271
    return-void

    .line 263
    :cond_1
    :try_start_3
    sget-object v2, Lcom/umeng/fb/model/Store;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "migrate data: id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/fb/util/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    sget-object v2, Lcom/umeng/fb/model/Store;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "old: \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/fb/util/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    sget-object v2, Lcom/umeng/fb/model/Store;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new :\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/umeng/fb/model/Conversation;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/fb/util/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method

.method public removeConversation(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/umeng/fb/model/Store;->l:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/fb/util/d;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 101
    iget-object v0, p0, Lcom/umeng/fb/model/Store;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void
.end method

.method public saveConversation(Ljava/lang/String;Lcom/umeng/fb/model/Conversation;)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/umeng/fb/model/Store;->l:Landroid/content/SharedPreferences;

    .line 94
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p2}, Lcom/umeng/fb/model/Conversation;->toJson()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 92
    invoke-static {v0}, Lcom/umeng/fb/util/d;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 96
    iget-object v0, p0, Lcom/umeng/fb/model/Store;->n:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method

.method public saveUserInfo(Lcom/umeng/fb/model/UserInfo;)V
    .locals 4

    .prologue
    .line 105
    iget-object v0, p0, Lcom/umeng/fb/model/Store;->m:Landroid/content/SharedPreferences;

    .line 106
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user"

    .line 107
    invoke-virtual {p1}, Lcom/umeng/fb/model/UserInfo;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_update_at"

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 108
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 105
    invoke-static {v0}, Lcom/umeng/fb/util/d;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 110
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/umeng/fb/model/Store;->m:Landroid/content/SharedPreferences;

    .line 214
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "uid"

    .line 215
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 213
    invoke-static {v0}, Lcom/umeng/fb/util/d;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 216
    return-void
.end method

.method public setUserInfoLastSyncAt(J)V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/umeng/fb/model/Store;->m:Landroid/content/SharedPreferences;

    .line 167
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_sync_at"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 166
    invoke-static {v0}, Lcom/umeng/fb/util/d;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 168
    return-void
.end method
