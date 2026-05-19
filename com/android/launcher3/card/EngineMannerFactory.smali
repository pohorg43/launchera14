.class public final Lcom/android/launcher3/card/EngineMannerFactory;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nEngineMannerFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EngineMannerFactory.kt\ncom/android/launcher3/card/EngineMannerFactory\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,98:1\n1#2:99\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/card/EngineMannerFactory;

.field private static final TAG:Ljava/lang/String; = "EngineMannerFactory"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/card/EngineMannerFactory;

    invoke-direct {v0}, Lcom/android/launcher3/card/EngineMannerFactory;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/EngineMannerFactory;->INSTANCE:Lcom/android/launcher3/card/EngineMannerFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createEngineManner(Landroid/content/Context;Ljava/lang/Object;Lcom/android/launcher3/card/seed/SeedParams;)Lcom/oplus/card/helper/EngineManner;
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/android/launcher3/card/LauncherCardInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_64

    sget-object v0, Lcom/android/launcher3/card/EngineMannerFactory;->INSTANCE:Lcom/android/launcher3/card/EngineMannerFactory;

    check-cast p1, Lcom/android/launcher3/card/LauncherCardInfo;

    iget v2, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-static {v2}, Lcom/android/launcher3/card/EngineMannerFactory;->getCategory(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1d

    goto :goto_1f

    :cond_1d
    iget v2, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCategory:I

    :goto_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createEngine, category = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EngineMannerFactory"

    invoke-static {v4, v3}, Lcom/android/common/debug/LogUtils;->usDebug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5f

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5a

    const/16 v3, 0x64

    if-eq v2, v3, :cond_47

    if-lez v2, :cond_7a

    invoke-direct {v0, p1}, Lcom/android/launcher3/card/EngineMannerFactory;->createNormalCardEngine(Lcom/android/launcher3/card/LauncherCardInfo;)Lcom/oplus/card/helper/SmartEngineManner;

    move-result-object p0

    :goto_45
    move-object v1, p0

    goto :goto_7a

    :cond_47
    sget-object v2, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {v2}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v2

    iget v3, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {v2, v3}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfo(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v2

    if-eqz v2, :cond_7a

    invoke-direct {v0, p0, v2, p2, p1}, Lcom/android/launcher3/card/EngineMannerFactory;->createSeedCardEngine(Landroid/content/Context;Lcom/oplus/card/config/domain/model/CardConfigInfo;Lcom/android/launcher3/card/seed/SeedParams;Lcom/android/launcher3/card/LauncherCardInfo;)Lcom/android/launcher3/card/seed/SeedEngineManner;

    move-result-object p0

    goto :goto_45

    :cond_5a
    invoke-direct {v0, p1}, Lcom/android/launcher3/card/EngineMannerFactory;->createNormalCardEngine(Lcom/android/launcher3/card/LauncherCardInfo;)Lcom/oplus/card/helper/SmartEngineManner;

    move-result-object v1

    goto :goto_7a

    :cond_5f
    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/card/EngineMannerFactory;->createQuickAppCardEngine(Landroid/content/Context;Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/card/seed/SeedParams;)Lcom/oplus/card/helper/InstantEngineManner;

    move-result-object v1

    goto :goto_7a

    :cond_64
    instance-of v0, p1, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    if-eqz v0, :cond_7a

    sget-object v0, Lcom/android/launcher3/card/EngineMannerFactory;->INSTANCE:Lcom/android/launcher3/card/EngineMannerFactory;

    check-cast p1, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-static {p1}, Lcom/android/launcher3/card/LauncherCardInfo;->newFromCardConfigInfo(Lcom/oplus/card/config/domain/model/CardConfigInfo;)Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v1

    const-string/jumbo v2, "newFromCardConfigInfo(info)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/launcher3/card/EngineMannerFactory;->createSeedCardEngine(Landroid/content/Context;Lcom/oplus/card/config/domain/model/CardConfigInfo;Lcom/android/launcher3/card/seed/SeedParams;Lcom/android/launcher3/card/LauncherCardInfo;)Lcom/android/launcher3/card/seed/SeedEngineManner;

    move-result-object v1

    :cond_7a
    :goto_7a
    return-object v1
.end method

.method private final createNormalCardEngine(Lcom/android/launcher3/card/LauncherCardInfo;)Lcom/oplus/card/helper/SmartEngineManner;
    .registers 2

    new-instance p0, Lcom/oplus/card/helper/SmartEngineManner;

    invoke-direct {p0, p1}, Lcom/oplus/card/helper/SmartEngineManner;-><init>(Lcom/android/launcher3/card/LauncherCardInfo;)V

    return-object p0
.end method

.method private final createQuickAppCardEngine(Landroid/content/Context;Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/card/seed/SeedParams;)Lcom/oplus/card/helper/InstantEngineManner;
    .registers 4

    new-instance p0, Lcom/oplus/card/helper/InstantEngineManner;

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/card/helper/InstantEngineManner;-><init>(Landroid/content/Context;Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/card/seed/SeedParams;)V

    return-object p0
.end method

.method private final createSeedCardEngine(Landroid/content/Context;Lcom/oplus/card/config/domain/model/CardConfigInfo;Lcom/android/launcher3/card/seed/SeedParams;Lcom/android/launcher3/card/LauncherCardInfo;)Lcom/android/launcher3/card/seed/SeedEngineManner;
    .registers 5

    if-eqz p3, :cond_3

    goto :goto_8

    :cond_3
    new-instance p3, Lcom/android/launcher3/card/seed/SeedParams;

    invoke-direct {p3, p2}, Lcom/android/launcher3/card/seed/SeedParams;-><init>(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V

    :goto_8
    new-instance p0, Lcom/android/launcher3/card/seed/SeedEngineManner;

    invoke-direct {p0, p1, p3, p4}, Lcom/android/launcher3/card/seed/SeedEngineManner;-><init>(Landroid/content/Context;Lcom/android/launcher3/card/seed/SeedParams;Lcom/android/launcher3/card/LauncherCardInfo;)V

    return-object p0
.end method

.method public static final getCategory(I)I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfo(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object p0

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCategory()I

    move-result p0

    goto :goto_12

    :cond_11
    const/4 p0, -0x1

    :goto_12
    return p0
.end method
