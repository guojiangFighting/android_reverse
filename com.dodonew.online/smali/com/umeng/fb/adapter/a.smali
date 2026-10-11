.class public Lcom/umeng/fb/adapter/a;
.super Landroid/widget/BaseAdapter;
.source "ReplyListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/fb/adapter/a$c;,
        Lcom/umeng/fb/adapter/a$a;,
        Lcom/umeng/fb/adapter/a$d;,
        Lcom/umeng/fb/adapter/a$b;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field private static o:Landroid/os/Handler;


# instance fields
.field private final c:Ljava/lang/String;

.field private d:Landroid/view/LayoutInflater;

.field private e:Landroid/graphics/drawable/AnimationDrawable;

.field private f:Lcom/umeng/fb/model/Conversation;

.field private g:Landroid/content/Context;

.field private h:Lcom/umeng/fb/audio/AudioAgent;

.field private i:Lcom/umeng/fb/image/a;

.field private j:Landroid/app/Dialog;

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/umeng/fb/model/Conversation;)V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 46
    const-class v0, Lcom/umeng/fb/adapter/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/fb/adapter/a;->c:Ljava/lang/String;

    .line 57
    const/4 v0, 0x3

    iput v0, p0, Lcom/umeng/fb/adapter/a;->k:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/fb/adapter/a;->l:I

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/umeng/fb/adapter/a;->m:I

    .line 60
    const/4 v0, 0x2

    iput v0, p0, Lcom/umeng/fb/adapter/a;->n:I

    .line 63
    iput-object p1, p0, Lcom/umeng/fb/adapter/a;->g:Landroid/content/Context;

    .line 64
    iget-object v0, p0, Lcom/umeng/fb/adapter/a;->g:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/fb/adapter/a;->d:Landroid/view/LayoutInflater;

    .line 65
    invoke-static {}, Lcom/umeng/fb/image/a;->a()Lcom/umeng/fb/image/a;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/fb/adapter/a;->i:Lcom/umeng/fb/image/a;

    .line 66
    invoke-direct {p0}, Lcom/umeng/fb/adapter/a;->b()V

    .line 67
    iput-object p2, p0, Lcom/umeng/fb/adapter/a;->f:Lcom/umeng/fb/model/Conversation;

    .line 68
    iget-object v0, p0, Lcom/umeng/fb/adapter/a;->f:Lcom/umeng/fb/model/Conversation;

    new-instance v1, Lcom/umeng/fb/adapter/a$1;

    invoke-direct {v1, p0}, Lcom/umeng/fb/adapter/a$1;-><init>(Lcom/umeng/fb/adapter/a;)V

    invoke-virtual {v0, v1}, Lcom/umeng/fb/model/Conversation;->setOnChangeListener(Lcom/umeng/fb/model/Conversation$OnChangeListener;)V

    .line 74
    return-void
.end method

