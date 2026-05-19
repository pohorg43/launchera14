.class public final Lcom/android/launcher3/card/LauncherCardUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLauncherCardUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LauncherCardUtil.kt\ncom/android/launcher3/card/LauncherCardUtil\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,480:1\n1747#2,3:481\n*S KotlinDebug\n*F\n+ 1 LauncherCardUtil.kt\ncom/android/launcher3/card/LauncherCardUtil\n*L\n90#1:481,3\n*E\n"
    }
.end annotation


# static fields
.field private static final DISABLE_CARD_INFO_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXTRA_CARD_TYPE:Ljava/lang/String; = "card_type"

.field private static final EXTRA_IS_REQ_ALL_CARDS:Ljava/lang/String; = "is_req_all_cards"

.field public static final INSTANCE:Lcom/android/launcher3/card/LauncherCardUtil;

.field private static final INTERRUPT_LOADING_CARD_SUPPORT_TAG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/quickstep/utils/TracePrintUtil$Type;",
            ">;"
        }
    .end annotation
.end field

.field private static final INVALID_INDEX:I = -0x1

.field private static final INVALID_RESID:I = -0x1

.field private static final LAUNCHER_CLOSE_APP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/quickstep/utils/TracePrintUtil$Type;",
            ">;"
        }
    .end annotation
.end field

.field private static final LAUNCHER_CLOSE_FOLDER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/quickstep/utils/TracePrintUtil$Type;",
            ">;"
        }
    .end annotation
.end field

.field private static final LAUNCHER_WORKSPACE_ANIMATION:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/quickstep/utils/TracePrintUtil$Type;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARENT_MAX_LEVEL:I = 0x5

.field private static final REQ_RESULTS:Ljava/lang/String; = "req_results"

.field private static final REQ_STATUS:Ljava/lang/String; = "req_status"

.field private static final REQ_STATUS_DESCRIPTION:Ljava/lang/String; = "req_status_description"

.field private static final TAG:Ljava/lang/String; = "LauncherCardUtil"

