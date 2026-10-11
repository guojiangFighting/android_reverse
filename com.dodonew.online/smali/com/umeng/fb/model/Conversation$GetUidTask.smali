.class Lcom/umeng/fb/model/Conversation$GetUidTask;
.super Landroid/os/AsyncTask;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/fb/model/Conversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetUidTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/fb/model/Conversation;

.field private b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/umeng/fb/model/Conversation;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/umeng/fb/model/Conversation$GetUidTask;->a:Lcom/umeng/fb/model/Conversation;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 297
    iput-object p2, p0, Lcom/umeng/fb/model/Conversation$GetUidTask;->b:Ljava/lang/Runnable;

    .line 298
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    .line 322
    iget-object v0, p0, Lcom/umeng/fb/model/Conversation$GetUidTask;->a:Lcom/umeng/fb/model/Conversation;

    invoke-static {v0}, Lcom/umeng/fb/model/Conversation;->d(Lcom/umeng/fb/model/Conversation;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/fb/model/Conversation$GetUidTask;->a:Lcom/umeng/fb/model/Conversation;

    invoke-static {v0}, Lcom/umeng/fb/model/Conversation;->d(Lcom/umeng/fb/model/Conversation;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/umeng/fb/model/Conversation$GetUidTask;->a:Lcom/umeng/fb/model/Conversation;

    invoke-static {v0}, Lcom/umeng/fb/model/Conversation;->d(Lcom/umeng/fb/model/Conversation;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/fb/model/Reply;

    .line 326
    const-string v2, "sending"

    iget-object v3, v0, Lcom/umeng/fb/model/Reply;->status:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 327
    const-string v3, "will_sent"

    iget-object v4, v0, Lcom/umeng/fb/model/Reply;->status:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 329
    if-nez v2, :cond_3

    if-eqz v3, :cond_2

    .line 330
    :cond_3
    const-string v2, "not_sent"

    iput-object v2, v0, Lcom/umeng/fb/model/Reply;->status:Ljava/lang/String;

    goto :goto_1

    .line 333
    :cond_4
    iget-object v0, p0, Lcom/umeng/fb/model/Conversation$GetUidTask;->a:Lcom/umeng/fb/model/Conversation;

    invoke-static {v0}, Lcom/umeng/fb/model/Conversation;->a(Lcom/umeng/fb/model/Conversation;)V

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 302
    new-instance v0, Lcom/umeng/fb/net/a;

    iget-object v1, p0, Lcom/umeng/fb/model/Conversation$GetUidTask;->a:Lcom/umeng/fb/model/Conversation;

    invoke-static {v1}, Lcom/umeng/fb/model/Conversation;->c(Lcom/umeng/fb/model/Conversation;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/fb/net/a;-><init>(Landroid/content/Context;)V

    .line 303
    invoke-virtual {v0}, Lcom/umeng/fb/net/a;->a()Ljava/lang/String;

    move-result-object v1

    .line 304
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    :cond_0
    invoke-virtual {v0}, Lcom/umeng/fb/net/a;->a()Ljava/lang/String;

    .line 307
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/umeng/fb/model/Conversation$GetUidTask;->a:Lcom/umeng/fb/model/Conversation;

    invoke-static {v0}, Lcom/umeng/fb/model/Conversation;->c(Lcom/umeng/fb/model/Conversation;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/fb/model/Store;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/model/Store;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/fb/model/Store;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/umeng/fb/model/Conversation$GetUidTask;->b:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 319
    :goto_0
    return-void

    .line 316
    :cond_0
    invoke-static {}, Lcom/umeng/fb/model/Conversation;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "get uid fail"

    invoke-static {v0, v1}, Lcom/umeng/fb/util/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-direct {p0}, Lcom/umeng/fb/model/Conversation$GetUidTask;->a()V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 293
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/umeng/fb/model/Conversation$GetUidTask;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 293
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/umeng/fb/model/Conversation$GetUidTask;->a(Ljava/lang/Boolean;)V

    return-void
.end method
