.class Lcom/umeng/fb/audio/b$a;
.super Ljava/lang/Object;
.source "RecordTool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/fb/audio/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/fb/audio/b;


# direct methods
.method constructor <init>(Lcom/umeng/fb/audio/b;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/umeng/fb/audio/b$a;->a:Lcom/umeng/fb/audio/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/umeng/fb/audio/b$a;->a:Lcom/umeng/fb/audio/b;

    invoke-static {v0}, Lcom/umeng/fb/audio/b;->a(Lcom/umeng/fb/audio/b;)Landroid/media/AudioRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/umeng/fb/audio/b$a;->a:Lcom/umeng/fb/audio/b;

    invoke-static {v0}, Lcom/umeng/fb/audio/b;->b(Lcom/umeng/fb/audio/b;)V

    .line 100
    :cond_0
    return-void
.end method
