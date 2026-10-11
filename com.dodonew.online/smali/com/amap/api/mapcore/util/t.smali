.class Lcom/amap/api/mapcore/util/t;
.super Ljava/lang/Object;
.source "DTDownloadInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:I

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore/util/t;->a:Ljava/lang/String;

    .line 5
    iput-wide v2, p0, Lcom/amap/api/mapcore/util/t;->b:J

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/t;->c:I

    .line 8
    iput-wide v2, p0, Lcom/amap/api/mapcore/util/t;->d:J

    .line 9
    iput-wide v2, p0, Lcom/amap/api/mapcore/util/t;->e:J

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore/util/t;->a:Ljava/lang/String;

    .line 5
    iput-wide v2, p0, Lcom/amap/api/mapcore/util/t;->b:J

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/t;->c:I

    .line 8
    iput-wide v2, p0, Lcom/amap/api/mapcore/util/t;->d:J

    .line 9
    iput-wide v2, p0, Lcom/amap/api/mapcore/util/t;->e:J

    .line 18
    iput-object p1, p0, Lcom/amap/api/mapcore/util/t;->a:Ljava/lang/String;

    .line 19
    int-to-long v0, p2

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/t;->b:J

    .line 20
    iput p3, p0, Lcom/amap/api/mapcore/util/t;->c:I

    .line 21
    int-to-long v0, p4

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/t;->d:J

    .line 22
    int-to-long v0, p5

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/t;->e:J

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JIJJ)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore/util/t;->a:Ljava/lang/String;

    .line 5
    iput-wide v2, p0, Lcom/amap/api/mapcore/util/t;->b:J

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/t;->c:I

    .line 8
    iput-wide v2, p0, Lcom/amap/api/mapcore/util/t;->d:J

    .line 9
    iput-wide v2, p0, Lcom/amap/api/mapcore/util/t;->e:J

    .line 28
    iput-object p1, p0, Lcom/amap/api/mapcore/util/t;->a:Ljava/lang/String;

    .line 29
    iput-wide p2, p0, Lcom/amap/api/mapcore/util/t;->b:J

    .line 30
    iput p4, p0, Lcom/amap/api/mapcore/util/t;->c:I

    .line 31
    iput-wide p5, p0, Lcom/amap/api/mapcore/util/t;->d:J

    .line 32
    iput-wide p7, p0, Lcom/amap/api/mapcore/util/t;->e:J

    .line 33
    return-void
.end method


# virtual methods
.method public a(I)J
    .locals 2

    .prologue
    .line 36
    packed-switch p1, :pswitch_data_0

    .line 40
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 38
    :pswitch_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/t;->d()J

    move-result-wide v0

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amap/api/mapcore/util/t;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/t;->b:J

    return-wide v0
.end method

.method public b(I)J
    .locals 2

    .prologue
    .line 45
    packed-switch p1, :pswitch_data_0

    .line 49
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 47
    :pswitch_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/t;->e()J

    move-result-wide v0

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public c()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/amap/api/mapcore/util/t;->c:I

    return v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/t;->d:J

    return-wide v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/t;->e:J

    return-wide v0
.end method