.field private static mUncertainLauncherCardInfos:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/android/launcher3/card/LauncherCardUtil;

    invoke-direct {v0}, Lcom/android/launcher3/card/LauncherCardUtil;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/LauncherCardUtil;->INSTANCE:Lcom/android/launcher3/card/LauncherCardUtil;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/LauncherCardUtil;->mUncertainLauncherCardInfos:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->LAUNCH_APP:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->MENU_BACK_TO_HOME:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->GESTURE_TO_HOME:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->LIGHT_MENU_BACK_TO_HOME:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    invoke-static {v0}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/card/LauncherCardUtil;->LAUNCHER_CLOSE_APP:Ljava/util/List;

    new-array v1, v4, [Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    sget-object v5, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->FOLDER_CLOSE:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    aput-object v5, v1, v2

    sget-object v5, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->FOLDER_OPEN:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    aput-object v5, v1, v3

    invoke-static {v1}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/card/LauncherCardUtil;->LAUNCHER_CLOSE_FOLDER:Ljava/util/List;

    new-array v5, v4, [Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    sget-object v6, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->DRAG_WORKSPACE:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    aput-object v6, v5, v2

    sget-object v6, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->WORKSPACE_SCROLL:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    aput-object v6, v5, v3

    invoke-static {v5}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    sput-object v5, Lcom/android/launcher3/card/LauncherCardUtil;->LAUNCHER_WORKSPACE_ANIMATION:Ljava/util/List;

    new-array v4, v4, [Lh4/j;

    new-instance v6, Lh4/j;

    const-string v7, "com.coloros.alarmclock"

    const-string/jumbo v8, "世界时钟"

    invoke-direct {v6, v7, v8}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v4, v2

    new-instance v2, Lh4/j;

    const-string v6, "com.coloros.soundrecorder"

    const-string/jumbo v7, "录音"

    invoke-direct {v2, v6, v7}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v4, v3

    invoke-static {v4}, Li4/k0;->h([Lh4/j;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/android/launcher3/card/LauncherCardUtil;->DISABLE_CARD_INFO_MAP:Ljava/util/Map;

    invoke-static {v0, v1}, Li4/v;->U(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v5}, Li4/v;->U(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->KEYGUARD_DISMISS:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {v0, v1}, Li4/v;->V(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/card/LauncherCardUtil;->INTERRUPT_LOADING_CARD_SUPPORT_TAG:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/card/LauncherCardUtil;->requestSubscribedCards$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/card/LauncherCardUtil;->requestSubscribedCards$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/card/LauncherCardUtil;->requestSubscribedCards$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static final checkDuringAnimation(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/oplus/quickstep/utils/TracePrintUtil$Type;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "types"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    move v1, v2

    goto :goto_48

    :cond_14
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->getId()I

    move-result v3

    invoke-static {v3}, Lcom/oplus/quickstep/utils/TracePrintUtil;->isWindowAnimating(I)Z

    move-result v3

    if-nez v3, :cond_45

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->getId()I

    move-result v3

    invoke-static {v3}, Lcom/oplus/quickstep/utils/TracePrintUtil;->isWorkspaceAnimating(I)Z

    move-result v3

    if-nez v3, :cond_45

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->isRecentsAnimating(I)Z

    move-result v0

    if-eqz v0, :cond_43

    goto :goto_45

    :cond_43
    move v0, v2

    goto :goto_46

    :cond_45
    :goto_45
    move v0, v1

    :goto_46
    if-eqz v0, :cond_18

    :goto_48
    return v1
.end method

.method public static final clipCardView(Landroid/view/View;F)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_3

    return-void

    :cond_3
    new-instance v0, Lcom/android/launcher3/card/LauncherCardUtil$clipCardView$1;

    invoke-direct {v0, p1}, Lcom/android/launcher3/card/LauncherCardUtil$clipCardView$1;-><init>(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method

.method public static final clipCardView(Landroid/view/View;[F)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "radiusArr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_9

    return-void

    :cond_9
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, p1, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    new-instance p1, Lcom/android/launcher3/card/LauncherCardUtil$clipCardView$2;

    invoke-direct {p1, v1}, Lcom/android/launcher3/card/LauncherCardUtil$clipCardView$2;-><init>(Landroid/graphics/Path;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method

.method public static synthetic d(Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/card/LauncherCardUtil;->initPressFeedback$lambda$1(Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final dragViewUsesContent(Landroid/view/View;)Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    instance-of p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    return p0
.end method

.method public static final enableClickWhileRunningSamePkgRecentAnim(Lcom/android/launcher3/card/LauncherCardView;)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "cardView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->getSwipingUpActivityPkg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_13

    return v1

    :cond_13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of v2, p0, Lcom/android/launcher3/card/LauncherCardInfo;

    const/4 v3, 0x0

    if-eqz v2, :cond_1f

    check-cast p0, Lcom/android/launcher3/card/LauncherCardInfo;

    goto :goto_20

    :cond_1f
    move-object p0, v3

    :goto_20
    if-nez p0, :cond_23

    return v1

    :cond_23
    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :cond_2d
    if-nez v3, :cond_30

    return v1

    :cond_30
    iget-object p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez p0, :cond_35

    return v1

    :cond_35
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    return v1

    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "click card: pkg = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", title = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Card"

    const-string v4, "LauncherCardUtil"

    invoke-static {v2, v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/card/LauncherCardUtil;->DISABLE_CARD_INFO_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_66
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_66

    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_66

    const/4 p0, 0x0

    return p0

    :cond_8c
    return v1
.end method

.method public static final getCardClipPath([FLandroid/graphics/Rect;)Landroid/graphics/Path;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "radiusArr"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object p1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, p0, p1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    return-object v0
.end method

.method public static final getCardContainerOfSmartView(Landroid/view/View;I)Lcom/android/launcher3/card/LauncherCardView;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_20

    const/4 v1, 0x5

    if-lt p1, v1, :cond_7

    goto :goto_20

    :cond_7
    instance-of v1, p0, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v1, :cond_e

    check-cast p0, Lcom/android/launcher3/card/LauncherCardView;

    return-object p0

    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_19

    move-object v0, p0

    check-cast v0, Landroid/view/View;

    :cond_19
    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lcom/android/launcher3/card/LauncherCardUtil;->getCardContainerOfSmartView(Landroid/view/View;I)Lcom/android/launcher3/card/LauncherCardView;

    move-result-object p0

    return-object p0

    :cond_20
    :goto_20
    return-object v0
.end method

.method public static final getLargeDeviceCardRectBounds(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher/Launcher;)Landroid/graphics/Rect;
    .registers 14
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "cardInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/4 v1, 0x1

    const/16 v2, -0x73

    if-ne v0, v2, :cond_29

    sget-object p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->Companion:Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;

    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;->getAttachedInstance()Lcom/android/launcher3/card/groupcard/GroupCardView;

    move-result-object p0

    if-eqz p0, :cond_26

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    goto :goto_2d

    :cond_26
    move p0, v1

    move v0, p0

    goto :goto_2d

    :cond_29
    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    :goto_2d
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    const-string v3, "launcher.workspace"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v4

    iget v5, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v3, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-virtual {v4, v5, v3}, Lcom/android/launcher3/DeviceProfile;->getCellSize(II)Landroid/graphics/Point;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v5, v2, Lcom/android/launcher3/CellLayout;

    if-eqz v5, :cond_52

    check-cast v2, Lcom/android/launcher3/CellLayout;

    goto :goto_53

    :cond_52
    const/4 v2, 0x0

    :goto_53
    if-nez v2, :cond_5b

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0

    :cond_5b
    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    const/high16 v6, 0x3f800000  # 1.0f

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v7

    const-string v8, "launcher.deviceProfile"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v8, v7, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v8, :cond_7d

    iget-object v6, v7, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-static {v7, v6}, Ly4/h;->b(FF)F

    move-result v6

    :cond_7d
    const-string/jumbo v7, "swc"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "cellPoint"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2, v3}, Lcom/android/launcher3/card/LauncherCardUtil;->getLargeDeviceMarginRectForCard(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ShortcutAndWidgetContainer;Landroid/graphics/Point;)Landroid/graphics/Rect;

    move-result-object v7

    iget v8, v3, Landroid/graphics/Point;->x:I

    mul-int/2addr v8, v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cellPoint:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " cellWidthHeight:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getCellWidthHeight()[I

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v9, "Card"

    const-string v10, "LauncherCardUtil"

    invoke-static {v9, v10, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f07098a

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget v2, v7, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    int-to-float v1, v1

    sub-float/2addr v1, v6

    int-to-float v8, v8

    mul-float/2addr v1, v8

    const/4 v8, 0x2

    int-to-float v8, v8

    div-float/2addr v1, v8

    sub-float/2addr v2, v1

    mul-float/2addr v2, v6

    invoke-static {v2}, Lu4/a;->b(F)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v1, v7, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    div-float/2addr v1, v6

    invoke-static {v1}, Lu4/a;->b(F)I

    move-result v1

    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "marginRect:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " horizontalPadding:"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " paddingTop:"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " paddingBottom:"

    invoke-static {v8, v1, v7, v2}, Landroidx/fragment/app/d;->a(Ljava/lang/StringBuilder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v10, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput v4, v5, Landroid/graphics/Rect;->left:I

    iput v4, v5, Landroid/graphics/Rect;->top:I

    iget v4, v3, Landroid/graphics/Point;->x:I

    mul-int/2addr v4, v0

    iput v4, v5, Landroid/graphics/Rect;->right:I

    iget v0, v3, Landroid/graphics/Point;->y:I

    mul-int/2addr v0, p0

    int-to-float p0, v0

    div-float/2addr p0, v6

    float-to-int p0, p0

    iput p0, v5, Landroid/graphics/Rect;->bottom:I

    iput p1, v7, Landroid/graphics/Rect;->left:I

    iput v1, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, p1

    iput v4, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, v2

    iput p0, v7, Landroid/graphics/Rect;->bottom:I

    return-object v7
.end method

.method public static final getLargeDeviceMarginRectForCard(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ShortcutAndWidgetContainer;Landroid/graphics/Point;)Landroid/graphics/Rect;
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cellPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget-object v1, p0, Lcom/android/launcher3/OplusDeviceProfile;->mWidgetSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    if-nez v1, :cond_2f

    iget v1, p2, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const-string/jumbo v3, "null cannot be cast to non-null type com.android.launcher3.OplusCellLayout"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/launcher3/OplusDeviceProfile;->updateAreaWidgetConfigIfNeed(IILcom/android/launcher3/OplusCellLayout;)V

    :cond_2f
    iget-object p1, p0, Lcom/android/launcher3/OplusDeviceProfile;->mWidgetSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMBgPaddingHorizontal()I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->left:I

    iget-object p1, p0, Lcom/android/launcher3/OplusDeviceProfile;->mWidgetSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMBgPaddingTop()I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->top:I

    iget p1, p2, Landroid/graphics/Point;->x:I

    iget p2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mWidgetSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMBgPaddingBottom()I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method public static final getSizeBySpan(II)I
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSupportCardSizeConvert()Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_13

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_13
    if-ne p0, v1, :cond_18

    if-ne p1, v1, :cond_18

    return v1

    :cond_18
    const/4 v0, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_29

    if-eq p1, v2, :cond_23

    if-eq p1, v0, :cond_2a

    move v1, v0

    goto :goto_2a

    :cond_23
    if-gt p0, v1, :cond_27

    move v1, v3

    goto :goto_2a

    :cond_27
    move v1, v2

    goto :goto_2a

    :cond_29
    const/4 v1, 0x5

    :cond_2a
    :goto_2a
    return v1
.end method

.method public static final getSystemShortCut(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher/Launcher;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View$OnClickListener;)Lcom/android/launcher3/popup/SystemShortcut;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Lcom/android/launcher/Launcher;",
            "Landroid/view/View;",
            "Landroid/widget/TextView;",
            "Landroid/view/View$OnClickListener;",
            ")",
            "Lcom/android/launcher3/popup/SystemShortcut<",
            "Lcom/android/launcher/Launcher;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/card/LauncherCardUtil$getSystemShortCut$1;

    move-object v1, v0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p0

    move-object v5, p5

    move-object v6, p4

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/card/LauncherCardUtil$getSystemShortCut$1;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/widget/TextView;Landroid/view/View;)V

    return-object v0
.end method

.method public static final getUncertainLauncherCardInfoList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/card/LauncherCardUtil;->mUncertainLauncherCardInfos:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public static final getUsSystemShortCuts(Lcom/android/launcher3/card/groupcard/GroupCardView;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher/Launcher;)Ljava/util/List;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/groupcard/GroupCardView;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Lcom/android/launcher/Launcher;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/SystemShortcut<",
            "Lcom/android/launcher/Launcher;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    move-object v7, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemInfo"

    move-object/from16 v8, p1

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcher"

    move-object/from16 v9, p2

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->getPoupItems()Ljava/util/List;

    move-result-object v10

    const/4 v11, -0x1

    if-eqz v10, :cond_69

    const/4 v1, 0x0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    move v13, v1

    move v1, v11

    :goto_28
    if-ge v13, v12, :cond_6a

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpantanal/app/groupcard/popup/PopupItem;

    invoke-virtual {v2}, Lpantanal/app/groupcard/popup/PopupItem;->getId()Lpantanal/app/groupcard/popup/PopupItemId;

    move-result-object v3

    sget-object v4, Lpantanal/app/groupcard/popup/PopupItemId;->DIVIDER:Lpantanal/app/groupcard/popup/PopupItemId;

    if-ne v3, v4, :cond_3a

    move v14, v13

    goto :goto_3b

    :cond_3a
    move v14, v1

    :goto_3b
    invoke-virtual {v2}, Lpantanal/app/groupcard/popup/PopupItem;->getId()Lpantanal/app/groupcard/popup/PopupItemId;

    move-result-object v1

    if-eq v1, v4, :cond_65

    invoke-virtual {v2}, Lpantanal/app/groupcard/popup/PopupItem;->getIconView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_65

    invoke-virtual {v2}, Lpantanal/app/groupcard/popup/PopupItem;->getLabelView()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_65

    invoke-virtual {v2}, Lpantanal/app/groupcard/popup/PopupItem;->getIconView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2}, Lpantanal/app/groupcard/popup/PopupItem;->getLabelView()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v2}, Lpantanal/app/groupcard/popup/PopupItem;->getClickListener()Landroid/view/View$OnClickListener;

    move-result-object v6

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/card/LauncherCardUtil;->getSystemShortCut(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher/Launcher;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View$OnClickListener;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_65
    add-int/lit8 v13, v13, 0x1

    move v1, v14

    goto :goto_28

    :cond_69
    move v1, v11

    :cond_6a
    if-eq v1, v11, :cond_81

    add-int/lit8 v2, v1, -0x1

    if-ltz v2, :cond_81

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_81

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/popup/SystemShortcut;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/popup/SystemShortcut;->setAddDivideLine(Ljava/lang/Boolean;)V

    :cond_81
    return-object v0
.end method

.method public static final hasSeedOrGroupCard(Lcom/android/launcher3/model/BgDataModel;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->cards:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/card/LauncherCardInfo;

    const-string v1, "cardInfo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/launcher3/card/LauncherCardUtil;->isSeedOrGroupCard(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_24
    const-string p0, "LauncherCardUtil"

    const-string v0, "hasUsOrContainerCard? NOT."

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static final initPressFeedback(ILandroid/view/View;Landroid/view/View;)Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "feedbackView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pressedView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    invoke-direct {v0, p1, p0}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;-><init>(Landroid/view/View;I)V

    new-instance p0, Lcom/android/launcher3/card/f;

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/f;-><init>(Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object v0
.end method

.method private static final initPressFeedback$lambda$1(Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    const-string p1, "$feedbackUtils"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    const/4 p2, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_16

    goto :goto_20

    :cond_16
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_20

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->b(Z)V

    goto :goto_3b

    :cond_20
    :goto_20
    if-nez p1, :cond_23

    goto :goto_2a

    :cond_23
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_2a

    goto :goto_36

    :cond_2a
    :goto_2a
    const/4 v1, 0x3

    if-nez p1, :cond_2e

    goto :goto_35

    :cond_2e
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_35

    goto :goto_36

    :cond_35
    :goto_35
    move v0, p2

    :goto_36
    if-eqz v0, :cond_3b

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->b(Z)V

    :cond_3b
    :goto_3b
    return p2
.end method

.method public static final isSameWithDragView(Lcom/android/launcher3/card/IAreaWidget;Lcom/android/launcher3/dragndrop/OplusDragController;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dragController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragObject()Lcom/android/launcher3/DropTarget$DragObject;

    move-result-object p1

    if-eqz p1, :cond_14

    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final isSeedOrGroupCard(Ljava/lang/Object;)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "info"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    const/16 v1, 0x64

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1a

    check-cast p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getType()I

    move-result p0

    invoke-static {p0}, Lcom/android/launcher3/card/EngineMannerFactory;->getCategory(I)I

    move-result p0

    if-ne p0, v1, :cond_1e

    goto :goto_30

    :cond_1a
    instance-of v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;

    if-nez v0, :cond_20

    :cond_1e
    move v2, v3

    goto :goto_30

    :cond_20
    check-cast p0, Lcom/android/launcher3/card/LauncherCardInfo;

    iget p0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    const v0, 0xd3ecf26

    if-ne p0, v0, :cond_2a

    goto :goto_30

    :cond_2a
    invoke-static {p0}, Lcom/android/launcher3/card/EngineMannerFactory;->getCategory(I)I

    move-result p0

    if-ne p0, v1, :cond_1e

    :goto_30
    return v2
.end method

.method public static final isSmartView(Landroid/view/View;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/card/EngineCardView;

    if-nez v0, :cond_21

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_19

    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    instance-of p0, p0, Lcom/android/launcher3/card/EngineCardView;

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p0, 0x1

    :goto_22
    return p0
.end method

.method public static final notifyAnimationEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V
    .registers 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyAnimationEnd:id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", description: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherCardUtil"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/card/groupcard/GroupCardView;->Companion:Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;->getAttachedInstance()Lcom/android/launcher3/card/groupcard/GroupCardView;

    move-result-object v0

    if-eqz v0, :cond_39

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/card/groupcard/GroupCardView;->onLauncherAnimStateChange(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;Z)V

    :cond_39
    return-void
.end method

.method public static final notifyAnimationStart(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V
    .registers 6
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyAnimationStart:id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", description: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherCardUtil"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/card/groupcard/GroupCardView;->Companion:Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;->getAttachedInstance()Lcom/android/launcher3/card/groupcard/GroupCardView;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-virtual {v2}, Lcom/android/launcher3/card/groupcard/GroupCardView;->isContentEmpty()Z

    move-result v2

    goto :goto_3b

    :cond_3a
    const/4 v2, 0x0

    :goto_3b
    if-eqz v2, :cond_5a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyAnimationStart: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", isDisableInterrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5a
    invoke-virtual {v0}, Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;->getAttachedInstance()Lcom/android/launcher3/card/groupcard/GroupCardView;

    move-result-object v0

    if-eqz v0, :cond_64

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/card/groupcard/GroupCardView;->onLauncherAnimStateChange(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;Z)V

    :cond_64
    return-void
.end method

.method private static final packResBundle(ZLjava/lang/String;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "req_status"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p0, "req_status_description"

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "req_results"

    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public static final refreshLauncherCardScreenShot(Lcom/android/launcher3/card/IAreaWidget;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "card"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/android/launcher3/card/LauncherCardView;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    check-cast p0, Lcom/android/launcher3/card/LauncherCardView;

    goto :goto_e

    :cond_d
    move-object p0, v1

    :goto_e
    if-eqz p0, :cond_27

    invoke-interface {p0}, Lcom/oplus/card/manager/domain/ICardView;->getCardModel()Lcom/android/launcher3/card/CardModelWrapper;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-static {p0}, Lcom/android/launcher3/card/LauncherCardUtil;->refreshLauncherSeedingCardScreenShot(Lcom/android/launcher3/card/LauncherCardView;)V

    goto :goto_27

    :cond_1a
    instance-of v0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;

    if-eqz v0, :cond_21

    move-object v1, p0

    check-cast v1, Lcom/android/launcher3/card/groupcard/GroupCardView;

    :cond_21
    if-eqz v1, :cond_27

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->setDrawPicForDrag(Z)V

    :cond_27
    :goto_27
    return-void
.end method

.method private static final refreshLauncherSeedingCardScreenShot(Lcom/android/launcher3/card/LauncherCardView;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-interface {p0}, Lcom/oplus/card/manager/domain/ICardView;->getCardModel()Lcom/android/launcher3/card/CardModelWrapper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardModelWrapper;->getCardModel()Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/model/CardModel;->isSeedingCard()Z

    move-result v0

    if-ne v0, v2, :cond_15

    move v1, v2

    :cond_15
    if-eqz v1, :cond_1d

    invoke-interface {p0}, Lcom/oplus/card/manager/domain/ICardView;->refreshViewScreenshot()V

    invoke-interface {p0, v2}, Lcom/oplus/card/manager/domain/ICardView;->setDrawPicForDrag(Z)V

    :cond_1d
    return-void
.end method

.method public static final requestSubscribedCards(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-nez p0, :cond_10

    const-string/jumbo p0, "query bundle is null"

    invoke-static {v1, p0, v0}, Lcom/android/launcher3/card/LauncherCardUtil;->packResBundle(ZLjava/lang/String;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_10
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    if-nez v2, :cond_1d

    const-string p0, "launcher application is null"

    invoke-static {v1, p0, v0}, Lcom/android/launcher3/card/LauncherCardUtil;->packResBundle(ZLjava/lang/String;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_1d
    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->cards:Ljava/util/ArrayList;

    const-string v3, "app.model.mBgDataModel.cards"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3c

    const-string/jumbo p0, "there is no cards subscribed in Launcher"

    invoke-static {v1, p0, v0}, Lcom/android/launcher3/card/LauncherCardUtil;->packResBundle(ZLjava/lang/String;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_3c
    const-string v3, "card_type"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "is_req_all_cards"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5c

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lcom/android/launcher3/card/LauncherCardUtil$requestSubscribedCards$1;

    invoke-direct {v4, v0}, Lcom/android/launcher3/card/LauncherCardUtil$requestSubscribedCards$1;-><init>(Ljava/util/ArrayList;)V

    new-instance v5, Lcom/android/launcher3/card/h;

    invoke-direct {v5, v4, v1}, Lcom/android/launcher3/card/h;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v2, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_7c

    :cond_5c
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lcom/android/launcher3/card/LauncherCardUtil$requestSubscribedCards$2;

    invoke-direct {v4, v3}, Lcom/android/launcher3/card/LauncherCardUtil$requestSubscribedCards$2;-><init>(I)V

    new-instance v5, Lcom/android/launcher/folder/download/b;

    const/4 v6, 0x6

    invoke-direct {v5, v4, v6}, Lcom/android/launcher/folder/download/b;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v2, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lcom/android/launcher3/card/LauncherCardUtil$requestSubscribedCards$3;

    invoke-direct {v4, v0}, Lcom/android/launcher3/card/LauncherCardUtil$requestSubscribedCards$3;-><init>(Ljava/util/ArrayList;)V

    new-instance v5, Lcom/android/launcher3/card/g;

    invoke-direct {v5, v4, v1}, Lcom/android/launcher3/card/g;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v2, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :goto_7c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "method_req_subscribed_cards extra_card_type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", extra_is_req_all_cards: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", results: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Card"

    const-string v2, "LauncherCardUtil"

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    const-string/jumbo v1, "successes"

    invoke-static {p0, v1, v0}, Lcom/android/launcher3/card/LauncherCardUtil;->packResBundle(ZLjava/lang/String;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private static final requestSubscribedCards$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final requestSubscribedCards$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final requestSubscribedCards$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
