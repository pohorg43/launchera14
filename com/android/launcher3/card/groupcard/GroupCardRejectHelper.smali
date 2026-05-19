.class public final Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper$RejectAlarmListener;,
        Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper$DragListener;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;

.field public static final REJECT_UPDATE_DELAY:J = 0xbb8L

.field private static final TAG:Ljava/lang/String; = "GroupCardRejectHelper"

.field private static mDragListener:Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper$DragListener;

.field private static final mRejectAlarm:Lcom/android/launcher3/Alarm;

.field private static mRejectAlarmListener:Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper$RejectAlarmListener;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;

    invoke-direct {v0}, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;->INSTANCE:Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;

    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/android/launcher3/Alarm;-><init>(ZLandroid/os/Looper;)V

    sput-object v0, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;->mRejectAlarm:Lcom/android/launcher3/Alarm;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/card/LauncherCardView;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;->tryRejectChildCardForPage$lambda$3$lambda$1(Lcom/android/launcher3/card/LauncherCardView;)V

    return-void
.end method

.method public static final synthetic access$setMRejectAlarmListener$p(Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper$RejectAlarmListener;)V
    .registers 1

    sput-object p0, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;->mRejectAlarmListener:Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper$RejectAlarmListener;

    return-void
.end method

.method public static final getNeighborPage(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/CellLayout;
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "cellLayout"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/OplusWorkspace;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    check-cast v0, Lcom/android/launcher3/OplusWorkspace;

    goto :goto_12

    :cond_11
    move-object v0, v2

    :goto_12
    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v4

    if-ne v4, v3, :cond_1d

    move v1, v3

    :cond_1d
    if-eqz v1, :cond_46

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    rem-int/lit8 v1, p0, 0x2

    if-ne v1, v3, :cond_3a

    sub-int/2addr p0, v3

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_46

    move-object v2, p0

    check-cast v2, Lcom/android/launcher3/CellLayout;

    goto :goto_46

    :cond_3a
    add-int/2addr p0, v3

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_46

    move-object v2, p0

    check-cast v2, Lcom/android/launcher3/CellLayout;

    :cond_46
    :goto_46
    return-object v2
.end method

.method private final isSameCellLayout(Lcom/android/launcher3/card/LauncherCardView;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_c

    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_d

    :cond_c
    move-object p0, p1

    :goto_d
    instance-of v0, p0, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_14

    check-cast p0, Lcom/android/launcher3/CellLayout;

    goto :goto_15

    :cond_14
    move-object p0, p1

    :goto_15
    const/4 v0, 0x0

    if-eqz p0, :cond_35

    sget-object v1, Lcom/android/launcher3/card/groupcard/GroupCardView;->Companion:Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;

    invoke-virtual {v1}, Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;->getAttachedInstance()Lcom/android/launcher3/card/groupcard/GroupCardView;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lcom/android/launcher3/card/groupcard/GroupCardView;->getCellLayoutParent()Lcom/android/launcher3/CellLayout;

    move-result-object p1

    :cond_24
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    invoke-static {p0}, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;->getNeighborPage(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/CellLayout;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_35

    :cond_34
    const/4 v0, 0x1

    :cond_35
    return v0
.end method

.method private static final tryRejectChildCardForPage$lambda$3$lambda$1(Lcom/android/launcher3/card/LauncherCardView;)V
    .registers 2

    const-string v0, "$launcherCardView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;->INSTANCE:Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;->tryRejectChildCardForPage(Lcom/android/launcher3/card/LauncherCardView;)V

    return-void
.end method


# virtual methods
.method public final cancelRejectAlarm()V
    .registers 2

    sget-object p0, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;->mRejectAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p0}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    :cond_b
    return-void
.end method

.method public final checkRejectAlarm()V
    .registers 2

    sget-object p0, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;->mRejectAlarmListener:Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper$RejectAlarmListener;

    if-eqz p0, :cond_9

    sget-object v0, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;->mRejectAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper$RejectAlarmListener;->onAlarm(Lcom/android/launcher3/Alarm;)V

    :cond_9
    const/4 p0, 0x0

    sput-object p0, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;->mRejectAlarmListener:Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper$RejectAlarmListener;

    return-void
.end method

.method public final tryRejectChildCardForPage(Lcom/android/launcher3/card/LauncherCardView;)V
    .registers 8

    const-string p0, "launcherCardView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isSeedlingContainerCardDisabled()Z

    move-result p0

    if-eqz p0, :cond_e

    return-void

    :cond_e
    sget-object p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->Companion:Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;

    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;->getAttachedInstance()Lcom/android/launcher3/card/groupcard/GroupCardView;

    move-result-object v0

    if-nez v0, :cond_17

    return-void

    :cond_17
    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;->getAttachedInstance()Lcom/android/launcher3/card/groupcard/GroupCardView;

    move-result-object p0

    if-eqz p0, :cond_d7

    sget-object v0, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;->INSTANCE:Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;

    invoke-direct {v0, p1}, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;->isSameCellLayout(Lcom/android/launcher3/card/LauncherCardView;)Z

    move-result v0

    const-string v1, "GroupCardRejectHelper"

    if-nez v0, :cond_2e

    const-string/jumbo p0, "tryRejectChildCardForPage, is not SameCellLayout, return"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2e
    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->isContentEmpty()Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string/jumbo p0, "tryRejectChildCardForPage, groupCardView.isContentEmpty"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3b
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Lcom/android/launcher3/CellLayout;

    const/4 v3, 0x0

    if-eqz v2, :cond_4b

    check-cast v0, Lcom/android/launcher3/CellLayout;

    goto :goto_4c

    :cond_4b
    move-object v0, v3

    :goto_4c
    if-nez v0, :cond_4f

    return-void

    :cond_4f
    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->isContentEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tryRejectChildCardForPage, parent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", hasContent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;->mRejectAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v1}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v4

    check-cast v4, Lcom/android/launcher/Launcher;

    if-nez v4, :cond_84

    return-void

    :cond_84
    const-string v5, "Launcher.fromContext<Lau…Layout.context) ?: return"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v5

    if-eqz v5, :cond_ab

    if-eqz v2, :cond_ab

    new-instance p0, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper$DragListener;

    new-instance v0, Landroidx/recyclerview/widget/a;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/a;-><init>(Lcom/android/launcher3/card/LauncherCardView;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper$DragListener;-><init>(Ljava/lang/Runnable;)V

    sput-object p0, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;->mDragListener:Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper$DragListener;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;->mDragListener:Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper$DragListener;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    return-void

    :cond_ab
    sget-object p1, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;->mDragListener:Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper$DragListener;

    if-eqz p1, :cond_c2

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/launcher3/dragndrop/DragController;->hasDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)Z

    move-result v5

    if-eqz v5, :cond_c0

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    :cond_c0
    sput-object v3, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;->mDragListener:Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper$DragListener;

    :cond_c2
    if-nez v2, :cond_c8

    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->tryRegroup()V

    goto :goto_d7

    :cond_c8
    new-instance p0, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper$RejectAlarmListener;

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper$RejectAlarmListener;-><init>(Lcom/android/launcher3/CellLayout;)V

    sput-object p0, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;->mRejectAlarmListener:Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper$RejectAlarmListener;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    const-wide/16 p0, 0xbb8

    invoke-virtual {v1, p0, p1}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    :cond_d7
    :goto_d7
    return-void
.end method
