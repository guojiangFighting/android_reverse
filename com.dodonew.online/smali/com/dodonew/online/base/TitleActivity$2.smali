.class Lcom/dodonew/online/base/TitleActivity$2;
.super Ljava/lang/Object;
.source "TitleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/base/TitleActivity;->setNavigationIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/base/TitleActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/base/TitleActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/base/TitleActivity;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/dodonew/online/base/TitleActivity$2;->this$0:Lcom/dodonew/online/base/TitleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dodonew/online/base/TitleActivity$2;->this$0:Lcom/dodonew/online/base/TitleActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/base/TitleActivity;->navigationOnClick()V

    .line 82
    return-void
.end method
