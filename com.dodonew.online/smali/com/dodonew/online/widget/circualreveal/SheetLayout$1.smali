.class Lcom/dodonew/online/widget/circualreveal/SheetLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SheetLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/circualreveal/SheetLayout;->expandLollipop(IIFF)V
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
    .line 230
    iput-object p1, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout$1;->this$0:Lcom/dodonew/online/widget/circualreveal/SheetLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 239
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 240
    iget-object v0, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout$1;->this$0:Lcom/dodonew/online/widget/circualreveal/SheetLayout;

    invoke-static {v0}, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->access$100(Lcom/dodonew/online/widget/circualreveal/SheetLayout;)V

    .line 242
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 233
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 234
    iget-object v0, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout$1;->this$0:Lcom/dodonew/online/widget/circualreveal/SheetLayout;

    invoke-static {v0}, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->access$000(Lcom/dodonew/online/widget/circualreveal/SheetLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 235
    return-void
.end method
