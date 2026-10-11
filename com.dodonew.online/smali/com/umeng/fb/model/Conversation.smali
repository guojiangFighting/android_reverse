.class public Lcom/umeng/fb/model/Conversation;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/fb/model/Conversation$GetUidTask;,
        Lcom/umeng/fb/model/Conversation$OnChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/umeng/fb/model/Conversation;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/fb/model/Reply;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Lcom/umeng/fb/model/Conversation$OnChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/umeng/fb/model/Conversation;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/fb/model/Conversation;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/fb/model/Conversation;->b:Ljava/util/List;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/fb/model/Conversation;->e:Z

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/fb/model/Conversation;->c:Landroid/content/Context;

    .line 43
    return-void
.end method

.method protected static a(Landroid/content/Context;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/umeng/fb/model/Conversation;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v1, Lcom/umeng/fb/model/Conversation;

    invoke-direct {v1, p0}, Lcom/umeng/fb/model/Conversation;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 63
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 64
    invoke-static {v2}, Lcom/umeng/fb/model/Reply;->fromJson(Lorg/json/JSONObject;)Lcom/umeng/fb/model/Reply;

    move-result-object v2

    .line 65
    iget-object v3, v1, Lcom/umeng/fb/model/Conversation;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    const-string v3, "new_feedback"

    iget-object v2, v2, Lcom/umeng/fb/model/Reply;->type:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/umeng/fb/model/Conversation;->e:Z

    .line 62
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_1
    iput-object p2, v1, Lcom/umeng/fb/model/Conversation;->d:Ljava/lang/String;

    .line 72
    iget-object v0, v1, Lcom/umeng/fb/model/Conversation;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 73
    sget-object v0, Lcom/umeng/fb/model/Conversation;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fromJson: json = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "fromJson: conversation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 74
    invoke-virtual {v1}, Lcom/umeng/fb/model/Conversation;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-static {v0, v2}, Lcom/umeng/fb/util/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-object v1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/umeng/fb/model/Conversation;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/fb/model/Conversation;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/umeng/fb/model/Conversation;->b()V

    return-void
.end method

.method static synthetic a(Lcom/umeng/fb/model/Conversation;Lcom/umeng/fb/model/Reply;)Z
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/umeng/fb/model/Conversation;->a(Lcom/umeng/fb/model/Reply;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/umeng/fb/model/Reply;)Z
    .locals 6

    .prologue
    .line 132
    iget-object v0, p0, Lcom/umeng/fb/model/Conversation;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/fb/model/Reply;

    .line 134
    iget-object v2, v0, Lcom/umeng/fb/model/Reply;->reply_id:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "dev_reply"

    iget-object v3, v0, Lcom/umeng/fb/model/Reply;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    iget-object v2, v0, Lcom/umeng/fb/model/Reply;->reply_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/umeng/fb/model/Reply;->reply_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, v0, Lcom/umeng/fb/model/Reply;->reply_id:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p1, Lcom/umeng/fb/model/Reply;->created_at:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "1111"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    :cond_1
    const/4 v0, 0x1

    .line 143
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/umeng/fb/model/Conversation;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/umeng/fb/model/Conversation;->d:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 276
    sget-object v0, Lcom/umeng/fb/model/Conversation;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/fb/model/Conversation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/fb/util/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/umeng/fb/model/Conversation;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/fb/model/Store;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/model/Store;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/fb/model/Conversation;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/umeng/fb/model/Store;->saveConversation(Ljava/lang/String;Lcom/umeng/fb/model/Conversation;)V

    .line 278
    iget-object v0, p0, Lcom/umeng/fb/model/Conversation;->f:Lcom/umeng/fb/model/Conversation$OnChangeListener;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/umeng/fb/model/Conversation;->f:Lcom/umeng/fb/model/Conversation$OnChangeListener;

    invoke-interface {v0}, Lcom/umeng/fb/model/Conversation$OnChangeListener;->onChange()V

    .line 280
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/umeng/fb/model/Conversation;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/umeng/fb/model/Conversation;->c:Landroid/content/Context;

    return-object v0
.end method

.method private static c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "R"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "C"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/umeng/fb/model/Conversation;)Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/umeng/fb/model/Conversation;->b:Ljava/util/List;

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/umeng/fb/model/Conversation;
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/umeng/fb/model/Conversation;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/umeng/fb/model/Conversation;->newInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/umeng/fb/model/Conversation;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/umeng/fb/model/Conversation;
    .locals 3

    .prologue
    .line 51
    new-instance v0, Lcom/umeng/fb/model/Conversation;

    invoke-direct {v0, p0}, Lcom/umeng/fb/model/Conversation;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/umeng/fb/model/Conversation;->b:Ljava/util/List;

    .line 54
    iput-object p1, v0, Lcom/umeng/fb/model/Conversation;->d:Ljava/lang/String;

    .line 55
    invoke-static {p0}, Lcom/umeng/fb/model/Store;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/model/Store;

    move-result-object v1

    iget-object v2, v0, Lcom/umeng/fb/model/Conversation;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/umeng/fb/model/Store;->saveConversation(Ljava/lang/String;Lcom/umeng/fb/model/Conversation;)V

    .line 56
    return-object v0
.end method


