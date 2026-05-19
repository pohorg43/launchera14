.class public final Lcom/android/launcher3/allapps/AllAppsAvoidUpdateDuringAnimUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/AllAppsAvoidUpdateDuringAnimUtil$AsyncTraceListener;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAllAppsAvoidUpdateDuringAnimUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AllAppsAvoidUpdateDuringAnimUtil.kt\ncom/android/launcher3/allapps/AllAppsAvoidUpdateDuringAnimUtil\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,61:1\n1855#2,2:62\n1855#2,2:64\n*S KotlinDebug\n*F\n+ 1 AllAppsAvoidUpdateDuringAnimUtil.kt\ncom/android/launcher3/allapps/AllAppsAvoidUpdateDuringAnimUtil\n*L\n42#1:62,2\n52#1:64,2\n*E\n"
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

.field public static final INSTANCE:Lcom/android/launcher3/allapps/AllAppsAvoidUpdateDuringAnimUtil;

.field private static final mAsyncTraceListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/launcher3/allapps/AllAppsAvoidUpdateDuringAnimUtil$AsyncTraceListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/allapps/AllAppsAvoidUpdateDuringAnimUtil;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/AllAppsAvoidUpdateDuringAnimUtil;-><init>()V

    sput-object v0, Lcom/android/launcher3/allapps/AllAppsAvoidUpdateDuringAnimUtil;->INSTANCE:Lcom/android/launcher3/allapps/AllAppsAvoidUpdateDuringAnimUtil;

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->DRAG_ALL_APPS_PANEL:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {v0}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/allapps/AllAppsAvoidUpdateDuringAnimUtil;->AVOID_ANIM_TYPES:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/android/launcher3/allapps/AllAppsAvoidUpdateDuringAnimUtil;->mAsyncTraceListeners:Ljava/util/Set;

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

    const-string/jumbo v0, "type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/allapps/AllAppsAvoidUpdateDuringAnimUtil;->AVOID_ANIM_TYPES:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    return-void

    :cond_f
    sget-object p0, Lcom/android/launcher3/allapps/AllAppsAvoidUpdateDuringAnimUtil;->mAsyncTraceListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AllAppsAvoidUpdateDuringAnimUtil$AsyncTraceListener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/AllAppsAvoidUpdateDuringAnimUtil$AsyncTraceListener;->notifyAnimationEnd()V

    goto :goto_15

    :cond_25
    return-void
.end method

.method public static final notifyAnimationStart(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/allapps/AllAppsAvoidUpdateDuringAnimUtil;->AVOID_ANIM_TYPES:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    return-void

    :cond_f
    sget-object p0, Lcom/android/launcher3/allapps/AllAppsAvoidUpdateDuringAnimUtil;->mAsyncTraceListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AllAppsAvoidUpdateDuringAnimUtil$AsyncTraceListener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/AllAppsAvoidUpdateDuringAnimUtil$AsyncTraceListener;->notifyAnimationStart()V

    goto :goto_15

    :cond_25
    return-void
.end method

.method public static final registerAsyncTraceListener(Lcom/android/launcher3/allapps/AllAppsAvoidUpdateDuringAnimUtil$AsyncTraceListener;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "asyncTraceListener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/allapps/AllAppsAvoidUpdateDuringAnimUtil;->mAsyncTraceListeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final unregisterAsyncTraceListener(Lcom/android/launcher3/allapps/AllAppsAvoidUpdateDuringAnimUtil$AsyncTraceListener;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "asyncTraceListener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/allapps/AllAppsAvoidUpdateDuringAnimUtil;->mAsyncTraceListeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
