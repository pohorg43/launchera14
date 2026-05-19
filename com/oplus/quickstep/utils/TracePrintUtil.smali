.class public final Lcom/oplus/quickstep/utils/TracePrintUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/utils/TracePrintUtil$Type;,
        Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTracePrintUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TracePrintUtil.kt\ncom/oplus/quickstep/utils/TracePrintUtil\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,361:1\n1855#2,2:362\n*S KotlinDebug\n*F\n+ 1 TracePrintUtil.kt\ncom/oplus/quickstep/utils/TracePrintUtil\n*L\n129#1:362,2\n*E\n"
    }
.end annotation


# static fields
.field private static final BASIC_ID:I = 0x0

.field public static final DEFAULT_ID:I = -0x1

.field public static final INSTANCE:Lcom/oplus/quickstep/utils/TracePrintUtil;

.field private static final TAG:Ljava/lang/String; = "TracePrintUtil"

.field private static final VIEW_ANIMATION_BASIC_ID:I = 0xc8

.field private static final VIEW_ANIMATION_CARD_BASIC_ID:I = 0x2bc

.field private static final VIEW_ANIMATION_RECENTS_BASIC_ID:I = 0xc8

.field private static final VIEW_ANIMATION_TASKBAR_BASIC_ID:I = 0x258

.field private static final VIEW_ANIMATION_WORKSPACE_BASIC_ID:I = 0x1f4

.field private static final WINDOW_ANIMATION_BASIC_ID:I = 0x0

.field private static final WINDOW_ANIMATION_VIRTUAL_KEY_BASIC_ID:I = 0x64

.field private static recentsAnimTagArray:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static traceTagTmpArray:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/oplus/quickstep/utils/TracePrintUtil$Type;",
            ">;"
        }
    .end annotation
.end field

