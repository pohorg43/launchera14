.class public final Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDynamicTaskInteraction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DynamicTaskInteraction.kt\ncom/oplus/quickstep/dynamictask/DynamicTaskInteraction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,253:1\n1#2:254\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction$Companion;

.field private static final TAG:Ljava/lang/String; = "RDT_Interaction"

.field private static final ZOOM_HIDE_CLICK_CLOSE:I = 0x6


# instance fields
.field private final dispatcher:Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;

.field private mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;"
        }
    .end annotation
.end field

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->Companion:Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;)V
    .registers 3

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->dispatcher:Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;Lcom/android/quickstep/views/OplusRecentsViewImpl;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->onCurrentPageChanged$lambda$0(Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;Lcom/android/quickstep/views/OplusRecentsViewImpl;Z)V

    return-void
.end method

.method private static final onCurrentPageChanged$lambda$0(Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;Lcom/android/quickstep/views/OplusRecentsViewImpl;Z)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->dispatcher:Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;

    if-eqz p2, :cond_11

    sget-object p2, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;->FOCUS_CHANGED:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    goto :goto_13

    :cond_11
    sget-object p2, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;->FOCUS_NEW:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    :goto_13
    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->show(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;)V

    return-void
.end method


# virtual methods
.method public final getDispatcher()Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->dispatcher:Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;

    return-object p0
.end method

.method public getDynamicTaskView()Lcom/android/quickstep/views/OplusTaskViewImpl;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->dispatcher:Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->getDynamicTaskView()Lcom/android/quickstep/views/OplusTaskViewImpl;

    move-result-object p0

    return-object p0
.end method

.method public isDynamicTaskShowing()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->dispatcher:Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->isDynamicShowing()Z

    move-result p0

    return p0
.end method

