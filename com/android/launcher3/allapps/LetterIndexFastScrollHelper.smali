.class public Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$TouchSearchActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/AppLauncher;",
        ":",
        "Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$TouchSearchActionListener;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLetterIndexFastScrollHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LetterIndexFastScrollHelper.kt\ncom/android/launcher3/allapps/LetterIndexFastScrollHelper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,348:1\n1#2:349\n252#3:350\n37#4,2:351\n*S KotlinDebug\n*F\n+ 1 LetterIndexFastScrollHelper.kt\ncom/android/launcher3/allapps/LetterIndexFastScrollHelper\n*L\n180#1:350\n230#1:351,2\n*E\n"
    }
.end annotation


# static fields
.field public static final ALPHABET_INDEX_BOTTOM:Ljava/lang/String; = "#"

.field public static final ALPHABET_INDEX_TOP:Ljava/lang/String; = "↑"

.field public static final Companion:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper$Companion;

.field public static final MINIMUM_NUMBER_OF_INDEXES:I = 0x4

.field public static final MIN_SMOOTH_SNAP_NEXT_FRAME_RUNNABLE_TIME:I = 0x1ae

.field private static final TAG:Ljava/lang/String; = "LetterIndexFastScrollHelper"

.field public static final TYPE_DOWN:I = 0x1

.field public static final TYPE_UP:I = 0x2


# instance fields
.field private mCanStartAnim:Z

.field private final mContainerView:Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mFastScroller:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

.field private final mFastScrollerLayout:Landroid/view/View;

.field private final mHandleUpRunnable:Ljava/lang/Runnable;

.field private mLastDownTime:J

.field private final mParentRect:Landroid/graphics/Rect;

.field private final mScrollerRect:Landroid/graphics/Rect;

.field private mSectionName:Ljava/lang/String;

