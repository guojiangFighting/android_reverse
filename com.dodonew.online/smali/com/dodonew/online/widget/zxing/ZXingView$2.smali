.class Lcom/dodonew/online/widget/zxing/ZXingView$2;
.super Ljava/lang/Object;
.source "ZXingView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/zxing/ZXingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/zxing/ZXingView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/zxing/ZXingView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/zxing/ZXingView;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/dodonew/online/widget/zxing/ZXingView$2;->this$0:Lcom/dodonew/online/widget/zxing/ZXingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 185
    return-void
.end method