# virtual methods
.method public addReply(Lcom/umeng/fb/model/Reply;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/umeng/fb/model/Conversation;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-direct {p0}, Lcom/umeng/fb/model/Conversation;->b()V

    .line 92
    return-void
.end method

.method public addUserReply(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 103
    invoke-static {}, Lcom/umeng/fb/model/Conversation;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "text_reply"

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/umeng/fb/model/Conversation;->addUserReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V

    .line 104
    return-void
.end method

.method public addUserReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 8

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/umeng/fb/model/Conversation;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/umeng/fb/model/Conversation;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 109
    :cond_0
    new-instance v0, Lcom/umeng/fb/model/Reply;

    const-string v3, "user_reply"

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/umeng/fb/model/Reply;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;F)V

    .line 114
    :goto_0
    const-string v1, "will_sent"

    iput-object v1, v0, Lcom/umeng/fb/model/Reply;->status:Ljava/lang/String;

    .line 115
    invoke-virtual {p0, v0}, Lcom/umeng/fb/model/Conversation;->addReply(Lcom/umeng/fb/model/Reply;)V

    .line 116
    return-void

    .line 111
    :cond_1
    new-instance v0, Lcom/umeng/fb/model/Reply;

    const-string v3, "new_feedback"

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/umeng/fb/model/Reply;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;F)V

    .line 112
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/umeng/fb/model/Conversation;->e:Z

    goto :goto_0
.end method

.method public compareTo(Lcom/umeng/fb/model/Conversation;)I
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 394
    invoke-virtual {p0}, Lcom/umeng/fb/model/Conversation;->getReplyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lcom/umeng/fb/model/Conversation;->getReplyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 395
    invoke-virtual {p0}, Lcom/umeng/fb/model/Conversation;->getReplyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/fb/model/Reply;

    iget-wide v4, v0, Lcom/umeng/fb/model/Reply;->created_at:J

    invoke-virtual {p1}, Lcom/umeng/fb/model/Conversation;->getReplyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/fb/model/Reply;

    iget-wide v6, v0, Lcom/umeng/fb/model/Reply;->created_at:J

    sub-long/2addr v4, v6

    .line 396
    cmp-long v0, v4, v8

    if-lez v0, :cond_0

    move v0, v1

    .line 403
    :goto_0
    return v0

    .line 398
    :cond_0
    cmp-long v0, v4, v8

    if-nez v0, :cond_1

    move v0, v2

    .line 399
    goto :goto_0

    .line 401
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 403
    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 24
    check-cast p1, Lcom/umeng/fb/model/Conversation;

    invoke-virtual {p0, p1}, Lcom/umeng/fb/model/Conversation;->compareTo(Lcom/umeng/fb/model/Conversation;)I

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/umeng/fb/model/Conversation;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/fb/model/Reply;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/umeng/fb/model/Conversation;->b:Ljava/util/List;

    return-object v0
.end method

.method public sendReplyOnlyOne(Ljava/lang/String;Lcom/umeng/fb/model/Reply;)V
    .locals 3

    .prologue
    .line 343
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 344
    new-instance v1, Lcom/umeng/fb/model/Conversation$2;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/umeng/fb/model/Conversation$2;-><init>(Lcom/umeng/fb/model/Conversation;Lcom/umeng/fb/model/Reply;Landroid/os/Handler;Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/umeng/fb/model/Conversation;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/fb/model/Store;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/model/Store;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/fb/model/Store;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 385
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    :cond_0
    new-instance v0, Lcom/umeng/fb/model/Conversation$GetUidTask;

    invoke-direct {v0, p0, v1}, Lcom/umeng/fb/model/Conversation$GetUidTask;-><init>(Lcom/umeng/fb/model/Conversation;Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/umeng/fb/model/Conversation$GetUidTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 390
    :goto_0
    return-void

    .line 388
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public setOnChangeListener(Lcom/umeng/fb/model/Conversation$OnChangeListener;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/umeng/fb/model/Conversation;->f:Lcom/umeng/fb/model/Conversation$OnChangeListener;

    .line 270
    return-void
.end method

.method public sync(Lcom/umeng/fb/SyncListener;)V
    .locals 3

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/umeng/fb/model/Conversation;->getReplyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 166
    if-eqz p1, :cond_0

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0}, Lcom/umeng/fb/SyncListener;->onReceiveDevReply(Ljava/util/List;)V

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0}, Lcom/umeng/fb/SyncListener;->onSendUserReply(Ljava/util/List;)V

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    sget-object v0, Lcom/umeng/fb/model/Conversation;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sync id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/fb/model/Conversation;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":\t "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/fb/util/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 174
    new-instance v1, Lcom/umeng/fb/model/Conversation$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/umeng/fb/model/Conversation$1;-><init>(Lcom/umeng/fb/model/Conversation;Landroid/os/Handler;Lcom/umeng/fb/SyncListener;)V

    .line 256
    iget-object v0, p0, Lcom/umeng/fb/model/Conversation;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/fb/model/Store;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/model/Store;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/fb/model/Store;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_2

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 258
    :cond_2
    new-instance v0, Lcom/umeng/fb/model/Conversation$GetUidTask;

    invoke-direct {v0, p0, v1}, Lcom/umeng/fb/model/Conversation$GetUidTask;-><init>(Lcom/umeng/fb/model/Conversation;Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/umeng/fb/model/Conversation$GetUidTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 260
    :cond_3
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public toJson()Lorg/json/JSONArray;
    .locals 3

    .prologue
    .line 124
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 125
    iget-object v0, p0, Lcom/umeng/fb/model/Conversation;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/fb/model/Reply;

    .line 126
    invoke-virtual {v0}, Lcom/umeng/fb/model/Reply;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 128
    :cond_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/umeng/fb/model/Conversation;->toJson()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
