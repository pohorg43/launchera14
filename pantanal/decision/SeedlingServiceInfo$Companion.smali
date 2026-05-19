.class public final Lpantanal/decision/SeedlingServiceInfo$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/decision/SeedlingServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lpantanal/decision/SeedlingServiceInfo$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final empty()Lpantanal/decision/SeedlingServiceInfo;
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance p0, Lpantanal/decision/SeedlingServiceInfo;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lpantanal/decision/SeedlingServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method
