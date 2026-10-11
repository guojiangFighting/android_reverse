.class public final Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;
.super Ljava/lang/Object;
.source "YoYo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/swipelayout/YoYo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnimationComposer"
.end annotation


# instance fields
.field private animator:Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;

.field private callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nineoldandroids/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private delay:J

.field private duration:J

.field private interpolator:Landroid/view/animation/Interpolator;

.field private target:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;)V
    .locals 2
    .param p1, "animator"    # Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;->callbacks:Ljava/util/List;

    .line 85
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;->duration:J

    .line 86
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;->delay:J

    .line 95
    iput-object p1, p0, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;->animator:Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;

    .line 96
    return-void
.end method

.method synthetic constructor <init>(Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;Lcom/dodonew/online/widget/swipelayout/YoYo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;
    .param p2, "x1"    # Lcom/dodonew/online/widget/swipelayout/YoYo$1;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;-><init>(Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;)V

    return-void
.end method

.method private constructor <init>(Lcom/dodonew/online/widget/swipelayout/Techniques;)V
    .locals 2
    .param p1, "techniques"    # Lcom/dodonew/online/widget/swipelayout/Techniques;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;->callbacks:Ljava/util/List;

    .line 85
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;->duration:J

    .line 86
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;->delay:J

    .line 91
    invoke-virtual {p1}, Lcom/dodonew/online/widget/swipelayout/Techniques;->getAnimator()Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;->animator:Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;

    .line 92
    return-void
.end method

.method synthetic constructor <init>(Lcom/dodonew/online/widget/swipelayout/Techniques;Lcom/dodonew/online/widget/swipelayout/YoYo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dodonew/online/widget/swipelayout/Techniques;
    .param p2, "x1"    # Lcom/dodonew/online/widget/swipelayout/YoYo$1;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;-><init>(Lcom/dodonew/online/widget/swipelayout/Techniques;)V

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;)Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;->animator:Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;)J
    .locals 2
    .param p0, "x0"    # Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;->duration:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;)J
    .locals 2
    .param p0, "x0"    # Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;->delay:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;->interpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;->callbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;->target:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public delay(J)Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 104
    iput-wide p1, p0, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;->delay:J

    .line 105
    return-object p0
.end method

.method public duration(J)Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 99
    iput-wide p1, p0, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;->duration:J

    .line 100
    return-object p0
.end method

.method public interpolate(Landroid/view/animation/Interpolator;)Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;->interpolator:Landroid/view/animation/Interpolator;

    .line 110
    return-object p0
.end method

.method public onCancel(Lcom/dodonew/online/widget/swipelayout/YoYo$AnimatorCallback;)Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;
    .locals 2
    .param p1, "callback"    # Lcom/dodonew/online/widget/swipelayout/YoYo$AnimatorCallback;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;->callbacks:Ljava/util/List;

    new-instance v1, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer$3;

    invoke-direct {v1, p0, p1}, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer$3;-><init>(Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;Lcom/dodonew/online/widget/swipelayout/YoYo$AnimatorCallback;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    return-object p0
.end method

.method public onEnd(Lcom/dodonew/online/widget/swipelayout/YoYo$AnimatorCallback;)Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;
    .locals 2
    .param p1, "callback"    # Lcom/dodonew/online/widget/swipelayout/YoYo$AnimatorCallback;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;->callbacks:Ljava/util/List;

    new-instance v1, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer$2;

    invoke-direct {v1, p0, p1}, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer$2;-><init>(Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;Lcom/dodonew/online/widget/swipelayout/YoYo$AnimatorCallback;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    return-object p0
.end method

.method public onRepeat(Lcom/dodonew/online/widget/swipelayout/YoYo$AnimatorCallback;)Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;
    .locals 2
    .param p1, "callback"    # Lcom/dodonew/online/widget/swipelayout/YoYo$AnimatorCallback;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;->callbacks:Ljava/util/List;

    new-instance v1, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer$4;

    invoke-direct {v1, p0, p1}, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer$4;-><init>(Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;Lcom/dodonew/online/widget/swipelayout/YoYo$AnimatorCallback;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    return-object p0
.end method

.method public onStart(Lcom/dodonew/online/widget/swipelayout/YoYo$AnimatorCallback;)Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;
    .locals 2
    .param p1, "callback"    # Lcom/dodonew/online/widget/swipelayout/YoYo$AnimatorCallback;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;->callbacks:Ljava/util/List;

    new-instance v1, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer$1;

    invoke-direct {v1, p0, p1}, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer$1;-><init>(Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;Lcom/dodonew/online/widget/swipelayout/YoYo$AnimatorCallback;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    return-object p0
.end method

.method public playOn(Landroid/view/View;)Lcom/dodonew/online/widget/swipelayout/YoYo$YoYoString;
    .locals 4
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 152
    iput-object p1, p0, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;->target:Landroid/view/View;

    .line 153
    new-instance v0, Lcom/dodonew/online/widget/swipelayout/YoYo$YoYoString;

    new-instance v1, Lcom/dodonew/online/widget/swipelayout/YoYo;

    invoke-direct {v1, p0, v3}, Lcom/dodonew/online/widget/swipelayout/YoYo;-><init>(Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;Lcom/dodonew/online/widget/swipelayout/YoYo$1;)V

    invoke-static {v1}, Lcom/dodonew/online/widget/swipelayout/YoYo;->access$1000(Lcom/dodonew/online/widget/swipelayout/YoYo;)Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;->target:Landroid/view/View;

    invoke-direct {v0, v1, v2, v3}, Lcom/dodonew/online/widget/swipelayout/YoYo$YoYoString;-><init>(Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;Landroid/view/View;Lcom/dodonew/online/widget/swipelayout/YoYo$1;)V

    return-object v0
.end method

.method public withListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;
    .locals 1
    .param p1, "listener"    # Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    return-object p0
.end method
