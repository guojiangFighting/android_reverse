.class Lcom/dodonew/online/widget/circualreveal/SheetLayout$2;
.super Ljava/lang/Object;
.source "SheetLayout.java"

# interfaces
.implements Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/circualreveal/SheetLayout;->expandPreLollipop(IIFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/circualreveal/SheetLayout;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/circualreveal/SheetLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/circualreveal/SheetLayout;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout$2;->this$0:Lcom/dodonew/online/widget/circualreveal/SheetLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel()V
    .locals 0

    .prologue
    .line 270
    return-void
.end method

.method public onAnimationEnd()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout$2;->this$0:Lcom/dodonew/online/widget/circualreveal/SheetLayout;

    invoke-static {v0}, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->access$100(Lcom/dodonew/online/widget/circualreveal/SheetLayout;)V

    .line 265
    return-void
.end method

.method public onAnimationRepeat()V
    .locals 0

    .prologue
    .line 275
    return-void
.end method

.method public onAnimationStart()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout$2;->this$0:Lcom/dodonew/online/widget/circualreveal/SheetLayout;

    invoke-static {v0}, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->access$000(Lcom/dodonew/online/widget/circualreveal/SheetLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 258
    return-void
.end method
