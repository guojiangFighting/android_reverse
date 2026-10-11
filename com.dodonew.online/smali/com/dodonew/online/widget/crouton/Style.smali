.class public Lcom/dodonew/online/widget/crouton/Style;
.super Ljava/lang/Object;
.source "Style.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/crouton/Style$Builder;
    }
.end annotation


# static fields
.field public static final ALERT:Lcom/dodonew/online/widget/crouton/Style;

.field public static final CONFIRM:Lcom/dodonew/online/widget/crouton/Style;

.field public static final INFO:Lcom/dodonew/online/widget/crouton/Style;

.field public static final NOT_SET:I = -0x1

.field public static final holoBlueLight:I = -0xcc4a1b

.field public static final holoGreenLight:I = -0x663400

.field public static final holoRedLight:I = -0xbbbc


# instance fields
.field final backgroundColorResourceId:I

.field final backgroundColorValue:I

.field final backgroundDrawableResourceId:I

.field final configuration:Lcom/dodonew/online/widget/crouton/Configuration;

.field final fontName:Ljava/lang/String;

.field final fontNameResId:I

.field final gravity:I

.field final heightDimensionResId:I

.field final heightInPixels:I

.field final imageDrawable:Landroid/graphics/drawable/Drawable;

.field final imageResId:I

.field final imageScaleType:Landroid/widget/ImageView$ScaleType;

.field final isTileEnabled:Z

.field final paddingDimensionResId:I

.field final paddingInPixels:I

.field final textAppearanceResId:I

.field final textColorResourceId:I

.field final textColorValue:I

.field final textShadowColorResId:I

.field final textShadowDx:F

.field final textShadowDy:F

.field final textShadowRadius:F

.field final textSize:I

.field final widthDimensionResId:I

.field final widthInPixels:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/dodonew/online/widget/crouton/Style$Builder;

    invoke-direct {v0}, Lcom/dodonew/online/widget/crouton/Style$Builder;-><init>()V

    const v1, -0xbbbc

    .line 43
    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/crouton/Style$Builder;->setBackgroundColorValue(I)Lcom/dodonew/online/widget/crouton/Style$Builder;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/dodonew/online/widget/crouton/Style$Builder;->build()Lcom/dodonew/online/widget/crouton/Style;

    move-result-object v0

    sput-object v0, Lcom/dodonew/online/widget/crouton/Style;->ALERT:Lcom/dodonew/online/widget/crouton/Style;

    .line 45
    new-instance v0, Lcom/dodonew/online/widget/crouton/Style$Builder;

    invoke-direct {v0}, Lcom/dodonew/online/widget/crouton/Style$Builder;-><init>()V

    const v1, -0x663400

    .line 46
    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/crouton/Style$Builder;->setBackgroundColorValue(I)Lcom/dodonew/online/widget/crouton/Style$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/dodonew/online/widget/crouton/Style$Builder;->build()Lcom/dodonew/online/widget/crouton/Style;

    move-result-object v0

    sput-object v0, Lcom/dodonew/online/widget/crouton/Style;->CONFIRM:Lcom/dodonew/online/widget/crouton/Style;

    .line 48
    new-instance v0, Lcom/dodonew/online/widget/crouton/Style$Builder;

    invoke-direct {v0}, Lcom/dodonew/online/widget/crouton/Style$Builder;-><init>()V

    const v1, -0xcc4a1b

    .line 49
    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/crouton/Style$Builder;->setBackgroundColorValue(I)Lcom/dodonew/online/widget/crouton/Style$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/dodonew/online/widget/crouton/Style$Builder;->build()Lcom/dodonew/online/widget/crouton/Style;

    move-result-object v0

    sput-object v0, Lcom/dodonew/online/widget/crouton/Style;->INFO:Lcom/dodonew/online/widget/crouton/Style;

    .line 51
    return-void
.end method