.field private mTouchSearchViewTouched:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->Companion:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "mContainerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mContainerView:Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;

    const v0, 0x7f0a01e9

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "mContainerView.findViewB…(R.id.coui_fast_scroller)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    iput-object v0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScroller:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    const v1, 0x7f0a01ea

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "mContainerView.findViewB…oui_fast_scroller_layout)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScrollerLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "mContainerView.context"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mContext:Landroid/content/Context;

    const-string v2, ""

    iput-object v2, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mSectionName:Ljava/lang/String;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mParentRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mScrollerRect:Landroid/graphics/Rect;

    new-instance v2, Landroidx/core/widget/a;

    invoke-direct {v2, p0}, Landroidx/core/widget/a;-><init>(Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;)V

    iput-object v2, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mHandleUpRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->setTouchSearchActionListener(Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$TouchSearchActionListener;)V

    new-instance v2, Landroidx/core/view/c;

    invoke-direct {v2, p0}, Landroidx/core/view/c;-><init>(Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->updateFastScrollerMargin()V

    sget-boolean p0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz p0, :cond_7f

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0707f6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v1, p0, p1, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_7f
    return-void
.end method

.method private static final _init_$lambda$2(Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    if-nez p1, :cond_50

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const-string p2, "LetterIndexFastScrollHelper"

    const/4 v0, 0x1

    if-eqz p1, :cond_43

    if-eq p1, v0, :cond_1f

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1f

    goto :goto_50

    :cond_1f
    const-string p1, "ACTION_UP"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mLastDownTime:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x1ae

    cmp-long v0, p1, v0

    if-gez v0, :cond_3f

    invoke-direct {p0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->getActiveRecyclerView()Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mHandleUpRunnable:Ljava/lang/Runnable;

    const/16 v1, 0x1ae

    int-to-long v1, v1

    sub-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_50

    :cond_3f
    invoke-direct {p0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->handleUpEvent()V

    goto :goto_50

    :cond_43
    iput-boolean v0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mTouchSearchViewTouched:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mLastDownTime:J

    const-string p0, "ACTION_DOWN"

    invoke-static {p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_50
    :goto_50
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic a(Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->_init_$lambda$2(Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mHandleUpRunnable$lambda$0(Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;)V

    return-void
.end method

.method private final getActiveRecyclerView()Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mContainerView:Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p0

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.allapps.OplusAllAppsRecyclerView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;

    return-object p0
.end method

.method private final getFastScrollerVisibility(Ljava/lang/Integer;)I
    .registers 4

    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object v1, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mContainerView:Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->inSearch()Z

    move-result v0

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mContainerView:Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;

    iget-boolean v0, v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mUsingTabs:Z

    if-nez v0, :cond_55

    const/4 v0, 0x0

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_36

    :cond_2e
    iget-object p1, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mContext:Landroid/content/Context;

    const-string v1, "draw_app_sort_rule_key"

    invoke-static {p1, v1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    :goto_36
    if-nez p1, :cond_55

    iget-object p1, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mContainerView:Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;

    if-eqz p1, :cond_56

    iget-object p0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mContainerView:Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object p0

    const-string/jumbo p1, "null cannot be cast to non-null type com.android.launcher3.allapps.OplusAlphabeticalAppsList<@[FlexibleNullability] T of com.android.launcher3.allapps.LetterIndexFastScrollHelper?>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->getFastScrollerVisibility(I)I

    move-result v0

    goto :goto_56

    :cond_55
    const/4 v0, 0x4

    :cond_56
    :goto_56
    return v0
.end method

.method private final getPos(Ljava/lang/CharSequence;)I
    .registers 5

    invoke-direct {p0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->getActiveRecyclerView()Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getFastScrollerSections()Ljava/util/List;

    move-result-object v0

    const-string v1, "getActiveRecyclerView().apps.fastScrollerSections"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mContainerView:Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getFirstSectionCheckPosition()I

    move-result p0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_1b
    if-ge p0, v1, :cond_2f

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    iget-object v2, v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c

    goto :goto_30

    :cond_2c
    add-int/lit8 p0, p0, 0x1

    goto :goto_1b

    :cond_2f
    const/4 p0, -0x1

    :goto_30
    return p0
.end method

.method private final getSection(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 6

    invoke-direct {p0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->getActiveRecyclerView()Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getNumAppRows()I

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_11

    return-object v1

    :cond_11
    const-string/jumbo v0, "↑"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    goto :goto_34

    :cond_1c
    const-string v0, "*"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_34

    :cond_25
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2d

    const/4 v0, 0x1

    goto :goto_2e

    :cond_2d
    move v0, v2

    :goto_2e
    if-eqz v0, :cond_34

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->getPos(Ljava/lang/CharSequence;)I

    move-result v2

    :cond_34
    :goto_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSection key = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "  pos = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LetterIndexFastScrollHelper"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v2, :cond_83

    invoke-direct {p0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->getActiveRecyclerView()Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mHandleUpRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->getActiveRecyclerView()Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getFastScrollerSections()Ljava/util/List;

    move-result-object p1

    const-string v0, "getActiveRecyclerView().apps.fastScrollerSections"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    invoke-direct {p0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->getActiveRecyclerView()Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->injectScrollToPositionAtProgress(Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;)V

    iget-object p0, p1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    const-string p1, "lastInfo.sectionName"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_83
    const/4 p1, -0x1

    if-ne v2, p1, :cond_9d

    invoke-direct {p0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->getActiveRecyclerView()Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mHandleUpRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->getActiveRecyclerView()Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->stopFloatIconViewAnima()V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->getActiveRecyclerView()Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->onFastScrollCompleted()V

    :cond_9d
    return-object v1
.end method

.method private final handleUpEvent()V
    .registers 3

    const-string v0, "LetterIndexFastScrollHelper"

    const-string v1, "handleUpEvent "

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mTouchSearchViewTouched:Z

    invoke-direct {p0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->getActiveRecyclerView()Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->onFastScrollComplete()V

    return-void
.end method

.method private final isLocaleZhOrEn()Z
    .registers 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "en"

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lk7/m;->k(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string/jumbo v0, "zh"

    invoke-static {v0, p0, v1}, Lk7/m;->k(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :cond_1c
    :goto_1c
    return v1
.end method

.method private static final mHandleUpRunnable$lambda$0(Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->handleUpEvent()V

    return-void
.end method

.method private final updateFastScrollerMargin()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScroller:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x10

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScroller:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final updateSortKeys()V
    .registers 4

    invoke-direct {p0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->isLocaleZhOrEn()Z

    move-result v0

    if-nez v0, :cond_4f

    iget-object v0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScroller:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mContainerView:Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;

    if-eqz v1, :cond_34

    iget-object v0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mContainerView:Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.allapps.OplusAlphabeticalAppsList<@[FlexibleNullability] T of com.android.launcher3.allapps.LetterIndexFastScrollHelper?>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->getIndexSortArray()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "mContainerView.apps as O…lAppsList).indexSortArray"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_34
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_4a

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScroller:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->setKeys([Ljava/lang/String;)V

    goto :goto_4f

    :cond_4a
    iget-object p0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScroller:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4f
    :goto_4f
    return-void
.end method


# virtual methods
.method public final canStartAnim()Z
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mCanStartAnim:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScroller:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_10

    move p0, v1

    goto :goto_11

    :cond_10
    move p0, v2

    :goto_11
    if-eqz p0, :cond_14

    goto :goto_15

    :cond_14
    move v1, v2

    :goto_15
    return v1
.end method

.method public final getFastScroller()Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScroller:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    return-object p0
.end method

.method public final getFastScrollerLayout()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScrollerLayout:Landroid/view/View;

    return-object p0
.end method

.method public final getSectionName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mSectionName:Ljava/lang/String;

    return-object p0
.end method

.method public final isHitInFastScroller(Landroid/view/MotionEvent;)Z
    .registers 4

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScroller:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mScrollerRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mScrollerRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public final isHitInParent(Landroid/view/MotionEvent;)Z
    .registers 4

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScrollerLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mParentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mParentRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public final isSearchViewTouched()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mTouchSearchViewTouched:Z

    return p0
.end method

.method public onKey(Ljava/lang/CharSequence;)V
    .registers 3

    const-string v0, "charSequence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->getSection(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mSectionName:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    iput-object p1, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mSectionName:Ljava/lang/String;

    const-string v0, ""

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->setCanStartAnim(Z)V

    :cond_1f
    return-void
.end method

.method public onLongKey(Ljava/lang/CharSequence;)V
    .registers 3

    const-string p0, "charSequence"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onLongKey "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LetterIndexFastScrollHelper"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNameClick(Ljava/lang/CharSequence;)V
    .registers 3

    const-string p0, "charSequence"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onNameClick "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LetterIndexFastScrollHelper"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final reset()V
    .registers 3

    const-string v0, "LetterIndexFastScrollHelper"

    const-string/jumbo v1, "reset "

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->setCanStartAnim(Z)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScroller:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    invoke-virtual {v1}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->closing()V

    const-string v1, ""

    iput-object v1, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mSectionName:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mTouchSearchViewTouched:Z

    return-void
.end method

.method public final setCanStartAnim(Z)V
    .registers 4

    const-string/jumbo v0, "setCanStartAnim "

    const-string v1, "LetterIndexFastScrollHelper"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mCanStartAnim:Z

    return-void
.end method

.method public final updateFastScrollerVisibility()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->updateFastScrollerVisibility(Ljava/lang/Integer;)V

    return-void
.end method

.method public final updateFastScrollerVisibility(Ljava/lang/Integer;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->getFastScrollerVisibility(Ljava/lang/Integer;)I

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScroller:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScroller:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->updateSortKeys()V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result p1

    if-nez p1, :cond_3e

    iget-object p1, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScroller:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_3e

    iget-object p1, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mContainerView:Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;

    iget-object p1, p1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    instance-of v0, p1, Lcom/android/launcher3/views/ActivityContext;

    if-eqz v0, :cond_3e

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.views.ActivityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    const-string v0, "mContainerView.mActivity…ityContext).deviceProfile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mContainerView:Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->applyAdapterPaddings(Lcom/android/launcher3/DeviceProfile;)V

    :cond_3e
    return-void
.end method

.method public final updateScrollerColor()V
    .registers 9

    :try_start_0
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getOplusLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_7

    goto :goto_d

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScroller:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_d
    const v1, 0x7f04021c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->b(Landroid/content/Context;II)I

    move-result v1

    iget-object v3, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScroller:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    iget-object v4, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mContext:Landroid/content/Context;

    const v5, 0x7f0809ab

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->setFirstKeyPopupDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScroller:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f060058

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->setPopupWindowTextColor(I)V

    iget-object v3, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mContainerView:Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;

    instance-of v3, v3, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    const/4 v4, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_5d

    iget-object v3, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScroller:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setForceDarkAllowed(Z)V

    iget-object v3, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScroller:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    iget-object v7, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->setFirstKeyPopupDrawable(Landroid/graphics/drawable/Drawable;)V

    new-array v3, v4, [I

    aput v1, v3, v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06084c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    aput v0, v3, v6

    goto :goto_73

    :cond_5d
    iget-object v3, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScroller:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setForceDarkAllowed(Z)V

    new-array v3, v4, [I

    aput v1, v3, v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06043a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    aput v0, v3, v6

    :goto_73
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v1, v4, [[I

    new-array v4, v6, [I

    const v5, 0x10100a7

    aput v5, v4, v2

    aput-object v4, v1, v2

    new-array v4, v6, [I

    const v5, 0x101009e

    aput v5, v4, v2

    aput-object v4, v1, v6

    invoke-direct {v0, v1, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScroller:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    invoke-virtual {p0, v0, v6}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->setCharTextColor(Landroid/content/res/ColorStateList;Z)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_93
    .catchall {:try_start_0 .. :try_end_93} :catchall_94

    goto :goto_99

    :catchall_94
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_99
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_b6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateScrollerColor error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LetterIndexFastScrollHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b6
    return-void
.end method
