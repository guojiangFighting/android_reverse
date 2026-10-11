.class public Lcom/amap/api/mapcore/util/q;
.super Ljava/lang/Object;
.source "TaskManager.java"


# static fields
.field private static a:Lcom/amap/api/mapcore/util/q;


# instance fields
.field private b:Lcom/amap/api/mapcore/util/du;

.field private c:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/amap/api/mapcore/util/dv;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method private constructor <init>(ZI)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Ljava/util/LinkedHashMap;

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/q;->d:Z

    .line 76
    if-eqz p1, :cond_0

    .line 78
    :try_start_0
    invoke-static {p2}, Lcom/amap/api/mapcore/util/du;->a(I)Lcom/amap/api/mapcore/util/du;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/q;->b:Lcom/amap/api/mapcore/util/du;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(I)Lcom/amap/api/mapcore/util/q;
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/amap/api/mapcore/util/q;->a(ZI)Lcom/amap/api/mapcore/util/q;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized a(ZI)Lcom/amap/api/mapcore/util/q;
    .locals 3

    .prologue
    .line 52
    const-class v1, Lcom/amap/api/mapcore/util/q;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore/util/q;->a:Lcom/amap/api/mapcore/util/q;

    if-nez v0, :cond_1

    .line 53
    new-instance v0, Lcom/amap/api/mapcore/util/q;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/util/q;-><init>(ZI)V

    sput-object v0, Lcom/amap/api/mapcore/util/q;->a:Lcom/amap/api/mapcore/util/q;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lcom/amap/api/mapcore/util/q;->a:Lcom/amap/api/mapcore/util/q;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    .line 55
    :cond_1
    if-eqz p0, :cond_0

    :try_start_2
    sget-object v0, Lcom/amap/api/mapcore/util/q;->a:Lcom/amap/api/mapcore/util/q;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/q;->b:Lcom/amap/api/mapcore/util/du;

    if-nez v0, :cond_0

    .line 56
    sget-object v0, Lcom/amap/api/mapcore/util/q;->a:Lcom/amap/api/mapcore/util/q;

    .line 57
    invoke-static {p1}, Lcom/amap/api/mapcore/util/du;->a(I)Lcom/amap/api/mapcore/util/du;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/mapcore/util/q;->b:Lcom/amap/api/mapcore/util/du;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 91
    iget-object v1, p0, Lcom/amap/api/mapcore/util/q;->c:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 93
    monitor-exit v1

    .line 106
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 96
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 98
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 100
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/m;

    .line 101
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/m;->b()V

    goto :goto_1

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 103
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 104
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public a(Lcom/amap/api/mapcore/util/p;)V
    .locals 3

    .prologue
    .line 113
    iget-object v1, p0, Lcom/amap/api/mapcore/util/q;->c:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Ljava/util/LinkedHashMap;

    .line 115
    invoke-interface {p1}, Lcom/amap/api/mapcore/util/p;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/m;

    .line 116
    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop task,task  is null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/amap/api/mapcore/util/p;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ag;->b(Ljava/lang/String;)V

    .line 118
    monitor-exit v1

    .line 124
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/m;->b()V

    .line 122
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/amap/api/mapcore/util/p;Landroid/content/Context;Lcom/amap/api/maps/AMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/bl;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->b:Lcom/amap/api/mapcore/util/du;

    if-nez v0, :cond_0

    .line 137
    const-string v0, "threadpool is null "

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ag;->b(Ljava/lang/String;)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/amap/api/mapcore/util/p;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    new-instance v0, Lcom/amap/api/mapcore/util/m;

    .line 142
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1, p3}, Lcom/amap/api/mapcore/util/m;-><init>(Lcom/amap/api/mapcore/util/p;Landroid/content/Context;Lcom/amap/api/maps/AMap;)V

    .line 144
    iget-object v1, p0, Lcom/amap/api/mapcore/util/q;->c:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 145
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tasks put task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/amap/api/mapcore/util/p;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/mapcore/util/ag;->b(Ljava/lang/String;)V

    .line 146
    iget-object v2, p0, Lcom/amap/api/mapcore/util/q;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/amap/api/mapcore/util/p;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/q;->b:Lcom/amap/api/mapcore/util/du;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/amap/api/mapcore/util/p;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/dv;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/du;->a(Lcom/amap/api/mapcore/util/dv;)V

    .line 151
    return-void

    .line 147
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/q;->a()V

    .line 155
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->b:Lcom/amap/api/mapcore/util/du;

    invoke-static {}, Lcom/amap/api/mapcore/util/du;->a()V

    .line 156
    iput-object v1, p0, Lcom/amap/api/mapcore/util/q;->b:Lcom/amap/api/mapcore/util/du;

    .line 157
    sput-object v1, Lcom/amap/api/mapcore/util/q;->a:Lcom/amap/api/mapcore/util/q;

    .line 158
    return-void
.end method

.method public b(Lcom/amap/api/mapcore/util/p;)V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Ljava/util/LinkedHashMap;

    .line 166
    invoke-interface {p1}, Lcom/amap/api/mapcore/util/p;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/m;

    .line 168
    if-eqz v0, :cond_0

    .line 169
    iget-object v1, p0, Lcom/amap/api/mapcore/util/q;->c:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 170
    :try_start_0
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/m;->c()V

    .line 171
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/amap/api/mapcore/util/p;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "task finish remove task"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/amap/api/mapcore/util/p;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ag;->b(Ljava/lang/String;)V

    .line 181
    :goto_0
    return-void

    .line 172
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "task finish : by stop  had been removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 178
    invoke-interface {p1}, Lcom/amap/api/mapcore/util/p;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-static {v0}, Lcom/amap/api/mapcore/util/ag;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
