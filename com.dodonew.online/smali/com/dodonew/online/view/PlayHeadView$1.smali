.class Lcom/dodonew/online/view/PlayHeadView$1;
.super Ljava/lang/Object;
.source "PlayHeadView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/view/PlayHeadView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/view/PlayHeadView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/view/PlayHeadView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/view/PlayHeadView;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/dodonew/online/view/PlayHeadView$1;->this$0:Lcom/dodonew/online/view/PlayHeadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dodonew/online/view/PlayHeadView$1;->this$0:Lcom/dodonew/online/view/PlayHeadView;

    invoke-static {v0}, Lcom/dodonew/online/view/PlayHeadView;->access$000(Lcom/dodonew/online/view/PlayHeadView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/dodonew/online/view/PlayHeadView$1;->this$0:Lcom/dodonew/online/view/PlayHeadView;

    iget-object v1, p0, Lcom/dodonew/online/view/PlayHeadView$1;->this$0:Lcom/dodonew/online/view/PlayHeadView;

    invoke-static {v1}, Lcom/dodonew/online/view/PlayHeadView;->access$000(Lcom/dodonew/online/view/PlayHeadView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dodonew/online/view/PlayHeadView;->access$100(Lcom/dodonew/online/view/PlayHeadView;Ljava/lang/String;)V

    .line 88
    :cond_0
    return-void
.end method