.method private constructor <init>(Lcom/dodonew/online/widget/crouton/Style$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/dodonew/online/widget/crouton/Style$Builder;

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    invoke-static {p1}, Lcom/dodonew/online/widget/crouton/Style$Builder;->access$000(Lcom/dodonew/online/widget/crouton/Style$Builder;)Lcom/dodonew/online/widget/crouton/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/widget/crouton/Style;->configuration:Lcom/dodonew/online/widget/crouton/Configuration;

    .line 157
    invoke-static {p1}, Lcom/dodonew/online/widget/crouton/Style$Builder;->access$100(Lcom/dodonew/online/widget/crouton/Style$Builder;)I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/crouton/Style;->backgroundColorResourceId:I

    .line 158
    invoke-static {p1}, Lcom/dodonew/online/widget/crouton/Style$Builder;->access$200(Lcom/dodonew/online/widget/crouton/Style$Builder;)I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/crouton/Style;->backgroundDrawableResourceId:I

    .line 159
    invoke-static {p1}, Lcom/dodonew/online/widget/crouton/Style$Builder;->access$300(Lcom/dodonew/online/widget/crouton/Style$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dodonew/online/widget/crouton/Style;->isTileEnabled:Z

    .line 160
    invoke-static {p1}, Lcom/dodonew/online/widget/crouton/Style$Builder;->access$400(Lcom/dodonew/online/widget/crouton/Style$Builder;)I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/crouton/Style;->textColorResourceId:I

    .line 161
    invoke-static {p1}, Lcom/dodonew/online/widget/crouton/Style$Builder;->access$500(Lcom/dodonew/online/widget/crouton/Style$Builder;)I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/crouton/Style;->textColorValue:I

    .line 162
    invoke-static {p1}, Lcom/dodonew/online/widget/crouton/Style$Builder;->access$600(Lcom/dodonew/online/widget/crouton/Style$Builder;)I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/crouton/Style;->heightInPixels:I

    .line 163
    invoke-static {p1}, Lcom/dodonew/online/widget/crouton/Style$Builder;->access$700(Lcom/dodonew/online/widget/crouton/Style$Builder;)I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/crouton/Style;->heightDimensionResId:I

    .line 164
    invoke-static {p1}, Lcom/dodonew/online/widget/crouton/Style$Builder;->access$800(Lcom/dodonew/online/widget/crouton/Style$Builder;)I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/crouton/Style;->widthInPixels:I

    .line 165
    invoke-static {p1}, Lcom/dodonew/online/widget/crouton/Style$Builder;->access$900(Lcom/dodonew/online/widget/crouton/Style$Builder;)I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/crouton/Style;->widthDimensionResId:I

    .line 166
    invoke-static {p1}, Lcom/dodonew/online/widget/crouton/Style$Builder;->access$1000(Lcom/dodonew/online/widget/crouton/Style$Builder;)I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/crouton/Style;->gravity:I

    .line 167
    invoke-static {p1}, Lcom/dodonew/online/widget/crouton/Style$Builder;->access$1100(Lcom/dodonew/online/widget/crouton/Style$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/widget/crouton/Style;->imageDrawable:Landroid/graphics/drawable/Drawable;

    .line 168
    invoke-static {p1}, Lcom/dodonew/online/widget/crouton/Style$Builder;->access$1200(Lcom/dodonew/online/widget/crouton/Style$Builder;)I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/crouton/Style;->textSize:I

    .line 169
    invoke-static {p1}, Lcom/dodonew/online/widget/crouton/Style$Builder;->access$1300(Lcom/dodonew/online/widget/crouton/Style$Builder;)I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/crouton/Style;->textShadowColorResId:I

    .line 170
    invoke-static {p1}, Lcom/dodonew/online/widget/crouton/Style$Builder;->access$1400(Lcom/dodonew/online/widget/crouton/Style$Builder;)F

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/crouton/Style;->textShadowRadius:F

    .line 171
    invoke-static {p1}, Lcom/dodonew/online/widget/crouton/Style$Builder;->access$1500(Lcom/dodonew/online/widget/crouton/Style$Builder;)F

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/crouton/Style;->textShadowDx:F

    .line 172
    invoke-static {p1}, Lcom/dodonew/online/widget/crouton/Style$Builder;->access$1600(Lcom/dodonew/online/widget/crouton/Style$Builder;)F

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/crouton/Style;->textShadowDy:F

    .line 173
    invoke-static {p1}, Lcom/dodonew/online/widget/crouton/Style$Builder;->access$1700(Lcom/dodonew/online/widget/crouton/Style$Builder;)I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/crouton/Style;->textAppearanceResId:I

    .line 174
    invoke-static {p1}, Lcom/dodonew/online/widget/crouton/Style$Builder;->access$1800(Lcom/dodonew/online/widget/crouton/Style$Builder;)I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/crouton/Style;->imageResId:I

    .line 175
    invoke-static {p1}, Lcom/dodonew/online/widget/crouton/Style$Builder;->access$1900(Lcom/dodonew/online/widget/crouton/Style$Builder;)Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/widget/crouton/Style;->imageScaleType:Landroid/widget/ImageView$ScaleType;

    .line 176
    invoke-static {p1}, Lcom/dodonew/online/widget/crouton/Style$Builder;->access$2000(Lcom/dodonew/online/widget/crouton/Style$Builder;)I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/crouton/Style;->paddingInPixels:I

    .line 177
    invoke-static {p1}, Lcom/dodonew/online/widget/crouton/Style$Builder;->access$2100(Lcom/dodonew/online/widget/crouton/Style$Builder;)I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/crouton/Style;->paddingDimensionResId:I

    .line 178
    invoke-static {p1}, Lcom/dodonew/online/widget/crouton/Style$Builder;->access$2200(Lcom/dodonew/online/widget/crouton/Style$Builder;)I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/crouton/Style;->backgroundColorValue:I

    .line 179
    invoke-static {p1}, Lcom/dodonew/online/widget/crouton/Style$Builder;->access$2300(Lcom/dodonew/online/widget/crouton/Style$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/widget/crouton/Style;->fontName:Ljava/lang/String;

    .line 180
    invoke-static {p1}, Lcom/dodonew/online/widget/crouton/Style$Builder;->access$2400(Lcom/dodonew/online/widget/crouton/Style$Builder;)I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/crouton/Style;->fontNameResId:I

    .line 181
    return-void
.end method

.method synthetic constructor <init>(Lcom/dodonew/online/widget/crouton/Style$Builder;Lcom/dodonew/online/widget/crouton/Style$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dodonew/online/widget/crouton/Style$Builder;
    .param p2, "x1"    # Lcom/dodonew/online/widget/crouton/Style$1;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/crouton/Style;-><init>(Lcom/dodonew/online/widget/crouton/Style$Builder;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Style{configuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/widget/crouton/Style;->configuration:Lcom/dodonew/online/widget/crouton/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", backgroundColorResourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dodonew/online/widget/crouton/Style;->backgroundColorResourceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", backgroundDrawableResourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dodonew/online/widget/crouton/Style;->backgroundDrawableResourceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", backgroundColorValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dodonew/online/widget/crouton/Style;->backgroundColorValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isTileEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dodonew/online/widget/crouton/Style;->isTileEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", textColorResourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dodonew/online/widget/crouton/Style;->textColorResourceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", textColorValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dodonew/online/widget/crouton/Style;->textColorValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", heightInPixels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dodonew/online/widget/crouton/Style;->heightInPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", heightDimensionResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dodonew/online/widget/crouton/Style;->heightDimensionResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", widthInPixels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dodonew/online/widget/crouton/Style;->widthInPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", widthDimensionResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dodonew/online/widget/crouton/Style;->widthDimensionResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gravity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dodonew/online/widget/crouton/Style;->gravity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageDrawable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/widget/crouton/Style;->imageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dodonew/online/widget/crouton/Style;->imageResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageScaleType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/widget/crouton/Style;->imageScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", textSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dodonew/online/widget/crouton/Style;->textSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", textShadowColorResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dodonew/online/widget/crouton/Style;->textShadowColorResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", textShadowRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dodonew/online/widget/crouton/Style;->textShadowRadius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", textShadowDy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dodonew/online/widget/crouton/Style;->textShadowDy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", textShadowDx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dodonew/online/widget/crouton/Style;->textShadowDx:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", textAppearanceResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dodonew/online/widget/crouton/Style;->textAppearanceResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paddingInPixels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dodonew/online/widget/crouton/Style;->paddingInPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paddingDimensionResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dodonew/online/widget/crouton/Style;->paddingDimensionResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fontName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/widget/crouton/Style;->fontName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fontNameResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dodonew/online/widget/crouton/Style;->fontNameResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