.method private a(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 364
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 365
    const-string v0, "window"

    .line 366
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    check-cast v0, Landroid/view/WindowManager;

    .line 367
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 368
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, v2, :cond_0

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_0
    return v0

    :cond_0
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0
.end method

.method private a(Landroid/content/Context;I)I
    .locals 8

    .prologue
    const-wide v6, 0x3fe6666666666666L    # 0.7

    .line 348
    invoke-direct {p0, p1}, Lcom/umeng/fb/adapter/a;->a(Landroid/content/Context;)I

    move-result v1

    .line 349
    const/16 v0, 0x64

    .line 350
    mul-int v2, p2, v1

    div-int/lit8 v2, v2, 0x50

    add-int/2addr v0, v2

    .line 351
    int-to-double v2, v0

    int-to-double v4, v1

    mul-double/2addr v4, v6

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 352
    int-to-double v0, v1

    mul-double/2addr v0, v6

    double-to-int v0, v0

    .line 354
    :cond_0
    return v0
.end method

.method static synthetic a(Lcom/umeng/fb/adapter/a;Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/umeng/fb/adapter/a;->a(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/umeng/fb/adapter/a;Landroid/content/Context;I)I
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/umeng/fb/adapter/a;->a(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/umeng/fb/adapter/a;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/umeng/fb/adapter/a;->e:Landroid/graphics/drawable/AnimationDrawable;

    return-object p1
.end method

.method public static a()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 372
    sget-object v0, Lcom/umeng/fb/adapter/a;->o:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/fb/adapter/a;Lcom/umeng/fb/audio/AudioAgent;)Lcom/umeng/fb/audio/AudioAgent;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/umeng/fb/adapter/a;->h:Lcom/umeng/fb/audio/AudioAgent;

    return-object p1
.end method

.method static synthetic a(Lcom/umeng/fb/adapter/a;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/umeng/fb/adapter/a;->c()V

    return-void
.end method

.method static synthetic a(Lcom/umeng/fb/adapter/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/umeng/fb/adapter/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 377
    iget-object v0, p0, Lcom/umeng/fb/adapter/a;->j:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 378
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/umeng/fb/adapter/a;->g:Landroid/content/Context;

    const v2, 0x1030007

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/umeng/fb/adapter/a;->j:Landroid/app/Dialog;

    .line 379
    iget-object v0, p0, Lcom/umeng/fb/adapter/a;->j:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/umeng/fb/adapter/a;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/fb/res/f;->m(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 380
    iget-object v0, p0, Lcom/umeng/fb/adapter/a;->j:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/fb/adapter/a;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/fb/res/h;->b(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/umeng/fb/adapter/a;->j:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/umeng/fb/adapter/a;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/fb/res/e;->C(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 384
    iget-object v1, p0, Lcom/umeng/fb/adapter/a;->g:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/umeng/fb/util/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 385
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 386
    iget-object v1, p0, Lcom/umeng/fb/adapter/a;->j:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 387
    new-instance v1, Lcom/umeng/fb/adapter/a$3;

    invoke-direct {v1, p0}, Lcom/umeng/fb/adapter/a$3;-><init>(Lcom/umeng/fb/adapter/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    return-void
.end method

.method static synthetic b(Lcom/umeng/fb/adapter/a;)Lcom/umeng/fb/audio/AudioAgent;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/umeng/fb/adapter/a;->h:Lcom/umeng/fb/audio/AudioAgent;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 176
    new-instance v0, Lcom/umeng/fb/adapter/a$2;

    invoke-direct {v0, p0}, Lcom/umeng/fb/adapter/a$2;-><init>(Lcom/umeng/fb/adapter/a;)V

    sput-object v0, Lcom/umeng/fb/adapter/a;->o:Landroid/os/Handler;

    .line 191
    return-void
.end method

.method static synthetic c(Lcom/umeng/fb/adapter/a;)Lcom/umeng/fb/model/Conversation;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/umeng/fb/adapter/a;->f:Lcom/umeng/fb/model/Conversation;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/umeng/fb/adapter/a;->e:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/umeng/fb/adapter/a;->e:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/umeng/fb/adapter/a;->e:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 197
    iget-object v0, p0, Lcom/umeng/fb/adapter/a;->e:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    .line 200
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/umeng/fb/adapter/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/umeng/fb/adapter/a;->g:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/umeng/fb/adapter/a;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/umeng/fb/adapter/a;->e:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic f(Lcom/umeng/fb/adapter/a;)Lcom/umeng/fb/image/a;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/umeng/fb/adapter/a;->i:Lcom/umeng/fb/image/a;

    return-object v0
.end method

.method static synthetic g(Lcom/umeng/fb/adapter/a;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/umeng/fb/adapter/a;->j:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/umeng/fb/adapter/a;->f:Lcom/umeng/fb/model/Conversation;

    invoke-virtual {v0}, Lcom/umeng/fb/model/Conversation;->getReplyList()Ljava/util/List;

    move-result-object v0

    .line 79
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/umeng/fb/adapter/a;->f:Lcom/umeng/fb/model/Conversation;

    invoke-virtual {v0}, Lcom/umeng/fb/model/Conversation;->getReplyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 152
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/umeng/fb/adapter/a;->f:Lcom/umeng/fb/model/Conversation;

    invoke-virtual {v0}, Lcom/umeng/fb/model/Conversation;->getReplyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/fb/model/Reply;

    .line 163
    const-string v1, "text_reply"

    iget-object v2, v0, Lcom/umeng/fb/model/Reply;->content_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 168
    :goto_0
    return v0

    .line 165
    :cond_0
    const-string v1, "audio_reply"

    iget-object v0, v0, Lcom/umeng/fb/model/Reply;->content_type:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    const/4 v0, 0x1

    goto :goto_0

    .line 168
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 90
    .line 91
    iget-object v0, p0, Lcom/umeng/fb/adapter/a;->f:Lcom/umeng/fb/model/Conversation;

    invoke-virtual {v0}, Lcom/umeng/fb/model/Conversation;->getReplyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/fb/model/Reply;

    .line 93
    if-nez p2, :cond_3

    .line 94
    const-string v1, "text_reply"

    iget-object v2, v0, Lcom/umeng/fb/model/Reply;->content_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/umeng/fb/adapter/a;->d:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/umeng/fb/adapter/a;->g:Landroid/content/Context;

    .line 96
    invoke-static {v2}, Lcom/umeng/fb/res/f;->b(Landroid/content/Context;)I

    move-result v2

    .line 95
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 97
    new-instance v1, Lcom/umeng/fb/adapter/a$d;

    invoke-direct {v1, p0, v3}, Lcom/umeng/fb/adapter/a$d;-><init>(Lcom/umeng/fb/adapter/a;Lcom/umeng/fb/adapter/a$1;)V

    .line 98
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 99
    invoke-virtual {v1, p2}, Lcom/umeng/fb/adapter/a$b;->a(Landroid/view/View;)V

    move-object v2, v1

    .line 118
    :goto_0
    invoke-virtual {v2, v0}, Lcom/umeng/fb/adapter/a$b;->a(Lcom/umeng/fb/model/Reply;)V

    .line 120
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0}, Lcom/umeng/fb/adapter/a;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 122
    iget-object v1, p0, Lcom/umeng/fb/adapter/a;->f:Lcom/umeng/fb/model/Conversation;

    invoke-virtual {v1}, Lcom/umeng/fb/model/Conversation;->getReplyList()Ljava/util/List;

    move-result-object v1

    add-int/lit8 v3, p1, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/fb/model/Reply;

    .line 123
    const-string v3, "new_feedback"

    iget-object v6, v0, Lcom/umeng/fb/model/Reply;->type:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "user_reply"

    iget-object v6, v1, Lcom/umeng/fb/model/Reply;->type:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    .line 124
    :goto_1
    iget-object v1, v1, Lcom/umeng/fb/model/Reply;->type:Ljava/lang/String;

    iget-object v0, v0, Lcom/umeng/fb/model/Reply;->type:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v3

    .line 125
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0}, Lcom/umeng/fb/adapter/a;->getCount()I

    move-result v3

    if-ne v1, v3, :cond_5

    :goto_2
    or-int/2addr v0, v4

    .line 126
    if-eqz v0, :cond_0

    .line 127
    iget-object v0, v2, Lcom/umeng/fb/adapter/a$b;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    :cond_0
    return-object p2

    .line 101
    :cond_1
    const-string v1, "audio_reply"

    iget-object v2, v0, Lcom/umeng/fb/model/Reply;->content_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    iget-object v1, p0, Lcom/umeng/fb/adapter/a;->d:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/umeng/fb/adapter/a;->g:Landroid/content/Context;

    .line 103
    invoke-static {v2}, Lcom/umeng/fb/res/f;->c(Landroid/content/Context;)I

    move-result v2

    .line 102
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 104
    new-instance v1, Lcom/umeng/fb/adapter/a$a;

    invoke-direct {v1, p0, v3}, Lcom/umeng/fb/adapter/a$a;-><init>(Lcom/umeng/fb/adapter/a;Lcom/umeng/fb/adapter/a$1;)V

    .line 105
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 106
    invoke-virtual {v1, p2}, Lcom/umeng/fb/adapter/a$b;->a(Landroid/view/View;)V

    move-object v2, v1

    goto :goto_0

    .line 108
    :cond_2
    iget-object v1, p0, Lcom/umeng/fb/adapter/a;->d:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/umeng/fb/adapter/a;->g:Landroid/content/Context;

    .line 109
    invoke-static {v2}, Lcom/umeng/fb/res/f;->d(Landroid/content/Context;)I

    move-result v2

    .line 108
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 110
    new-instance v1, Lcom/umeng/fb/adapter/a$c;

    invoke-direct {v1, p0, v3}, Lcom/umeng/fb/adapter/a$c;-><init>(Lcom/umeng/fb/adapter/a;Lcom/umeng/fb/adapter/a$1;)V

    .line 111
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 112
    invoke-virtual {v1, p2}, Lcom/umeng/fb/adapter/a$b;->a(Landroid/view/View;)V

    move-object v2, v1

    goto/16 :goto_0

    .line 115
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/fb/adapter/a$b;

    move-object v2, v1

    goto/16 :goto_0

    :cond_4
    move v3, v5

    .line 123
    goto :goto_1

    :cond_5
    move v4, v5

    .line 125
    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x3

    return v0
.end method
