.class public final Lcom/oplus/quickstep/utils/SetGcSupressionOrDesupressionUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSetGcSupressionOrDesupressionUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SetGcSupressionOrDesupressionUtil.kt\ncom/oplus/quickstep/utils/SetGcSupressionOrDesupressionUtil\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,53:1\n288#2,2:54\n*S KotlinDebug\n*F\n+ 1 SetGcSupressionOrDesupressionUtil.kt\ncom/oplus/quickstep/utils/SetGcSupressionOrDesupressionUtil\n*L\n48#1:54,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/utils/SetGcSupressionOrDesupressionUtil;

.field public static final OPEN_CLOSE_ANIM_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/quickstep/utils/TracePrintUtil$Type;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/oplus/quickstep/utils/SetGcSupressionOrDesupressionUtil;

    invoke-direct {v0}, Lcom/oplus/quickstep/utils/SetGcSupressionOrDesupressionUtil;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/utils/SetGcSupressionOrDesupressionUtil;->INSTANCE:Lcom/oplus/quickstep/utils/SetGcSupressionOrDesupressionUtil;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->LAUNCH_APP:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->MENU_BACK_TO_HOME:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->GESTURE_TO_HOME:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->LIGHT_LAUNCH_APP:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->LIGHT_MENU_BACK_TO_HOME:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/oplus/quickstep/utils/SetGcSupressionOrDesupressionUtil;->OPEN_CLOSE_ANIM_TYPES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final inStartOrCloseAnimation()Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/utils/SetGcSupressionOrDesupressionUtil;->OPEN_CLOSE_ANIM_TYPES:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-virtual {v2}, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->getId()I

    move-result v2

    invoke-static {v2}, Lcom/oplus/quickstep/utils/TracePrintUtil;->isWindowAnimating(I)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    check-cast v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    if-eqz v1, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    return v0
.end method

.method public static final notifyAnimationEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/utils/SetGcSupressionOrDesupressionUtil;->OPEN_CLOSE_ANIM_TYPES:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    invoke-static {}, Lcom/oplus/quickstep/utils/SetGcSupressionOrDesupressionUtil;->inStartOrCloseAnimation()Z

    move-result p0

    if-nez p0, :cond_1a

    invoke-static {}, Lcom/oplus/util/OplusGcSupressionExtImpl;->getInstance()Lcom/oplus/util/OplusGcSupressionExtImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/util/OplusGcSupressionExtImpl;->callGcDesupression()V

    :cond_1a
    return-void
.end method

.method public static final notifyAnimationStart(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/utils/SetGcSupressionOrDesupressionUtil;->OPEN_CLOSE_ANIM_TYPES:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    invoke-static {}, Lcom/oplus/util/OplusGcSupressionExtImpl;->getInstance()Lcom/oplus/util/OplusGcSupressionExtImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/util/OplusGcSupressionExtImpl;->callGcSupression()V

    :cond_14
    return-void
.end method
