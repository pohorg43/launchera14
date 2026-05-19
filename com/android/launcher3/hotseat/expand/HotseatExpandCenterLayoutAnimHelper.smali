.class public final Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;
.super Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHotseatExpandCenterLayoutAnimHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HotseatExpandCenterLayoutAnimHelper.kt\ncom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,496:1\n1#2:497\n*E\n"
    }
.end annotation


# static fields
.field private static final ANIMATION_DELAY_DEFAULT:J = 0xc8L

.field private static final ANIMATION_DURATION_DEFAULT:J = 0x2bcL

.field private static final ANIMATION_EXPAND_OUT_DURATION_DEFAULT:J = 0x190L

.field private static final ANIMATION_EXPAND_REPLACE_DURATION_DEFAULT:J = 0x1f4L

.field private static final ANIMATION_SCALE_DEFAULT:F = 0.7f

.field public static final Companion:Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper$Companion;

.field private static final EXPAND_IN_DELAY_BASE:J = 0x15bL

.field private static final EXPAND_IN_DELAY_STEP:I = 0x22

.field private static final EXPAND_IN_DURATION_BASE:J = 0x161L

.field private static final EXPAND_OUT_DELAY_STEP:J = 0x37L

.field private static final TAG:Ljava/lang/String; = "HotseatExpandCenterLayoutAnimHelper"


# instance fields
.field private isUpdatingWithOutAnimation:Z

.field private newPaddingLR:I

.field private oldPaddingLR:I

.field private final runOnceOnUpdateAnimatorEndSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final targetViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private targetWidth:I

