.class Lcom/dodonew/online/widget/PinnedSectionListView$3;
.super Ljava/lang/Object;
.source "PinnedSectionListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/PinnedSectionListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/PinnedSectionListView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/PinnedSectionListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/PinnedSectionListView;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/dodonew/online/widget/PinnedSectionListView$3;->this$0:Lcom/dodonew/online/widget/PinnedSectionListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/dodonew/online/widget/PinnedSectionListView$3;->this$0:Lcom/dodonew/online/widget/PinnedSectionListView;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/PinnedSectionListView;->recreatePinnedShadow()V

    .line 348
    return-void
.end method
