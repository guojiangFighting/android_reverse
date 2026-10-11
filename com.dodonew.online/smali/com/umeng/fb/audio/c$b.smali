.class Lcom/umeng/fb/audio/c$b;
.super Landroid/os/AsyncTask;
.source "TranscodeTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/fb/audio/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/fb/audio/c;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Lcom/umeng/fb/audio/c$c;


# direct methods
.method public constructor <init>(Lcom/umeng/fb/audio/c;Ljava/lang/String;ILcom/umeng/fb/audio/c$c;)V
    .locals 2

    .prologue
    .line 87
    iput-object p1, p0, Lcom/umeng/fb/audio/c$b;->a:Lcom/umeng/fb/audio/c;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/umeng/fb/audio/c;->a(Lcom/umeng/fb/audio/c;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/fb/util/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/fb/audio/c$b;->b:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/umeng/fb/audio/c;->a(Lcom/umeng/fb/audio/c;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/fb/util/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".wav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/fb/audio/c$b;->c:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/umeng/fb/audio/c;->a(Lcom/umeng/fb/audio/c;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/fb/util/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cache.wav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/fb/audio/c$b;->d:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/umeng/fb/audio/c;->a(Lcom/umeng/fb/audio/c;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/fb/util/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".opus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/fb/audio/c$b;->e:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lcom/umeng/fb/audio/c$b;->f:Ljava/lang/String;

    .line 93
    iput p3, p0, Lcom/umeng/fb/audio/c$b;->g:I

    .line 94
    iput-object p4, p0, Lcom/umeng/fb/audio/c$b;->h:Lcom/umeng/fb/audio/c$c;

    .line 95
    invoke-static {p1}, Lcom/umeng/fb/audio/c;->b(Lcom/umeng/fb/audio/c;)I

    .line 96
    invoke-static {p1}, Lcom/umeng/fb/audio/c;->c(Lcom/umeng/fb/audio/c;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeTask create task"

    invoke-static {v0, v1}, Lcom/umeng/fb/util/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 5

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    sget-object v1, Lcom/umeng/fb/audio/c$1;->a:[I

    iget-object v2, p0, Lcom/umeng/fb/audio/c$b;->h:Lcom/umeng/fb/audio/c$c;

    invoke-virtual {v2}, Lcom/umeng/fb/audio/c$c;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 113
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 104
    :pswitch_0
    iget-object v1, p0, Lcom/umeng/fb/audio/c$b;->a:Lcom/umeng/fb/audio/c;

    iget-object v2, p0, Lcom/umeng/fb/audio/c$b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/umeng/fb/audio/c$b;->c:Ljava/lang/String;

    iget v4, p0, Lcom/umeng/fb/audio/c$b;->g:I

    invoke-static {v1, v2, v3, v4}, Lcom/umeng/fb/audio/c;->a(Lcom/umeng/fb/audio/c;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 107
    :pswitch_1
    iget-object v0, p0, Lcom/umeng/fb/audio/c$b;->a:Lcom/umeng/fb/audio/c;

    iget-object v1, p0, Lcom/umeng/fb/audio/c$b;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/fb/audio/c$b;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/umeng/fb/audio/c;->a(Lcom/umeng/fb/audio/c;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 110
    :pswitch_2
    iget-object v0, p0, Lcom/umeng/fb/audio/c$b;->a:Lcom/umeng/fb/audio/c;

    iget-object v1, p0, Lcom/umeng/fb/audio/c$b;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/fb/audio/c$b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/umeng/fb/audio/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 5

    .prologue
    .line 118
    sget-object v0, Lcom/umeng/fb/audio/c$1;->a:[I

    iget-object v1, p0, Lcom/umeng/fb/audio/c$b;->h:Lcom/umeng/fb/audio/c$c;

    invoke-virtual {v1}, Lcom/umeng/fb/audio/c$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 129
    :goto_0
    return-void

    .line 120
    :pswitch_0
    iget-object v0, p0, Lcom/umeng/fb/audio/c$b;->a:Lcom/umeng/fb/audio/c;

    iget-object v1, p0, Lcom/umeng/fb/audio/c$b;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/umeng/fb/audio/c;->a(Lcom/umeng/fb/audio/c;Ljava/lang/String;I)V

    goto :goto_0

    .line 123
    :pswitch_1
    iget-object v0, p0, Lcom/umeng/fb/audio/c$b;->a:Lcom/umeng/fb/audio/c;

    iget-object v1, p0, Lcom/umeng/fb/audio/c$b;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/fb/audio/c$b;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/umeng/fb/audio/c$b;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/umeng/fb/audio/c;->a(Lcom/umeng/fb/audio/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 126
    :pswitch_2
    iget-object v0, p0, Lcom/umeng/fb/audio/c$b;->a:Lcom/umeng/fb/audio/c;

    iget-object v1, p0, Lcom/umeng/fb/audio/c$b;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/umeng/fb/audio/c;->b(Lcom/umeng/fb/audio/c;Ljava/lang/String;I)V

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 78
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/umeng/fb/audio/c$b;->a([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 78
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/umeng/fb/audio/c$b;->a(Ljava/lang/Integer;)V

    return-void
.end method