.field private static windAnimTagArray:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static workspaceAnimTagArray:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/utils/TracePrintUtil;

    invoke-direct {v0}, Lcom/oplus/quickstep/utils/TracePrintUtil;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil;->INSTANCE:Lcom/oplus/quickstep/utils/TracePrintUtil;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil;->windAnimTagArray:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil;->recentsAnimTagArray:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil;->workspaceAnimTagArray:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil;->traceTagTmpArray:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->NONE:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    if-ne p0, v0, :cond_a

    return-void

    :cond_a
    const-string v0, "asyncTraceBegin add "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TracePrintUtil"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->getId()I

    move-result v0

    const/16 v1, 0xc8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v0, :cond_3a

    if-ge v0, v1, :cond_3a

    move v4, v2

    goto :goto_3b

    :cond_3a
    move v4, v3

    :goto_3b
    if-eqz v4, :cond_4b

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil;->windAnimTagArray:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7b

    :cond_4b
    const/16 v4, 0x1f4

    if-gt v1, v0, :cond_53

    if-ge v0, v4, :cond_53

    move v1, v2

    goto :goto_54

    :cond_53
    move v1, v3

    :goto_54
    if-eqz v1, :cond_64

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil;->recentsAnimTagArray:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7b

    :cond_64
    if-gt v4, v0, :cond_6b

    const/16 v1, 0x258

    if-ge v0, v1, :cond_6b

    goto :goto_6c

    :cond_6b
    move v2, v3

    :goto_6c
    if-eqz v2, :cond_7b

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil;->workspaceAnimTagArray:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_7b
    :goto_7b
    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil;->traceTagTmpArray:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, 0x8

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->getId()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->notifyAnimationStart(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    invoke-static {}, Lcom/android/launcher/UiConfig;->isPangu()Z

    move-result v0

    if-eqz v0, :cond_ad

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->DRAG_WORKSPACE:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    if-eq p0, v0, :cond_9e

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->WORKSPACE_SCROLL:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    if-ne p0, v0, :cond_ad

    :cond_9e
    invoke-static {}, Lcom/android/launcher3/CpuBindManager;->getInstance()Lcom/android/launcher3/CpuBindManager;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/CpuBindManager;->getInstance()Lcom/android/launcher3/CpuBindManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/CpuBindManager;->getRenderThreadTid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CpuBindManager;->bindCpu(I)V

    :cond_ad
    invoke-static {}, Lcom/android/launcher/UiConfig;->isAmber()Z

    move-result v0

    if-eqz v0, :cond_ce

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->DRAG_WORKSPACE:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    if-eq p0, v0, :cond_bf

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->WORKSPACE_SCROLL:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    if-eq p0, v0, :cond_bf

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->ALL_APPS_SCROLL:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    if-ne p0, v0, :cond_ce

    :cond_bf
    invoke-static {}, Lcom/android/launcher3/CpuBindManager;->getInstance()Lcom/android/launcher3/CpuBindManager;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/CpuBindManager;->getInstance()Lcom/android/launcher3/CpuBindManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/CpuBindManager;->getRenderThreadTid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CpuBindManager;->bindCpu(I)V

    :cond_ce
    invoke-static {}, Lcom/android/launcher/UiConfig;->isBenz()Z

    move-result v0

    if-eqz v0, :cond_e7

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->KEYGUARD_DISMISS:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    if-ne p0, v0, :cond_e7

    invoke-static {}, Lcom/android/launcher3/CpuBindManager;->getInstance()Lcom/android/launcher3/CpuBindManager;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/CpuBindManager;->getInstance()Lcom/android/launcher3/CpuBindManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/CpuBindManager;->getRenderThreadTid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CpuBindManager;->bindCpu(I)V

    :cond_e7
    invoke-static {}, Lcom/android/launcher/UiConfig;->isXueying()Z

    move-result v0

    if-eqz v0, :cond_104

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->LAUNCH_APP:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    if-eq p0, v0, :cond_f5

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->MENU_BACK_TO_HOME:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    if-ne p0, v0, :cond_104

    :cond_f5
    invoke-static {}, Lcom/android/launcher3/CpuBindManager;->getInstance()Lcom/android/launcher3/CpuBindManager;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher3/CpuBindManager;->getInstance()Lcom/android/launcher3/CpuBindManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/CpuBindManager;->getRenderThreadTid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/CpuBindManager;->bindCpu(I)V

    :cond_104
    return-void
.end method

.method public static final asyncTraceCleanAll()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil;->windAnimTagArray:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_f

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil;->windAnimTagArray:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_f
    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil;->recentsAnimTagArray:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil;->recentsAnimTagArray:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_1e
    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil;->workspaceAnimTagArray:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil;->workspaceAnimTagArray:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_2d
    invoke-static {}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTracecleanDone()V

    return-void
.end method

.method public static final asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->NONE:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    if-ne p0, v0, :cond_a

    return-void

    :cond_a
    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil;->windAnimTagArray:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil;->recentsAnimTagArray:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil;->workspaceAnimTagArray:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asyncTraceEnd remove "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",windAnimTagArray.size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil;->windAnimTagArray:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TracePrintUtil"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil;->windAnimTagArray:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-static {}, Lcom/oplus/quickstep/utils/TracePrintUtil;->onWindowAnimationEnd()V

    :cond_70
    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil;->traceTagTmpArray:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-wide/16 v0, 0x8

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->getId()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->notifyAnimationEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    invoke-static {}, Lcom/android/launcher/UiConfig;->isPangu()Z

    move-result v0

    if-eqz v0, :cond_a2

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->DRAG_WORKSPACE:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    if-eq p0, v0, :cond_93

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->WORKSPACE_SCROLL:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    if-ne p0, v0, :cond_a2

    :cond_93
    invoke-static {}, Lcom/android/launcher3/CpuBindManager;->getInstance()Lcom/android/launcher3/CpuBindManager;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/CpuBindManager;->getInstance()Lcom/android/launcher3/CpuBindManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/CpuBindManager;->getRenderThreadTid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CpuBindManager;->unBindCpu(I)V

    :cond_a2
    invoke-static {}, Lcom/android/launcher/UiConfig;->isAmber()Z

    move-result v0

    if-eqz v0, :cond_c3

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->DRAG_WORKSPACE:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    if-eq p0, v0, :cond_b4

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->WORKSPACE_SCROLL:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    if-eq p0, v0, :cond_b4

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->ALL_APPS_SCROLL:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    if-ne p0, v0, :cond_c3

    :cond_b4
    invoke-static {}, Lcom/android/launcher3/CpuBindManager;->getInstance()Lcom/android/launcher3/CpuBindManager;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/CpuBindManager;->getInstance()Lcom/android/launcher3/CpuBindManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/CpuBindManager;->getRenderThreadTid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CpuBindManager;->unBindCpu(I)V

    :cond_c3
    invoke-static {}, Lcom/android/launcher/UiConfig;->isBenz()Z

    move-result v0

    if-eqz v0, :cond_dc

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->KEYGUARD_DISMISS:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    if-ne p0, v0, :cond_dc

    invoke-static {}, Lcom/android/launcher3/CpuBindManager;->getInstance()Lcom/android/launcher3/CpuBindManager;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/CpuBindManager;->getInstance()Lcom/android/launcher3/CpuBindManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/CpuBindManager;->getRenderThreadTid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CpuBindManager;->unBindCpu(I)V

    :cond_dc
    invoke-static {}, Lcom/android/launcher/UiConfig;->isXueying()Z

    move-result v0

    if-eqz v0, :cond_f9

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->LAUNCH_APP:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    if-eq p0, v0, :cond_ea

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->MENU_BACK_TO_HOME:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    if-ne p0, v0, :cond_f9

    :cond_ea
    invoke-static {}, Lcom/android/launcher3/CpuBindManager;->getInstance()Lcom/android/launcher3/CpuBindManager;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher3/CpuBindManager;->getInstance()Lcom/android/launcher3/CpuBindManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/CpuBindManager;->getRenderThreadTid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/CpuBindManager;->unBindCpu(I)V

    :cond_f9
    return-void
.end method

.method public static final asyncTraceForTrackBegin(I)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->Companion:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent$Companion;->getSceneWithEventID(I)Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->getTrackName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id="

    invoke-static {v1, p0}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v0, v1, p0}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static final asyncTraceForTrackEnd(I)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->Companion:Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent$Companion;->getSceneWithEventID(I)Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/TracePrintUtil$SceneEvent;->getTrackName()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0, p0}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    return-void