.field private final toBeAddViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private tobeDeleteViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private updateAnimatorSet:Landroid/animation/AnimatorSet;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->Companion:Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/OplusHotseat;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;-><init>(Landroid/content/Context;Lcom/android/launcher3/OplusHotseat;)V

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->runOnceOnUpdateAnimatorEndSet:Landroid/util/ArraySet;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->targetViews:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->toBeAddViews:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->tobeDeleteViews:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic b(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->startExpandOutAnimation$lambda$2(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->startExpandOutAnimation$lambda$3(Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic d(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->startExpandReplaceAnim$lambda$5(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final dividerWillBeRemoved(Ljava/util/List;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    instance-of p1, p1, Lcom/android/launcher3/hotseat/HotseatDividerView;

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic e(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->startExpandInAnimation$lambda$1(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->startExpandInAnimation$lambda$0(Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic g(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->startExpandReplaceAnim$lambda$6(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final getExpandViewByCellX(Lcom/android/launcher3/ShortcutAndWidgetContainer;I)Landroid/view/View;
    .registers 7

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p0, :cond_35

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_32

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v2, :cond_32

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "null cannot be cast to non-null type com.android.launcher3.model.data.WorkspaceItemInfo"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ne v3, p2, :cond_32

    invoke-static {v2}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_32

    return-object v1

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_35
    const/4 p0, 0x0

    return-object p0
.end method

.method private final getOriginalChildViews()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_1a

    iget-object v3, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1a
    return-object v0
.end method

.method private final resetUpdateAnimationSet()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->updateAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_c

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->updateAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_c
    return-void
.end method

.method private final resetUpdateData()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->tobeDeleteViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->toBeAddViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->targetViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->newPaddingLR:I

    iput v0, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->targetWidth:I

    return-void
.end method

.method private final startAddNewItemInScreen(Z)V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->toBeAddViews:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/hotseat/expand/ExpandUtils$ViewCellXPositionComparator;

    invoke-direct {v1}, Lcom/android/launcher3/hotseat/expand/ExpandUtils$ViewCellXPositionComparator;-><init>()V

    invoke-static {v0, v1}, Li4/s;->n(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->toBeAddViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/OplusHotseat;->updateCountXForItemAdded()V

    if-eqz p1, :cond_34

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    const v2, 0x3f333333  # 0.7f

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    :cond_34
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateExpandItemAnimation add in screen info:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Hotseat_expand"

    const-string v5, "HotseatExpandCenterLayoutAnimHelper"

    invoke-static {v4, v5, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTabletAdaptive()Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v2, v4}, Lcom/android/launcher3/model/BgDataModel;->addItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Z)V

    goto :goto_10

    :cond_7b
    return-void
.end method

.method private final startExpandInAnimation(Ljava/util/List;)Ljava/util/Collection;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/Collection<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_a0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x2bc

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/android/common/config/AnimationConstant;->HOTSEAT_EXPAND_TRANSITION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/android/launcher/batchdrag/a;

    invoke-direct {v3, p0}, Lcom/android/launcher/batchdrag/a;-><init>(Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string/jumbo p0, "paddingAnim"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v2, 0x0

    :goto_2f
    if-ge v2, p0, :cond_9e

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    new-array v4, v1, [F

    fill-array-data v4, :array_a8

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    sget-object v5, Lcom/android/common/config/AnimationConstant;->HOTSEAT_EXPAND_TRANSITION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0x15b

    const-wide/16 v7, 0x161

    if-nez v2, :cond_59

    add-int/lit8 v9, v2, 0x1

    mul-int/lit8 v9, v9, 0x22

    int-to-long v9, v9

    sub-long/2addr v7, v9

    invoke-virtual {v4, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    add-long/2addr v9, v5

    invoke-virtual {v4, v9, v10}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    goto :goto_64

    :cond_59
    mul-int/lit8 v9, v2, 0x22

    int-to-long v9, v9

    sub-long/2addr v7, v9

    invoke-virtual {v4, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    add-long/2addr v9, v5

    invoke-virtual {v4, v9, v10}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :goto_64
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gez v5, :cond_8a

    const-string/jumbo v5, "va.duration:"

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Hotseat_expand"

    const-string v9, "HotseatExpandCenterLayoutAnimHelper"

    invoke-static {v6, v9, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_8a
    new-instance v5, Lcom/android/launcher/folder/recommend/view/a;

    invoke-direct {v5, v3}, Lcom/android/launcher/folder/recommend/view/a;-><init>(Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string/jumbo v3, "va"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_9e
    return-object v0

    nop

    :array_a0
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_a8
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private static final startExpandInAnimation$lambda$0(Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;Landroid/animation/ValueAnimator;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x1

    int-to-float v0, v0

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->oldPaddingLR:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->newPaddingLR:I

    int-to-float v1, v1

    mul-float/2addr p1, v1

    add-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    iget v1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mCommonTop:I

    iget p0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mCommonBottom:I

    invoke-virtual {v0, p1, v1, p1, p0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method private static final startExpandInAnimation$lambda$1(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string v0, "$child"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    const v0, 0x3e99999a  # 0.3f

    mul-float/2addr p1, v0

    const v0, 0x3f333333  # 0.7f

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private final startExpandOutAnimation(Ljava/util/List;)Ljava/util/Collection;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/Collection<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->tobeDeleteViews:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    :goto_f
    const/4 v3, 0x2

    if-ge v2, v1, :cond_48

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    new-array v5, v3, [F

    fill-array-data v5, :array_72

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    const-wide/16 v6, 0x190

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    add-int/lit8 v2, v2, 0x1

    sub-int v6, v1, v2

    int-to-long v6, v6

    const-wide/16 v8, 0x37

    mul-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    sget-object v6, Lcom/android/common/config/AnimationConstant;->HOTSEAT_EXPAND_TRANSITION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v6, Lcom/android/common/util/r0;

    invoke-direct {v6, v4, v3}, Lcom/android/common/util/r0;-><init>(Landroid/view/View;I)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string/jumbo v3, "va"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_48
    new-array p1, v3, [F

    fill-array-data p1, :array_7a

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v1, Lcom/android/launcher/pageindicators/d;

    invoke-direct {v1, p0}, Lcom/android/launcher/pageindicators/d;-><init>(Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object p0, Lcom/android/common/config/AnimationConstant;->HOTSEAT_EXPAND_TRANSITION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x2bc

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-string/jumbo p0, "paddingAnim"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object v0

    :array_72
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_7a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private static final startExpandOutAnimation$lambda$2(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 4

    const-string v0, "$child"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x1

    int-to-float v0, v0

    const v1, 0x3e99999a  # 0.3f

    mul-float/2addr p1, v1

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private static final startExpandOutAnimation$lambda$3(Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;Landroid/animation/ValueAnimator;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x1

    int-to-float v0, v0

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->oldPaddingLR:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->newPaddingLR:I

    int-to-float v1, v1

    mul-float/2addr p1, v1

    add-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    iget v1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mCommonTop:I

    iget p0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mCommonBottom:I

    invoke-virtual {v0, p1, v1, p1, p0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method private static final startExpandReplaceAnim$lambda$5(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string/jumbo v0, "valueAnimator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const v0, 0x3e99999a  # 0.3f

    mul-float/2addr p1, v0

    const v0, 0x3f333333  # 0.7f

    add-float/2addr p1, v0

    if-nez p0, :cond_21

    goto :goto_24

    :cond_21
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    :goto_24
    if-nez p0, :cond_27

    goto :goto_2a

    :cond_27
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    :goto_2a
    return-void
.end method

.method private static final startExpandReplaceAnim$lambda$6(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 4

    const-string v0, "$replaceView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "valueAnimator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const v0, 0x3e99999a  # 0.3f

    mul-float/2addr v0, p1

    const v1, 0x3f333333  # 0.7f

    add-float/2addr v0, v1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private final updateShortcutsAndWidgetsWidthAndHotSeatPadding(I)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    iget v2, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mCommonTop:I

    iget v3, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mCommonBottom:I

    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getX()F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v4, v0

    add-int/2addr v4, p1

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result p0

    invoke-virtual {v1, v2, v3, v4, p0}, Landroid/view/ViewGroup;->layout(IIII)V

    return-void
.end method


# virtual methods
.method public final animationEnd(Z)V
    .registers 14

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const-string v1, "HotseatExpandCenterLayoutAnimHelper"

    const-string v2, "Hotseat_expand"

    if-eqz v0, :cond_75

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateExpandItemAnimation end"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ",tobeDeleteViews.size:"

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->tobeDeleteViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ",toBeAddViews.size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->toBeAddViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ",targetWidth:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->targetWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ",newPaddingLR:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->newPaddingLR:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_75
    const/4 v0, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    const/4 v5, 0x1

    if-eqz p1, :cond_f8

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result v6

    if-eqz v6, :cond_f8

    iget-object p1, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->tobeDeleteViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_89
    :goto_89
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ee

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    const-string/jumbo v7, "updateExpandItemAnimation end in folded screen,just remove bgData:"

    invoke-static {v7}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v1, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v7

    iget-object v7, v7, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v8, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    new-array v9, v5, [Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Lcom/android/launcher3/model/data/ItemInfo;

    aput-object v10, v9, v3

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v7}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v7

    if-eqz v7, :cond_db

    invoke-static {v0}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->setExpandDividerView(Lcom/android/launcher3/hotseat/HotseatDividerView;)V

    goto :goto_89

    :cond_db
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v6}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v6

    if-eqz v6, :cond_89

    invoke-static {v0}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->setSubscribeDividerView(Lcom/android/launcher3/hotseat/HotseatDividerView;)V

    goto :goto_89

    :cond_ee
    invoke-direct {p0}, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->resetUpdateData()V

    const-string/jumbo p0, "updateExpandItemAnimation end in folded screen"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f8
    iget-object v6, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->tobeDeleteViews:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v5

    if-eqz v6, :cond_185

    iget-object v6, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->tobeDeleteViews:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/launcher3/hotseat/expand/ExpandUtils$ViewCellXPositionComparator;

    invoke-direct {v7}, Lcom/android/launcher3/hotseat/expand/ExpandUtils$ViewCellXPositionComparator;-><init>()V

    invoke-static {v6, v7}, Li4/s;->n(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v6, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->tobeDeleteViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_111
    :goto_111
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_185

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    const-string/jumbo v8, "updateExpandItemAnimation end to remove:"

    invoke-static {v8}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v1, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTabletAdaptive()Z

    move-result v8

    if-nez v8, :cond_15f

    iget-object v8, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v8

    iget-object v8, v8, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v9, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    new-array v10, v5, [Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Lcom/android/launcher3/model/data/ItemInfo;

    aput-object v11, v10, v3

    invoke-virtual {v8, v9, v10}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_15f
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v8}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v8

    if-eqz v8, :cond_172

    invoke-static {v0}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->setExpandDividerView(Lcom/android/launcher3/hotseat/HotseatDividerView;)V

    goto :goto_111

    :cond_172
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v7}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v7

    if-eqz v7, :cond_111

    invoke-static {v0}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->setSubscribeDividerView(Lcom/android/launcher3/hotseat/HotseatDividerView;)V

    goto :goto_111

    :cond_185
    iget v0, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->targetWidth:I

    if-eqz v0, :cond_18c

    invoke-direct {p0, v0}, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->updateShortcutsAndWidgetsWidthAndHotSeatPadding(I)V

    :cond_18c
    iget v0, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->newPaddingLR:I

    if-eqz v0, :cond_199

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    iget v2, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mCommonTop:I

    iget v4, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mCommonBottom:I

    invoke-virtual {v1, v0, v2, v0, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_199
    iget-object v0, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->toBeAddViews:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v5

    if-eqz v0, :cond_1c0

    iget-object v0, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->toBeAddViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1a8

    :cond_1c0
    iget-object v0, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->targetViews:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v5

    if-eqz v0, :cond_1e4

    iget-object v0, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->targetViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Landroid/view/View;

    move v2, v3

    :goto_1d2
    if-ge v2, v0, :cond_1e1

    iget-object v4, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->targetViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d2

    :cond_1e1
    invoke-virtual {p0, v1, v0, v5}, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->updateGridSize([Landroid/view/View;IZ)Z

    :cond_1e4
    invoke-direct {p0}, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->resetUpdateData()V

    invoke-static {p1}, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->showExpandGuidIfNecessary(Z)V

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->setFinishedUpdateExpandFlag(Z)V

    invoke-virtual {v0, v3}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->setExpandUpdatingFlag(Z)V

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_212

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    const-string v1, "mHotseat.shortcutsAndWidgets"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Landroidx/core/view/ViewGroupKt;->get(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_212

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_212
    if-nez p1, :cond_219

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-static {p0}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->updateAllChildLayoutParams(Lcom/android/launcher3/OplusHotseat;)V

    :cond_219
    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->checkPendingUpdateRunnable()V

    return-void
.end method

.method public final cancelUpdateAnimatorSet()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->isUpdateAnimating()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "Hotseat_expand"

    const-string v1, "HotseatExpandCenterLayoutAnimHelper"

    const-string v2, "cancelUpdateAnimatorSet"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->updateAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_16
    return-void
.end method

.method public final getNewPaddingLR()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->newPaddingLR:I

    return p0
.end method

.method public final getOldPaddingLR()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->oldPaddingLR:I

    return p0
.end method

.method public final getRunOnceOnUpdateAnimatorEndSet()Landroid/util/ArraySet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->runOnceOnUpdateAnimatorEndSet:Landroid/util/ArraySet;

    return-object p0
.end method

.method public final getTargetViews()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->targetViews:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getTargetWidth()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->targetWidth:I

    return p0
.end method

.method public final getUpdateAnimatorSet()Landroid/animation/AnimatorSet;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->updateAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public final isUpdateAnimating()Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->updateAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x0

    if-eqz p0, :cond_10

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    goto :goto_d

    :cond_c
    move p0, v0

    :goto_d
    if-eqz p0, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public final isUpdatingWithOutAnimation()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->isUpdatingWithOutAnimation:Z

    return p0
.end method

.method public final runOnceOnUpdateAnimatorEnd(Ljava/lang/Runnable;)V
    .registers 3

    const-string/jumbo v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->runOnceOnUpdateAnimatorEndSet:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setNewPaddingLR(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->newPaddingLR:I

    return-void
.end method

.method public final setOldPaddingLR(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->oldPaddingLR:I

    return-void
.end method

.method public final setTargetWidth(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->targetWidth:I

    return-void
.end method

.method public final setUpdateAnimatorSet(Landroid/animation/AnimatorSet;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->updateAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public final setUpdatingWithOutAnimation(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->isUpdatingWithOutAnimation:Z

    return-void
.end method

.method public final startExpandReplaceAnim(Ljava/util/ArrayList;)Ljava/util/Collection;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/Collection<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "toReplaceViews"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    return-object v0

    :cond_12
    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_91

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_92

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    const-wide/16 v6, 0x1f4

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v8, 0xc8

    invoke-virtual {v5, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    sget-object v10, Lcom/android/common/config/AnimationConstant;->HOTSEAT_EXPAND_TRANSITION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v11, "container"

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-direct {p0, v1, v3}, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->getExpandViewByCellX(Lcom/android/launcher3/ShortcutAndWidgetContainer;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5b

    iget-object v11, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->tobeDeleteViews:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5b
    new-instance v11, Lcom/android/launcher3/folder/q;

    const/4 v12, 0x1

    invoke-direct {v11, v3, v12}, Lcom/android/launcher3/folder/q;-><init>(Landroid/view/View;I)V

    invoke-virtual {v5, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string/jumbo v3, "oldIconAnimator"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v3, v4, [F

    fill-array-data v3, :array_9a

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v5, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v3, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Lcom/android/launcher3/card/b;

    invoke-direct {v5, v2, v4}, Lcom/android/launcher3/card/b;-><init>(Landroid/view/View;I)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string/jumbo v2, "newIconAnimator"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_91
    return-object v0

    :array_92
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data

    :array_9a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public final startUpdateExpandItemAnimation(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string/jumbo v4, "toBeExpandViews"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "toBeRemovedViews"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "toReplaceViews"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-virtual {v4}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getEnableUpdateExpandFlag()Z

    move-result v5

    const-string v6, "HotseatExpandCenterLayoutAnimHelper"

    const-string v7, "Hotseat_expand"

    if-nez v5, :cond_42

    if-nez p4, :cond_42

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasExpandDividerInBgData()Z

    move-result v0

    if-nez v0, :cond_38

    const-string/jumbo v0, "startUpdateExpandItemAnimation not finish bind and setExpandDividerView null"

    invoke-static {v7, v6, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->setExpandDividerView(Lcom/android/launcher3/hotseat/HotseatDividerView;)V

    :cond_38
    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->resetStateForUpdateExceptionReturn()V

    const-string/jumbo v0, "startUpdateExpandItemAnimation launcher is not finish bind, return"

    invoke-static {v7, v6, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_42
    iget-object v5, v0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->updateAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v8, 0x1

    if-eqz v5, :cond_4f

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-ne v5, v8, :cond_4f

    move v5, v8

    goto :goto_50

    :cond_4f
    const/4 v5, 0x0

    :goto_50
    if-eqz v5, :cond_59

    const-string/jumbo v0, "startUpdateExpandItemAnimation running and return!! Check why here?"

    invoke-static {v7, v6, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_59
    iget-object v5, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string/jumbo v9, "mLauncher"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->isHotseatVisible(Lcom/android/launcher3/Launcher;)Z

    move-result v5

    if-eqz v5, :cond_75

    sget v5, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sDurationScale:F

    const/4 v9, 0x0

    cmpg-float v5, v5, v9

    if-nez v5, :cond_70

    move v5, v8

    goto :goto_71

    :cond_70
    const/4 v5, 0x0

    :goto_71
    if-nez v5, :cond_75

    move v5, v8

    goto :goto_76

    :cond_75
    const/4 v5, 0x0

    :goto_76
    const-string/jumbo v9, "startUpdateExpandItemAnimation,isAnimating:"

    invoke-static {v9}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->isUpdateAnimating()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->resetUpdateAnimationSet()V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->getOriginalChildViews()Ljava/util/ArrayList;

    move-result-object v9

    iget-object v10, v0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->targetViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v10, v0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->targetViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v10, v0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->targetViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    xor-int/lit8 v10, v5, 0x1

    iput-boolean v10, v0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->isUpdatingWithOutAnimation:Z

    if-eqz v5, :cond_b0

    iget-object v10, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v10}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/dragndrop/OplusDragController;->cancelDragBeforeHotseatExpandAnim()V

    :cond_b0
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v10, v0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->updateAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    iget-object v13, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getRight()I

    move-result v13

    iget-object v14, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getLeft()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatLayoutParamsInject;->getHotseatIconVisiblePaddingHor()I

    move-result v14

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerCount()I

    move-result v15

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v16

    xor-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_119

    iget-object v8, v0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->toBeAddViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v8, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v8}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int v16, v16, v12

    sub-int v16, v16, v15

    mul-int v16, v16, v8

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerViewWidth()I

    move-result v8

    mul-int/2addr v8, v15

    add-int v8, v8, v16

    iput v8, v0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->targetWidth:I

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v8

    iput v14, v0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->targetWidth:I

    sub-int v8, v13, v14

    div-int/lit8 v8, v8, 0x2

    iput v8, v0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->newPaddingLR:I

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    sub-int/2addr v13, v8

    div-int/lit8 v13, v13, 0x2

    iput v13, v0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->oldPaddingLR:I

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->startExpandInAnimation(Ljava/util/List;)Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v10, v8}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_163

    :cond_119
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    const/16 v16, 0x1

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_163

    invoke-direct {v0, v2}, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->dividerWillBeRemoved(Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_12b

    add-int/lit8 v15, v15, -0x1

    :cond_12b
    iget-object v8, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v8}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v16

    sub-int v16, v12, v16

    sub-int v16, v16, v15

    mul-int v16, v16, v8

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerViewWidth()I

    move-result v8

    mul-int/2addr v8, v15

    add-int v8, v8, v16

    iput v8, v0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->targetWidth:I

    if-lez v8, :cond_14b

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v8

    iput v14, v0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->targetWidth:I

    :cond_14b
    iget v8, v0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->targetWidth:I

    sub-int v8, v13, v8

    div-int/lit8 v8, v8, 0x2

    iput v8, v0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->newPaddingLR:I

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    sub-int/2addr v13, v8

    div-int/lit8 v13, v13, 0x2

    iput v13, v0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->oldPaddingLR:I

    invoke-direct {v0, v2}, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->startExpandOutAnimation(Ljava/util/List;)Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v10, v8}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_163
    :goto_163
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v8

    if-eqz v8, :cond_270

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "startUpdateExpandItemAnimation"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ",needAnim:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ",toBeExpandViews.size:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ",toBeRemovedViews.size:"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",toReplaceViews.size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",originalViews.size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",targetViews.size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->targetViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",curChildCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",targetWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->targetWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",oldPaddingLR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->oldPaddingLR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",newPaddingLR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->newPaddingLR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",dividerCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v6, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_270
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_284

    iget-object v1, v0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->toBeAddViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v3}, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->startExpandReplaceAnim(Ljava/util/ArrayList;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_284
    invoke-direct {v0, v5}, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->startAddNewItemInScreen(Z)V

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2a5

    if-eqz v5, :cond_29e

    iget-object v1, v0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->updateAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_296

    invoke-virtual {v1, v10}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    :cond_296
    iget-object v1, v0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->updateAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_2ac

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2ac

    :cond_29e
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->animationEnd(Z)V

    iput-boolean v1, v0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->isUpdatingWithOutAnimation:Z

    goto :goto_2ac

    :cond_2a5
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->setExpandUpdatingFlag(Z)V

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->checkPendingUpdateRunnable()V

    :cond_2ac
    :goto_2ac
    iget-object v1, v0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->updateAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_2b8

    new-instance v2, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper$startUpdateExpandItemAnimation$1;

    invoke-direct {v2, v0}, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper$startUpdateExpandItemAnimation$1;-><init>(Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2b8
    return-void
.end method

.method public updateGridSize([Landroid/view/View;IZ)Z
    .registers 7

    const-string v0, "childView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anim end to updateGridSize countX:"

    const-string v1, "Hotseat_expand"

    const-string v2, "HotseatExpandCenterLayoutAnimHelper"

    invoke-static {v0, p2, v1, v2}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->updateGridSize([Landroid/view/View;IZ)Z

    move-result p0

    return p0
.end method
