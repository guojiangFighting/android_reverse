.class public final enum Lcn/sharesdk/login/UserInfo$Gender;
.super Ljava/lang/Enum;
.source "UserInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/login/UserInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gender"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/sharesdk/login/UserInfo$Gender;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/sharesdk/login/UserInfo$Gender;

.field public static final enum FEMALE:Lcn/sharesdk/login/UserInfo$Gender;

.field public static final enum MALE:Lcn/sharesdk/login/UserInfo$Gender;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcn/sharesdk/login/UserInfo$Gender;

    const-string v1, "MALE"

    invoke-direct {v0, v1, v2}, Lcn/sharesdk/login/UserInfo$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/login/UserInfo$Gender;->MALE:Lcn/sharesdk/login/UserInfo$Gender;

    new-instance v0, Lcn/sharesdk/login/UserInfo$Gender;

    const-string v1, "FEMALE"

    invoke-direct {v0, v1, v3}, Lcn/sharesdk/login/UserInfo$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/login/UserInfo$Gender;->FEMALE:Lcn/sharesdk/login/UserInfo$Gender;

    const/4 v0, 0x2

    new-array v0, v0, [Lcn/sharesdk/login/UserInfo$Gender;

    sget-object v1, Lcn/sharesdk/login/UserInfo$Gender;->MALE:Lcn/sharesdk/login/UserInfo$Gender;

    aput-object v1, v0, v2

    sget-object v1, Lcn/sharesdk/login/UserInfo$Gender;->FEMALE:Lcn/sharesdk/login/UserInfo$Gender;

    aput-object v1, v0, v3

    sput-object v0, Lcn/sharesdk/login/UserInfo$Gender;->$VALUES:[Lcn/sharesdk/login/UserInfo$Gender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/sharesdk/login/UserInfo$Gender;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lcn/sharesdk/login/UserInfo$Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/login/UserInfo$Gender;

    return-object v0
.end method

.method public static values()[Lcn/sharesdk/login/UserInfo$Gender;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcn/sharesdk/login/UserInfo$Gender;->$VALUES:[Lcn/sharesdk/login/UserInfo$Gender;

    invoke-virtual {v0}, [Lcn/sharesdk/login/UserInfo$Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/sharesdk/login/UserInfo$Gender;

    return-object v0
.end method
