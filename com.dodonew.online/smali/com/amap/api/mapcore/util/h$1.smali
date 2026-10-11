.class Lcom/amap/api/mapcore/util/h$1;
.super Ljava/lang/Object;
.source "OfflineDownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/h;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/amap/api/mapcore/util/h;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/h;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/amap/api/mapcore/util/h$1;->b:Lcom/amap/api/mapcore/util/h;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/h$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 247
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$1;->b:Lcom/amap/api/mapcore/util/h;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/h;->a(Lcom/amap/api/mapcore/util/h;Ljava/lang/String;)Lcom/amap/api/mapcore/util/g;

    move-result-object v1

    .line 250
    :try_start_0
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/g;->c()Lcom/amap/api/mapcore/util/al;

    move-result-object v0

    iget-object v2, v1, Lcom/amap/api/mapcore/util/g;->f:Lcom/amap/api/mapcore/util/al;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$1;->b:Lcom/amap/api/mapcore/util/h;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/h;->d(Lcom/amap/api/mapcore/util/h;)Lcom/amap/api/mapcore/util/h$a;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/h$a;->b(Lcom/amap/api/mapcore/util/g;)V

    .line 290
    :goto_0
    return-void

    .line 253
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/g;->getAdcode()Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 257
    iget-object v2, p0, Lcom/amap/api/mapcore/util/h$1;->b:Lcom/amap/api/mapcore/util/h;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/h;->a(Lcom/amap/api/mapcore/util/h;)Lcom/amap/api/mapcore/util/z;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore/util/z;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    sget-object v2, Lcom/amap/api/mapcore/util/h;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    sget-object v2, Lcom/amap/api/mapcore/util/h;->b:Ljava/lang/String;

    .line 260
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/g;->i()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$1;->b:Lcom/amap/api/mapcore/util/h;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/h;->d(Lcom/amap/api/mapcore/util/h;)Lcom/amap/api/mapcore/util/h$a;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/h$a;->b(Lcom/amap/api/mapcore/util/g;)V

    goto :goto_0

    .line 269
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$1;->b:Lcom/amap/api/mapcore/util/h;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/h;->b(Lcom/amap/api/mapcore/util/h;)V

    .line 270
    new-instance v0, Lcom/amap/api/mapcore/util/j;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/h$1;->b:Lcom/amap/api/mapcore/util/h;

    .line 271
    invoke-static {v2}, Lcom/amap/api/mapcore/util/h;->c(Lcom/amap/api/mapcore/util/h;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/amap/api/mapcore/util/h;->b:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/amap/api/mapcore/util/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 272
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/j;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/i;

    .line 273
    iget-object v2, p0, Lcom/amap/api/mapcore/util/h$1;->b:Lcom/amap/api/mapcore/util/h;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/h;->d(Lcom/amap/api/mapcore/util/h;)Lcom/amap/api/mapcore/util/h$a;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_3

    .line 274
    if-nez v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$1;->b:Lcom/amap/api/mapcore/util/h;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/h;->d(Lcom/amap/api/mapcore/util/h;)Lcom/amap/api/mapcore/util/h$a;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/h$a;->b(Lcom/amap/api/mapcore/util/g;)V

    goto :goto_0

    .line 278
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 279
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$1;->b:Lcom/amap/api/mapcore/util/h;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/h;->a()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 287
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$1;->b:Lcom/amap/api/mapcore/util/h;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/h;->d(Lcom/amap/api/mapcore/util/h;)Lcom/amap/api/mapcore/util/h$a;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/h$a;->b(Lcom/amap/api/mapcore/util/g;)V

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    :try_start_4
    sget-object v2, Lcom/amap/api/mapcore/util/bf;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x73

    invoke-static {v2, v0, v3}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 287
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$1;->b:Lcom/amap/api/mapcore/util/h;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/h;->d(Lcom/amap/api/mapcore/util/h;)Lcom/amap/api/mapcore/util/h$a;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/h$a;->b(Lcom/amap/api/mapcore/util/g;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/h$1;->b:Lcom/amap/api/mapcore/util/h;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/h;->d(Lcom/amap/api/mapcore/util/h;)Lcom/amap/api/mapcore/util/h$a;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/amap/api/mapcore/util/h$a;->b(Lcom/amap/api/mapcore/util/g;)V

    throw v0
.end method
