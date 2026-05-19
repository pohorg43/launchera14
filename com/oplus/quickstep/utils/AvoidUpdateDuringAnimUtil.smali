.class public final Lcom/oplus/quickstep/utils/AvoidUpdateDuringAnimUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/utils/AvoidUpdateDuringAnimUtil$AsyncTraceListener;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAvoidUpdateDuringAnimUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AvoidUpdateDuringAnimUtil.kt\ncom/oplus/quickstep/utils/AvoidUpdateDuringAnimUtil\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,71:1\n1855#2,2:72\n1855#2,2:74\n*S KotlinDebug\n*F\n+ 1 AvoidUpdateDuringAnimUtil.kt\ncom/oplus/quickstep/utils/AvoidUpdateDuringAnimUtil\n*L\n52#1:72,2\n62#1:74,2\n*E\n"
    }
.end annotation


# static fields
.field public static final AVOID_ANIM_TYPES:Ljava/util/List;
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

.field public static final INSTANCE:Lcom/oplus/quickstep/utils/AvoidUpdateDuringAnimUtil;

.field private static final mAsyncTraceListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/oplus/quickstep/utils/AvoidUpdateDuringAnimUtil$AsyncTraceListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/oplus/quickstep/utils/AvoidUpdateDuringAnimUtil;

    invoke-direct {v0}, Lcom/oplus/quickstep/utils/AvoidUpdateDuringAnimUtil;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/utils/AvoidUpdateDuringAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/AvoidUpdateDuringAnimUtil;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->LAUNCH_APP:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->MENU_BACK_TO_HOME:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->GESTURE_DRAG_WINDOW:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->GESTURE_TO_HOME:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->RECENTS_TO_HOME:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->DRAG_WORKSPACE:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->WORKSPACE_SCROLL:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->GESTURE_TO_RECENTS:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->MENU_TO_RECENTS:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->HOME_TO_RECENTS:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->LIGHT_LAUNCH_APP:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->LIGHT_MENU_BACK_TO_HOME:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->KEYGUARD_DISMISS:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    invoke-static {v0}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/oplus/quickstep/utils/AvoidUpdateDuringAnimUtil;->AVOID_ANIM_TYPES:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/utils/AvoidUpdateDuringAnimUtil;->mAsyncTraceListeners:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final notifyAnimationEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/utils/AvoidUpdateDuringAnimUtil;->AVOID_ANIM_TYPES:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    return-void

    :cond_e
    sget-object p0, Lcom/oplus/quickstep/utils/AvoidUpdateDuringAnimUtil;->mAsyncTraceListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/utils/AvoidUpdateDuringAnimUtil$AsyncTraceListener;

    invoke-interface {v0}, Lcom/oplus/quickstep/utils/AvoidUpdateDuringAnimUtil$AsyncTraceListener;->notifyAnimationEnd()V

    goto :goto_14

    :cond_24
    return-void
.end method

.method public static final notifyAnimationStart(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/utils/AvoidUpdateDuringAnimUtil;->AVOID_ANIM_TYPES:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    return-void

    :cond_e
    sget-object p0, Lcom/oplus/quickstep/utils/AvoidUpdateDuringAnimUtil;->mAsyncTraceListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/utils/AvoidUpdateDuringAnimUtil$AsyncTraceListener;

    invoke-interface {v0}, Lcom/oplus/quickstep/utils/AvoidUpdateDuringAnimUtil$AsyncTraceListener;->notifyAnimationStart()V

    goto :goto_14

    :cond_24
    return-void
.end method

.method public static final registerAsyncTraceListener(Lcom/oplus/quickstep/utils/AvoidUpdateDuringAnimUtil$AsyncTraceListener;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "asyncTraceListener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/utils/AvoidUpdateDuringAnimUtil;->mAsyncTraceListeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final unregisterAsyncTraceListener(Lcom/oplus/quickstep/utils/AvoidUpdateDuringAnimUtil$AsyncTraceListener;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "asyncTraceListener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/utils/AvoidUpdateDuringAnimUtil;->mAsyncTraceListeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