.method public isDynamicTaskView(Lcom/android/quickstep/views/OplusTaskViewImpl;)Z
    .registers 2

    if-eqz p1, :cond_c

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->dispatcher:Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->isDynamicTask(Lcom/android/quickstep/views/OplusTaskViewImpl;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public onAnimLaunchTask(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/systemui/shared/recents/model/Task;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/systemui/shared/recents/model/Task;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "caller"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->dispatcher:Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;

    invoke-virtual {v0, p2}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->isDynamicTask(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v0

    if-eqz v0, :cond_39

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimLaunchTask(), task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", caller="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "RDT_Interaction"

    invoke-static {p3, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->dispatcher:Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;

    sget-object p2, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->ANIM_LAUNCH_TASK:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->release(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;)Z

    move-result p0

    goto :goto_3f

    :cond_39
    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->dispatcher:Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->cancelPreparingTask()V

    const/4 p0, 0x0

    :goto_3f
    return p0
.end method

.method public onAppLimitedStateChanged(Lcom/android/quickstep/views/OplusRecentsViewImpl;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "+",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "map"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    :cond_11
    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->getDynamicTaskView()Lcom/android/quickstep/views/OplusTaskViewImpl;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_23
    move-object v0, v1

    :goto_24
    if-nez v0, :cond_27

    return-void

    :cond_27
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/util/PackageUserKey;

    iget-object v3, v3, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    move-object v1, v2

    :cond_45
    check-cast v1, Lcom/android/launcher3/util/PackageUserKey;

    if-eqz v1, :cond_5d

    const-string p2, "onAppLimitedStateChanged(), "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, v1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    const-string v1, "RDT_Interaction"

    invoke-static {p2, v0, v1}, Lcom/android/common/util/w;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->dispatcher:Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;

    sget-object p2, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->CLOSE:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->release(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;)Z

    :cond_5d
    return-void
.end method

.method public onAttachedToWindow(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->dispatcher:Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->onRecentsViewAttached(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    return-void
.end method

.method public onClickClearAll(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/views/OplusTaskViewImpl;",
            ")V"
        }
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "RDT_Interaction"

    const-string v1, "onClickClearAll()"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->dispatcher:Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;

    invoke-virtual {v0}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->cancelPreparingTask()V

    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->dispatcher:Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;

    invoke-virtual {v0}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->isDynamicShowing()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->dispatcher:Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;

    invoke-virtual {v0, p2}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->isDynamicTask(Lcom/android/quickstep/views/OplusTaskViewImpl;)Z

    move-result p2

    if-nez p2, :cond_28

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->dispatcher:Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;

    sget-object p2, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->CLEAR_ALL:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->release(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;)Z

    :cond_28
    return-void
.end method

.method public onContentProtectStateChanged(Lcom/android/quickstep/views/OplusRecentsViewImpl;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;Z)Z"
        }
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onContentProtectStateChanged(), enter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RDT_Interaction"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_26

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->dispatcher:Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;

    sget-object p2, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->CONTENT_PROTECTED:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->release(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;)Z

    move-result p0

    goto :goto_2e

    :cond_26
    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->dispatcher:Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;

    sget-object p2, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;->CONTENT_UNPROTECTED:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->show(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;)V

    const/4 p0, 0x0

    :goto_2e
    return p0
.end method

.method public onCurrentPageChanged(Lcom/android/quickstep/views/OplusRecentsViewImpl;IILjava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "caller"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq p2, p3, :cond_41

    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isLaunchFromButtonRunning()Z

    move-result v1

    if-nez v1, :cond_41

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isRemoteRecentsAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_41

    :cond_1b
    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->dispatcher:Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;

    invoke-virtual {v0}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->isDynamicShowing()Z

    move-result v0

    const-string v1, "onCurrentPageChanged(), "

    const-string v2, " -> "

    const-string v3, ", caller="

    invoke-static {v1, p2, v2, p3, v3}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "RDT_Interaction"

    invoke-static {p2, p4, p3}, Lcom/android/common/util/w;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->dispatcher:Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;

    sget-object p3, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->CLOSE:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    invoke-virtual {p2, p1, p3}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->release(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;)Z

    iget-object p2, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->mainHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/launcher3/z0;

    invoke-direct {p3, p0, p1, v0}, Lcom/android/launcher3/z0;-><init>(Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;Lcom/android/quickstep/views/OplusRecentsViewImpl;Z)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_41
    :goto_41
    return-void
.end method

.method public onDetachedFromWindow(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->dispatcher:Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;

    sget-object v1, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->RECNET_DETACH:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    invoke-virtual {v0, p1, v1}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->release(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;)Z

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->dispatcher:Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->onRecentsViewDetached(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    return-void
.end method

.method public onDynamicStatusChanged(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/views/TaskView;",
            "Z)V"
        }
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/android/quickstep/views/GroupedTaskView;

    if-nez v0, :cond_51

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1a

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getHasEmbedded()Z

    move-result v2

    if-ne v2, v0, :cond_1a

    goto :goto_1b

    :cond_1a
    move v0, v1

    :goto_1b
    if-eqz v0, :cond_1e

    goto :goto_51

    :cond_1e
    const-string v0, "onDynamicStatusChanged, task="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p2, :cond_2b

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p2

    goto :goto_2c

    :cond_2b
    const/4 p2, 0x0

    :goto_2c
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", isDynamic="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RDT_Interaction"

    invoke-static {v0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_4a

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->dispatcher:Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;

    sget-object p2, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;->OPEN:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->show(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;)V

    goto :goto_51

    :cond_4a
    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->dispatcher:Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;

    sget-object p2, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->CLOSE:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->release(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;)Z

    :cond_51
    :goto_51
    return-void
.end method

.method public onEnterRecentsView(Lcom/android/quickstep/views/OplusRecentsViewImpl;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "caller"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnterRecentsView(), caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RDT_Interaction"

    invoke-static {v0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->dispatcher:Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;

    sget-object p2, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;->ENTER_RECENT:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->show(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;)V

    return-void
.end method

.method public onExitRecentsView(Lcom/android/quickstep/views/OplusRecentsViewImpl;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "caller"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onExitRecentsView(), caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RDT_Interaction"

    invoke-static {v0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->dispatcher:Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;

    sget-object p2, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->EXIT_RECENT:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->release(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;)Z

    return-void
.end method

.method public onLaunchTask(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/systemui/shared/recents/model/Task;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/systemui/shared/recents/model/Task;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "caller"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->dispatcher:Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;

    invoke-virtual {v0, p2}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->isDynamicTask(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v0

    if-eqz v0, :cond_38

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLaunchTaskView, task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", caller="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "RDT_Interaction"

    invoke-static {p3, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->dispatcher:Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;

    sget-object p2, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->LAUNCH_TASK:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->release(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;)Z

    goto :goto_3d

    :cond_38
    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->dispatcher:Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->cancelPreparingTask()V

    :goto_3d
    return-void
.end method

.method public onOrientedStateChanged(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/util/RecentsOrientedState;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/util/RecentsOrientedState;",
            ")V"
        }
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orientationState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->dispatcher:Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->onOrientedStateChanged(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/util/RecentsOrientedState;)V

    return-void
.end method

.method public onPageEndTransition(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :cond_13
    :goto_13
    if-eqz v1, :cond_2b

    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->dispatcher:Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;

    invoke-virtual {v0}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->isDynamicShowing()Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "RDT_Interaction"

    const-string v1, "onPageEndTransition(), overscroll, trigger show again."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->dispatcher:Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;

    sget-object v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;->OPEN:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    invoke-virtual {p0, p1, v0}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->show(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;)V

    :cond_2b
    return-void
.end method

.method public onPullLaunchTask(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/views/TaskView;",
            ")V"
        }
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPullLaunchTask, task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_16

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p2

    goto :goto_17

    :cond_16
    const/4 p2, 0x0

    :goto_17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RDT_Interaction"

    invoke-static {v0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->dispatcher:Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;

    sget-object p2, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->PULL_LAUNCH_TASK:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->release(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;)Z

    return-void
.end method

.method public onTaskViewDimColorChanged(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/views/OplusTaskViewImpl;",
            ")V"
        }
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->dispatcher:Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;

    invoke-virtual {v0, p2}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->isDynamicTask(Lcom/android/quickstep/views/OplusTaskViewImpl;)Z

    move-result p2

    if-nez p2, :cond_e

    return-void

    :cond_e
    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->dispatcher:Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;

    sget-object p2, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IUpdate$Reason;->DIM:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IUpdate$Reason;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->update(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IUpdate$Reason;)V

    return-void
.end method

.method public onTaskViewRemoved(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/views/OplusTaskViewImpl;",
            ")V"
        }
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    goto :goto_16

    :cond_15
    move-object v0, v1

    :goto_16
    if-nez v0, :cond_19

    return-void

    :cond_19
    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    return-void

    :cond_22
    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->dispatcher:Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;

    invoke-virtual {v0, p2}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->isDynamicTask(Lcom/android/quickstep/views/OplusTaskViewImpl;)Z

    move-result v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v2

    if-eqz v2, :cond_4e

    const-string v2, "onTaskViewRemoved(), task="

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_3a

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    :cond_3a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", isDynamic="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "RDT_Interaction"

    invoke-static {v1, p2}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    if-eqz v0, :cond_57

    iget-object p2, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->dispatcher:Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;

    sget-object v1, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->REMOVE:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    invoke-virtual {p2, p1, v1}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->release(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;)Z

    :cond_57
    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->dispatcher:Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;

    if-eqz v0, :cond_5e

    sget-object p2, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;->FOCUS_CHANGED:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    goto :goto_60

    :cond_5e
    sget-object p2, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;->FOCUS_NEW:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    :goto_60
    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->show(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;)V

    return-void
.end method

.method public onTaskWindowModeChanged(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/views/TaskView;",
            ")V"
        }
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTaskWindowModeChanged, task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_16

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p2

    goto :goto_17

    :cond_16
    const/4 p2, 0x0

    :goto_17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RDT_Interaction"

    invoke-static {v0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->dispatcher:Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;

    sget-object p2, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->WINDOW_MODE_CHANGED:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->release(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;)Z

    return-void
.end method

.method public onZoomWindowHide(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/oplus/zoomwindow/OplusZoomWindowInfo;",
            ")V"
        }
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onZoomWindowHide(), zoomInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RDT_Interaction"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_24

    iget p2, p2, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->lastExitMethod:I

    const/4 v1, 0x6

    if-ne p2, v1, :cond_24

    const/4 v0, 0x1

    :cond_24
    if-eqz v0, :cond_2d

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskInteraction;->dispatcher:Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;

    sget-object p2, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;->ZOOM_HIDE:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->show(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;)V

    :cond_2d
    return-void
.end method

.method public onZoomWindowShow(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/oplus/zoomwindow/OplusZoomWindowInfo;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback$DefaultImpls;->onZoomWindowShow(Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V

    return-void
.end method