.end method

.method public static final asyncTracecleanDone()V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/oplus/quickstep/utils/TracePrintUtil;->onWindowAnimationEnd()V

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil;->traceTagTmpArray:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_35

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil;->traceTagTmpArray:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const-wide/16 v2, 0x8

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->getId()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    invoke-static {v1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->notifyAnimationEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    goto :goto_13

    :cond_30
    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil;->traceTagTmpArray:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_35
    return-void
.end method

.method public static final isRecentsAnimating(I)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, -0x1

    if-ne p0, v0, :cond_f

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil;->recentsAnimTagArray:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_19

    :cond_d
    const/4 v0, 0x0

    goto :goto_19

    :cond_f
    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil;->recentsAnimTagArray:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_19
    if-eqz v0, :cond_36

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRecentsAnimating "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " = true"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TracePrintUtil"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    return v0
.end method

.method public static synthetic isRecentsAnimating$default(IILjava/lang/Object;)Z
    .registers 3

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_5

    const/4 p0, -0x1

    :cond_5
    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->isRecentsAnimating(I)Z

    move-result p0

    return p0
.end method

.method public static final isWindowAnimating(I)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, -0x1

    if-ne p0, v0, :cond_f

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil;->windAnimTagArray:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_19

    :cond_d
    const/4 v0, 0x0

    goto :goto_19

    :cond_f
    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil;->windAnimTagArray:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_19
    if-eqz v0, :cond_36

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWindowAnimating "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " = true "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TracePrintUtil"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    return v0
.end method

.method public static synthetic isWindowAnimating$default(IILjava/lang/Object;)Z
    .registers 3

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_5

    const/4 p0, -0x1

    :cond_5
    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->isWindowAnimating(I)Z

    move-result p0

    return p0
.end method

.method public static final isWorkspaceAnimating(I)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, -0x1

    if-ne p0, v0, :cond_f

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil;->workspaceAnimTagArray:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_19

    :cond_d
    const/4 v0, 0x0

    goto :goto_19

    :cond_f
    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil;->workspaceAnimTagArray:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_19
    if-eqz v0, :cond_36

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWorkspaceAnimating "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " = true"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TracePrintUtil"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    return v0
.end method

.method public static synthetic isWorkspaceAnimating$default(IILjava/lang/Object;)Z
    .registers 3

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_5

    const/4 p0, -0x1

    :cond_5
    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->isWorkspaceAnimating(I)Z

    move-result p0

    return p0
.end method

.method private static final notifyAnimationEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Lcom/oplus/quickstep/utils/AvoidUpdateDuringAnimUtil;->notifyAnimationEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    invoke-static {p0}, Lcom/android/launcher3/allapps/AllAppsAvoidUpdateDuringAnimUtil;->notifyAnimationEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    invoke-static {p0}, Lcom/oplus/quickstep/utils/SetGcSupressionOrDesupressionUtil;->notifyAnimationEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    const-wide/16 v0, 0x8

    const-string v2, "TracePrintUtil#notifyAnimationEnd"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/card/LauncherCardUtil;->notifyAnimationEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method private static final notifyAnimationStart(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Lcom/oplus/quickstep/utils/AvoidUpdateDuringAnimUtil;->notifyAnimationStart(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    invoke-static {p0}, Lcom/android/launcher3/allapps/AllAppsAvoidUpdateDuringAnimUtil;->notifyAnimationStart(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    invoke-static {p0}, Lcom/oplus/quickstep/utils/SetGcSupressionOrDesupressionUtil;->notifyAnimationStart(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    const-wide/16 v0, 0x8

    const-string v2, "TracePrintUtil#notifyAnimationStart"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/card/LauncherCardUtil;->notifyAnimationStart(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method private static final onWindowAnimationEnd()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->checkExpandGuidState(Z)V

    return-void
.end method
