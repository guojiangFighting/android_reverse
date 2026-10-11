.class Lcom/umeng/fb/audio/a;
.super Ljava/lang/Object;
.source "PlayTool.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/media/AudioTrack;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-class v0, Lcom/umeng/fb/audio/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/fb/audio/a;->a:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/umeng/fb/audio/a;->c:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 10

    .prologue
    const/16 v2, 0x3e80

    const/4 v3, 0x4

    const/4 v4, 0x2

    .line 26
    new-instance v7, Ljava/io/File;

    iget-object v0, p0, Lcom/umeng/fb/audio/a;->c:Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-static {v2, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v8

    .line 30
    new-array v9, v8, [B

    .line 31
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    mul-int/lit8 v5, v8, 0x2

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/umeng/fb/audio/a;->b:Landroid/media/AudioTrack;

    .line 35
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 36
    iget-object v1, p0, Lcom/umeng/fb/audio/a;->b:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V

    .line 37
    invoke-virtual {v0, v9}, Ljava/io/FileInputStream;->read([B)I

    .line 38
    :goto_0
    invoke-virtual {v0, v9}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 39
    iget-object v1, p0, Lcom/umeng/fb/audio/a;->b:Landroid/media/AudioTrack;

    const/4 v2, 0x0

    invoke-virtual {v1, v9, v2, v8}, Landroid/media/AudioTrack;->write([BII)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    iget-object v0, p0, Lcom/umeng/fb/audio/a;->a:Ljava/lang/String;

    const-string v1, "Playback Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :goto_1
    return-void

    .line 41
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 42
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 43
    invoke-static {}, Lcom/umeng/fb/adapter/a;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/umeng/fb/audio/a;->b:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/umeng/fb/audio/a;->b:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/fb/audio/a;->b:Landroid/media/AudioTrack;

    .line 55
    :cond_0
    return-void
.end method

.method protected c()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/umeng/fb/audio/a;->b:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
