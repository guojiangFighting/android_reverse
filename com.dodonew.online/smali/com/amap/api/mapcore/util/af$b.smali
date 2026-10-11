.class Lcom/amap/api/mapcore/util/af$b;
.super Ljava/lang/Object;
.source "UnZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/af;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/amap/api/mapcore/util/ac;

.field private e:Lcom/amap/api/mapcore/util/af$a;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/af;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/mapcore/util/ac;)V
    .locals 1

    .prologue
    .line 334
    iput-object p1, p0, Lcom/amap/api/mapcore/util/af$b;->a:Lcom/amap/api/mapcore/util/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/af$b;->d:Lcom/amap/api/mapcore/util/ac;

    .line 328
    new-instance v0, Lcom/amap/api/mapcore/util/af$a;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/af$a;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/af$b;->e:Lcom/amap/api/mapcore/util/af$a;

    .line 335
    iput-object p2, p0, Lcom/amap/api/mapcore/util/af$b;->b:Ljava/lang/String;

    .line 336
    iput-object p3, p0, Lcom/amap/api/mapcore/util/af$b;->c:Ljava/lang/String;

    .line 337
    iput-object p4, p0, Lcom/amap/api/mapcore/util/af$b;->d:Lcom/amap/api/mapcore/util/ac;

    .line 338
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/amap/api/mapcore/util/af$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 341
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 343
    iput-object p1, p0, Lcom/amap/api/mapcore/util/af$b;->f:Ljava/lang/String;

    .line 345
    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/amap/api/mapcore/util/af$b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/amap/api/mapcore/util/af$b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/amap/api/mapcore/util/ac;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/amap/api/mapcore/util/af$b;->d:Lcom/amap/api/mapcore/util/ac;

    return-object v0
.end method

.method public e()Lcom/amap/api/mapcore/util/af$a;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/amap/api/mapcore/util/af$b;->e:Lcom/amap/api/mapcore/util/af$a;

    return-object v0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/amap/api/mapcore/util/af$b;->e:Lcom/amap/api/mapcore/util/af$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/mapcore/util/af$a;->a:Z

    .line 369
    return-void
.end method
