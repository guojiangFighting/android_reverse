.class public Lcom/amap/api/mapcore/bn;
.super Landroid/view/View;
.source "TileOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/bn$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/amap/api/mapcore/ao;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/amap/api/mapcore/bn$a;

.field c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/amap/api/mapcore/bm;

.field private e:Lcom/amap/api/mapcore/aa;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/bn;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    new-instance v0, Lcom/amap/api/mapcore/bn$a;

    invoke-direct {v0}, Lcom/amap/api/mapcore/bn$a;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/bn;->b:Lcom/amap/api/mapcore/bn$a;

    .line 26
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/bn;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/bn;->d:Lcom/amap/api/mapcore/bm;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore/aa;)V
    .locals 3

    .prologue
    const/16 v1, 0x100

    .line 60
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/bn;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    new-instance v0, Lcom/amap/api/mapcore/bn$a;

    invoke-direct {v0}, Lcom/amap/api/mapcore/bn$a;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/bn;->b:Lcom/amap/api/mapcore/bn$a;

    .line 26
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/bn;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/bn;->d:Lcom/amap/api/mapcore/bm;

    .line 61
    iput-object p2, p0, Lcom/amap/api/mapcore/bn;->e:Lcom/amap/api/mapcore/aa;

    .line 62
    new-instance v0, Lcom/amap/api/mapcore/bn$1;

    invoke-direct {v0, p0, v1, v1}, Lcom/amap/api/mapcore/bn$1;-><init>(Lcom/amap/api/mapcore/bn;II)V

    .line 74
    new-instance v1, Lcom/amap/api/maps/model/TileOverlayOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/TileOverlayOptions;-><init>()V

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/TileOverlayOptions;->tileProvider(Lcom/amap/api/maps/model/TileProvider;)Lcom/amap/api/maps/model/TileOverlayOptions;

    move-result-object v0

    .line 75
    new-instance v1, Lcom/amap/api/mapcore/bm;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p0, v2}, Lcom/amap/api/mapcore/bm;-><init>(Lcom/amap/api/maps/model/TileOverlayOptions;Lcom/amap/api/mapcore/bn;Z)V

    iput-object v1, p0, Lcom/amap/api/mapcore/bn;->d:Lcom/amap/api/mapcore/bm;

    .line 76
    return-void
.end method


# virtual methods
.method a()Lcom/amap/api/mapcore/aa;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/amap/api/mapcore/bn;->e:Lcom/amap/api/mapcore/aa;

    return-object v0
.end method

.method public a(Lcom/amap/api/mapcore/ao;)V
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/bn;->b(Lcom/amap/api/mapcore/ao;)Z

    .line 129
    iget-object v0, p0, Lcom/amap/api/mapcore/bn;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-virtual {p0}, Lcom/amap/api/mapcore/bn;->c()V

    .line 131
    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    .prologue
    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/bn;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 85
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/bk;->a(Ljavax/microedition/khronos/opengles/GL10;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    sget-object v1, Lcom/amap/api/mapcore/util/bf;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TileOverLayView draw exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x73

    invoke-static {v1, v0, v2}, Lcom/amap/api/mapcore/util/bf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 98
    :cond_0
    return-void

    .line 87
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/bn;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 88
    iget-object v0, p0, Lcom/amap/api/mapcore/bn;->d:Lcom/amap/api/mapcore/bm;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/bm;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 89
    iget-object v0, p0, Lcom/amap/api/mapcore/bn;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/ao;

    .line 90
    invoke-interface {v0}, Lcom/amap/api/mapcore/ao;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/ao;->a(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/amap/api/mapcore/bn;->d:Lcom/amap/api/mapcore/bm;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/bm;->b(Z)V

    .line 139
    iget-object v0, p0, Lcom/amap/api/mapcore/bn;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/ao;

    .line 140
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amap/api/mapcore/ao;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/ao;->b(Z)V

    goto :goto_0

    .line 144
    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/amap/api/mapcore/bn;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/ao;

    .line 111
    if-eqz v0, :cond_0

    .line 112
    invoke-interface {v0}, Lcom/amap/api/mapcore/ao;->a()V

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/bn;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 116
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/amap/api/mapcore/bn;->d:Lcom/amap/api/mapcore/bm;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/bm;->c(Z)V

    .line 166
    iget-object v0, p0, Lcom/amap/api/mapcore/bn;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/ao;

    .line 167
    if-eqz v0, :cond_0

    .line 168
    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/ao;->c(Z)V

    goto :goto_0

    .line 171
    :cond_1
    return-void
.end method

.method public b(Lcom/amap/api/mapcore/ao;)Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/amap/api/mapcore/bn;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method c()V
    .locals 5

    .prologue
    .line 119
    iget-object v0, p0, Lcom/amap/api/mapcore/bn;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/bn;->b:Lcom/amap/api/mapcore/bn$a;

    invoke-static {v2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 121
    iget-object v0, p0, Lcom/amap/api/mapcore/bn;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 122
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 123
    iget-object v4, p0, Lcom/amap/api/mapcore/bn;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v0, Lcom/amap/api/mapcore/ao;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 125
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/amap/api/mapcore/bn;->d:Lcom/amap/api/mapcore/bm;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/bm;->g()V

    .line 148
    iget-object v0, p0, Lcom/amap/api/mapcore/bn;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/ao;

    .line 149
    if-eqz v0, :cond_0

    .line 150
    invoke-interface {v0}, Lcom/amap/api/mapcore/ao;->g()V

    goto :goto_0

    .line 153
    :cond_1
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/amap/api/mapcore/bn;->d:Lcom/amap/api/mapcore/bm;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/bm;->h()V

    .line 157
    iget-object v0, p0, Lcom/amap/api/mapcore/bn;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/ao;

    .line 158
    if-eqz v0, :cond_0

    .line 159
    invoke-interface {v0}, Lcom/amap/api/mapcore/ao;->h()V

    goto :goto_0

    .line 162
    :cond_1
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/amap/api/mapcore/bn;->d:Lcom/amap/api/mapcore/bm;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/bm;->a()V

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/bn;->d:Lcom/amap/api/mapcore/bm;

    .line 176
    return-void
.end method
