.class public final Lcom/android/quickstep/views/OplusTaskMenuViewImpl;
.super Lcom/android/quickstep/views/TaskMenuView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/views/OplusTaskMenuViewImpl$Companion;
    }
.end annotation


# static fields
.field public static final ANIM_CLOSE_DURATION:J = 0x15eL

.field public static final ANIM_OPEN_DURATION:J = 0x190L

.field public static final ANIM_PIVOT_OFFSET_SCALE:F = 0.04f

.field private static final CALLER_DEPTH:I = 0x3

.field public static final Companion:Lcom/android/quickstep/views/OplusTaskMenuViewImpl$Companion;

.field private static final FIRST:I = 0x1

.field private static final LAST:I = 0x2

.field private static final MAX_MENU_WIDTH_SCALE:F = 0.8f

.field private static final NORMAL:I = 0x3

.field private static final ONLY_ONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OplusTaskMenuView"


# instance fields
.field private expandWidth:Z

.field private mCurFocusViewIndex:I

.field private final mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mKeyDownEventForTablet:Z

.field private mListView:Landroid/widget/ListView;

.field private mOptionIncrement:I

.field private mPopupListItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskSize:Landroid/graphics/Point;

.field private shortcuts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/popup/SystemShortcut<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/OplusTaskMenuViewImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->Companion:Lcom/android/quickstep/views/OplusTaskMenuViewImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/views/TaskMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->mTaskSize:Landroid/graphics/Point;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setClipToOutline(Z)V

    new-instance p1, Lcom/android/quickstep/views/OplusTaskMenuViewImpl$1;

    invoke-direct {p1, p0}, Lcom/android/quickstep/views/OplusTaskMenuViewImpl$1;-><init>(Lcom/android/quickstep/views/OplusTaskMenuViewImpl;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0702e3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->mOptionIncrement:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->mCurFocusViewIndex:I

    new-instance p1, Lcom/android/quickstep/views/j;

    invoke-direct {p1, p0}, Lcom/android/quickstep/views/j;-><init>(Lcom/android/quickstep/views/OplusTaskMenuViewImpl;)V

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private final closeSafely(ZZ)V
    .registers 4

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->mCurFocusViewIndex:I

    iget-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/AbstractFloatingView;->close(ZZ)V

    :cond_a
    return-void
.end method

.method private final createContentView(Landroid/content/Context;)Landroid/view/ViewGroup;
    .registers 7

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d01d4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type android.widget.FrameLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a01f2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x7f0402e4

    aput v4, v3, v2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_40

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0805c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_40
    iget-object v3, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->mListView:Landroid/widget/ListView;

    if-nez v3, :cond_45

    goto :goto_48

    :cond_45
    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_48
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07057f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->mListView:Landroid/widget/ListView;

    const-string/jumbo v3, "null cannot be cast to non-null type com.coui.appcompat.list.COUIForegroundListView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/coui/appcompat/list/COUIForegroundListView;

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/list/COUIForegroundListView;->setRadius(F)V

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070f54

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f06038d

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-static {p0, v1, p1}, Lcom/coui/appcompat/uiutil/UIUtil;->k(Landroid/view/View;II)V

    return-object v0
.end method

.method public static synthetic f(Lcom/android/quickstep/views/OplusTaskMenuViewImpl;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->mItemClickListener$lambda$11(Lcom/android/quickstep/views/OplusTaskMenuViewImpl;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic g(Lcom/android/quickstep/views/OplusTaskMenuViewImpl;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->populateAndShowForTask$lambda$3(Lcom/android/quickstep/views/OplusTaskMenuViewImpl;)V

    return-void
.end method

.method private static final mItemClickListener$lambda$11(Lcom/android/quickstep/views/OplusTaskMenuViewImpl;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->mPopupListItem:Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_46

    iget-object p1, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->mPopupListItem:Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gt p1, p3, :cond_1d

    goto :goto_46

    :cond_1d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "on item click: view = "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "OplusTaskMenuView"

    invoke-static {p4, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->shortcuts:Ljava/util/ArrayList;

    if-eqz p1, :cond_43

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/popup/SystemShortcut;

    if-eqz p1, :cond_43

    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_43
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->closeSafely()V

    :cond_46
    :goto_46
    return-void
.end method

.method private static final populateAndShowForTask$lambda$3(Lcom/android/quickstep/views/OplusTaskMenuViewImpl;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->animateOpen()V

    return-void
.end method

.method private final setItemBgOnSelect(II)V
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->mListView:Landroid/widget/ListView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, p1}, Landroidx/core/view/ViewGroupKt;->get(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a05bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_20

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f0607b7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :cond_20
    if-gez p2, :cond_23

    return-void

    :cond_23
    iget-object p1, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->mListView:Landroid/widget/ListView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1, p2}, Landroidx/core/view/ViewGroupKt;->get(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_40

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const p2, 0x7f06043e

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :cond_40
    return-void
.end method


# virtual methods
.method public addMenuOptions(Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    const-string/jumbo v0, "taskContainertaskView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->shortcuts:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskView:Lcom/android/quickstep/views/TaskView;

    const-string/jumbo v1, "mTaskView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->shortcuts:Ljava/util/ArrayList;

    invoke-static {v0, p1, v1}, Lcom/oplus/quickstep/shortcuts/OplusTaskOverlayFactoryKt;->getPopupListWindowItems(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->mPopupListItem:Ljava/util/ArrayList;

    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->createContentView(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->mListView:Landroid/widget/ListView;

    if-nez p1, :cond_30

    goto :goto_48

    :cond_30
    new-instance v0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->mPopupListItem:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/views/OplusTaskMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f0808da

    invoke-static {v1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_48
    iget-object p1, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->mListView:Landroid/widget/ListView;

    if-nez p1, :cond_4d

    goto :goto_52

    :cond_4d
    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :goto_52
    return-void
.end method

.method public animateOpen()V
    .registers 5

    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    instance-of v1, v0, Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_9

    check-cast v0, Lcom/android/launcher/Launcher;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    sget-object v3, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_18

    move v0, v1

    goto :goto_19

    :cond_18
    move v0, v2

    :goto_19
    if-eqz v0, :cond_21

    iput-boolean v1, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->handleClose(Z)V

    return-void

    :cond_21
    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->animateOpenOrClosed(Z)V

    iput-boolean v1, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_36

    iput-boolean v2, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->mKeyDownEventForTablet:Z

    :cond_36
    return-void
.end method

.method public animateOpenOrClosed(Z)V
    .registers 8

    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_d

    goto :goto_e

    :cond_d
    move v1, v2

    :goto_e
    if-eqz v1, :cond_18

    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_18
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    const/4 v0, 0x2

    sget-object v1, Landroid/widget/LinearLayout;->SCALE_X:Landroid/util/Property;

    new-array v2, v0, [F

    if-eqz p1, :cond_2e

    fill-array-data v2, :array_ca

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_35

    :cond_2e
    fill-array-data v2, :array_d2

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    :goto_35
    sget-object v2, Landroid/widget/LinearLayout;->SCALE_Y:Landroid/util/Property;

    new-array v3, v0, [F

    if-eqz p1, :cond_43

    fill-array-data v3, :array_da

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    goto :goto_4a

    :cond_43
    fill-array-data v3, :array_e2

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    :goto_4a
    sget-object v3, Landroid/widget/LinearLayout;->ALPHA:Landroid/util/Property;

    new-array v4, v0, [F

    if-eqz p1, :cond_58

    fill-array-data v4, :array_ea

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    goto :goto_5f

    :cond_58
    fill-array-data v4, :array_f2

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    :goto_5f
    new-instance v4, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v4}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->FLOAT_OPEN_CLOSE:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v5, p0, Lcom/android/quickstep/views/TaskMenuView;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_c8

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    if-nez p1, :cond_7e

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_7e
    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isHeaderEnable()Z

    move-result v1

    if-eqz v1, :cond_b3

    if-eqz p1, :cond_9a

    iget-object v1, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskView:Lcom/android/quickstep/views/TaskView;

    iget-object v1, v1, Lcom/android/quickstep/views/TaskView;->mHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    invoke-virtual {v1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v1

    sget-object v2, Landroid/widget/LinearLayout;->ROTATION:Landroid/util/Property;

    new-array v0, v0, [F

    fill-array-data v0, :array_fa

    invoke-static {v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_ad

    :cond_9a
    iget-object v1, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskView:Lcom/android/quickstep/views/TaskView;

    iget-object v1, v1, Lcom/android/quickstep/views/TaskView;->mHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    invoke-virtual {v1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v1

    sget-object v2, Landroid/widget/LinearLayout;->ROTATION:Landroid/util/Property;

    new-array v0, v0, [F

    fill-array-data v0, :array_102

    invoke-static {v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_ad
    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_b3
    new-instance v0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl$animateOpenOrClosed$1$1;

    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/views/OplusTaskMenuViewImpl$animateOpenOrClosed$1$1;-><init>(Lcom/android/quickstep/views/OplusTaskMenuViewImpl;Z)V

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p1, :cond_c0

    const-wide/16 p0, 0x15e

    goto :goto_c2

    :cond_c0
    const-wide/16 p0, 0x190

    :goto_c2
    invoke-virtual {v5, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    :cond_c8
    return-void

    nop

    :array_ca
    .array-data 4
        0x3f800000  # 1.0f
        0x3f666666  # 0.9f
    .end array-data

    :array_d2
    .array-data 4
        0x3f666666  # 0.9f
        0x3f800000  # 1.0f
    .end array-data

    :array_da
    .array-data 4
        0x3f800000  # 1.0f
        0x3f666666  # 0.9f
    .end array-data

    :array_e2
    .array-data 4
        0x3f666666  # 0.9f
        0x3f800000  # 1.0f
    .end array-data

    :array_ea
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data

    :array_f2
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_fa
    .array-data 4
        0x43340000  # 180.0f
        0x0
    .end array-data

    :array_102
    .array-data 4
        0x0
        0x43340000  # 180.0f
    .end array-data
.end method

.method public closeComplete()V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    instance-of v1, v0, Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_15

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher.Launcher"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getRecentContainer()Lcom/android/launcher3/RecentContainerView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_15
    invoke-super {p0}, Lcom/android/quickstep/views/TaskMenuView;->closeComplete()V

    sget-object p0, Lcom/oplus/quickstep/utils/OplusTaskUtils;->INSTANCE:Lcom/oplus/quickstep/utils/OplusTaskUtils;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->resetClickTime()V

    return-void
.end method

.method public final closeSafely()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->mCurFocusViewIndex:I

    iget-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->closeSafely(ZZ)V

    :cond_b
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_9a

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto/16 :goto_9a

    :cond_15
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_23

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->mKeyDownEventForTablet:Z

    xor-int/2addr v0, v2

    iput-boolean v1, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->mKeyDownEventForTablet:Z

    goto :goto_24

    :cond_23
    move v0, v1

    :goto_24
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_2c

    if-eqz v0, :cond_3a

    :cond_2c
    iput-boolean v2, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->mKeyDownEventForTablet:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x42

    const/4 v4, -0x1

    if-eq v0, v3, :cond_79

    packed-switch v0, :pswitch_data_a0

    :cond_3a
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_3f  #0x15, 0x16
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->closeSafely()V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_47  #0x14
    iget p1, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->mCurFocusViewIndex:I

    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->mListView:Landroid/widget/ListView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->mCurFocusViewIndex:I

    invoke-direct {p0, v0, p1}, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->setItemBgOnSelect(II)V

    return v2

    :pswitch_5b  #0x13
    iget p1, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->mCurFocusViewIndex:I

    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->mCurFocusViewIndex:I

    if-ne p1, v4, :cond_65

    iput v1, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->mCurFocusViewIndex:I

    :cond_65
    if-nez p1, :cond_73

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->mListView:Landroid/widget/ListView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->mCurFocusViewIndex:I

    :cond_73
    iget v0, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->mCurFocusViewIndex:I

    invoke-direct {p0, v0, p1}, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->setItemBgOnSelect(II)V

    return v2

    :cond_79
    iget p1, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->mCurFocusViewIndex:I

    if-ltz p1, :cond_99

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->shortcuts:Ljava/util/ArrayList;

    if-eqz v0, :cond_97

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/popup/SystemShortcut;

    if-eqz p1, :cond_97

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->mListView:Landroid/widget/ListView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->mCurFocusViewIndex:I

    invoke-static {v0, v1}, Landroidx/core/view/ViewGroupKt;->get(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_97
    iput v4, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->mCurFocusViewIndex:I

    :cond_99
    return v2

    :cond_9a
    :goto_9a
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_a0
    .packed-switch 0x13
        :pswitch_5b  #00000013
        :pswitch_47  #00000014
        :pswitch_3f  #00000015
        :pswitch_3f  #00000016
    .end packed-switch
.end method

.method public handleClose(Z)V
    .registers 4

    const-string v0, "OplusTaskMenuView"

    :try_start_2
    invoke-super {p0, p1}, Lcom/android/quickstep/views/TaskMenuView;->handleClose(Z)V

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isHeaderEnable()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object p0, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskView:Lcom/android/quickstep/views/TaskView;

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.quickstep.views.OplusTaskViewImpl"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getHeaderView()Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setRotation(F)V

    :cond_21
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_48

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleClose(), animate="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", caller="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_48
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_4a
    .catchall {:try_start_2 .. :try_end_4a} :catchall_4b

    goto :goto_50

    :catchall_4b
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_50
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_6a

    const-string p1, "handleClose() remove fail catch NullpointException"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6a
    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1c

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    return p1

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    const p2, 0x3d23d70a  # 0.04f

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    goto :goto_23

    :cond_17
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p2

    sub-float/2addr p1, p3

    :goto_23
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setPivotX(F)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setPivotY(F)V

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isHeaderEnable()Z

    move-result p1

    if-eqz p1, :cond_5e

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    if-eqz p1, :cond_4c

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p2

    sub-float/2addr p1, p3

    goto :goto_52

    :cond_4c
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    :goto_52
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setPivotX(F)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setPivotY(F)V

    :cond_5e
    return-void
.end method

.method public onMeasure(II)V
    .registers 14

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070c09

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070c0a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070574

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/high16 v1, -0x80000000

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v4, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->mListView:Landroid/widget/ListView;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    move v5, v2

    move v6, v5

    move v7, v6

    :goto_38
    if-ge v5, v4, :cond_78

    iget-object v8, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->mListView:Landroid/widget/ListView;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v5, v9, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v10, -0x2

    if-eq v9, v10, :cond_5d

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v9, 0x40000000  # 2.0f

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    :cond_5d
    invoke-virtual {v8, v1, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    if-nez v5, :cond_68

    move v10, v2

    goto :goto_69

    :cond_68
    move v10, v0

    :goto_69
    add-int/2addr v9, v10

    add-int/2addr v7, v9

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    if-le v9, v6, :cond_75

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    :cond_75
    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    :cond_78
    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->mListView:Landroid/widget/ListView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-gt v6, p1, :cond_84

    goto :goto_89

    :cond_84
    if-ge v6, p2, :cond_88

    move p1, v6

    goto :goto_89

    :cond_88
    move p1, p2

    :goto_89
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result p1

    const p2, 0x7f070c08

    const/4 v4, 0x1

    if-eqz p1, :cond_d1

    iget-object p1, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskView:Lcom/android/quickstep/views/TaskView;

    iget-object p1, p1, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-object v5, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskView:Lcom/android/quickstep/views/TaskView;

    iget-object v5, v5, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v5}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v5

    aget v5, v5, v2

    add-int/2addr p1, v5

    iget-object v5, p0, Lcom/android/quickstep/views/TaskMenuView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v5}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v5

    iget v5, v5, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    if-ge p1, v5, :cond_b4

    move p1, v4

    goto :goto_b5

    :cond_b4
    move p1, v2

    :goto_b5
    iget-object v5, p0, Lcom/android/quickstep/views/TaskMenuView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v5}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v5

    iget v5, v5, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget-object v6, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskView:Lcom/android/quickstep/views/TaskView;

    iget-object v6, v6, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v6}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v6

    aget v6, v6, v2

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_fb

    :cond_d1
    iget-object p1, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskView:Lcom/android/quickstep/views/TaskView;

    iget-object p1, p1, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object p1

    aget p1, p1, v2

    if-lez p1, :cond_df

    move p1, v4

    goto :goto_e0

    :cond_df
    move p1, v2

    :goto_e0
    iget-object v5, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskView:Lcom/android/quickstep/views/TaskView;

    iget-object v5, v5, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskView:Lcom/android/quickstep/views/TaskView;

    iget-object v6, v6, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v6}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v6

    aget v6, v6, v2

    add-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    :goto_fb
    sub-int/2addr v5, p2

    if-eqz p1, :cond_104

    iget p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-le p1, v5, :cond_104

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_104
    iget-object p1, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRotation()I

    move-result p1

    if-eq p1, v4, :cond_120

    iget-object p1, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRotation()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_11e

    goto :goto_120

    :cond_11e
    move p1, v2

    goto :goto_121

    :cond_120
    :goto_120
    move p1, v4

    :goto_121
    const p2, 0x7f070c07

    if-eqz p1, :cond_142

    iget-object p1, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskView:Lcom/android/quickstep/views/TaskView;

    iget-object p1, p1, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-object v4, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskView:Lcom/android/quickstep/views/TaskView;

    iget-object v4, v4, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v4}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v4

    aget v2, v4, v2

    add-int/2addr p1, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_15d

    :cond_142
    iget-object p1, p0, Lcom/android/quickstep/views/TaskMenuView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget-object v2, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskView:Lcom/android/quickstep/views/TaskView;

    iget-object v2, v2, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v2}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v2

    aget v2, v2, v4

    sub-int/2addr p1, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    :goto_15d
    sub-int/2addr p1, p2

    if-le v7, p1, :cond_161

    move v7, p1

    :cond_161
    iput v7, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-super {p0, v1, v3}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public onRotationChanged()V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_d

    goto :goto_e

    :cond_d
    move v1, v2

    :goto_e
    if-eqz v1, :cond_18

    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_18
    iget-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-eqz v0, :cond_1f

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->handleClose(Z)V

    :cond_1f
    return-void
.end method

.method public onScrollChanged()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->closeSafely(ZZ)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_2e

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_2e

    sget-object p1, Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector;->INSTANCE:Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector;

    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    const-string v1, "mActivity.getOverviewPanel()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector;->isShowing(Lcom/android/quickstep/views/RecentsView;)Z

    move-result p1

    if-nez p1, :cond_2e

    const-string p1, "QuickStep"

    const-string v0, "OplusTaskMenuView"

    const-string/jumbo v1, "onWindowFocusChanged(), close."

    invoke-static {p1, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_2e
    return-void
.end method

.method public orientAroundTaskView(Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V
    .registers 5

    const-string/jumbo v0, "taskContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/widget/LinearLayout;->measure(II)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/views/TaskMenuView;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setScaleX(F)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setScaleY(F)V

    iget p1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr v2, p1

    iget p1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, p1

    int-to-float p1, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    iget-object v1, p0, Lcom/android/quickstep/views/TaskMenuView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getOverScrollShift()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->setPosition(FFI)V

    return-void
.end method

.method public populateAndLayoutMenu()Z
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    const-string/jumbo v1, "mTaskContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->addMenuOptions(Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->orientAroundTaskView(Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V

    const/4 p0, 0x1

    return p0
.end method

.method public populateAndShowForTask(Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Z
    .registers 5

    const-string/jumbo v0, "taskContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    return v1

    :cond_e
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    instance-of v2, v0, Lcom/android/launcher/Launcher;

    if-eqz v2, :cond_24

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.launcher.Launcher"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getRecentContainer()Lcom/android/launcher3/RecentContainerView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_2b

    :cond_24
    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :goto_2b
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskView:Lcom/android/quickstep/views/TaskView;

    iput-object p1, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->populateAndLayoutMenu()Z

    move-result p1

    if-nez p1, :cond_3a

    return v1

    :cond_3a
    new-instance p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/a;

    invoke-direct {p1, p0}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/a;-><init>(Lcom/android/quickstep/views/OplusTaskMenuViewImpl;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/android/quickstep/views/TaskMenuView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.quickstep.views.RecentsView<*, *>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1, p0}, Lcom/android/quickstep/views/RecentsView;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    const/4 p0, 0x1

    return p0
.end method

.method public setPosition(FFI)V
    .registers 21

    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/android/quickstep/views/TaskMenuView;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getDegreesRotated()F

    move-result v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setRotation(F)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v11

    iget-object v0, v9, Lcom/android/quickstep/views/TaskMenuView;->mTaskView:Lcom/android/quickstep/views/TaskView;

    instance-of v1, v0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v1, :cond_20

    check-cast v0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getThumbnailTopMargin()I

    move-result v0

    move v12, v0

    goto :goto_2b

    :cond_2a
    move v12, v1

    :goto_2b
    iget-object v0, v9, Lcom/android/quickstep/views/TaskMenuView;->mTaskView:Lcom/android/quickstep/views/TaskView;

    instance-of v0, v0, Lcom/android/quickstep/views/OplusGroupedTaskView;

    if-eqz v0, :cond_4d

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_4d

    sget-object v0, Lcom/android/quickstep/views/TaskMenuView;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, v9, Lcom/android/quickstep/views/TaskMenuView;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    move v7, v0

    goto :goto_4e

    :cond_4d
    move v7, v1

    :goto_4e
    iget-object v0, v9, Lcom/android/quickstep/views/TaskMenuView;->mTaskView:Lcom/android/quickstep/views/TaskView;

    instance-of v1, v0, Lcom/android/quickstep/views/OplusGroupedTaskView;

    if-eqz v1, :cond_5b

    sget-object v0, Lcom/android/quickstep/views/TaskMenuView;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_66

    :cond_5b
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_66
    move v13, v0

    iget-object v0, v9, Lcom/android/quickstep/views/TaskMenuView;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v2

    const-string/jumbo v14, "mTaskView!!.thumbnail"

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRotation()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string/jumbo v15, "resources"

    invoke-static {v8, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v10

    move/from16 v1, p1

    move-object/from16 v3, p0

    move v5, v12

    move v6, v11

    invoke-interface/range {v0 .. v8}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->getOplusTaskMenuX(FLandroid/view/View;Landroid/view/View;IIZILandroid/content/res/Resources;)F

    move-result v16

    iget-object v0, v9, Lcom/android/quickstep/views/TaskMenuView;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v2

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRotation()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v10

    move/from16 v1, p2

    move v7, v13

    invoke-interface/range {v0 .. v8}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->getOplusTaskMenuY(FLandroid/view/View;Landroid/view/View;IIZILandroid/content/res/Resources;)F

    move-result v0

    const-string/jumbo v1, "null cannot be cast to non-null type android.view.View"

    if-eqz v11, :cond_d3

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_d3

    sget-object v2, Lcom/android/quickstep/views/TaskMenuView;->sTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v16, v2, v3

    :cond_d3
    if-eqz v11, :cond_f6

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_f6

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isHeaderEnable()Z

    move-result v2

    if-eqz v2, :cond_f6

    sget-object v2, Lcom/android/quickstep/views/TaskMenuView;->sTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v16, v2, v3

    :cond_f6
    if-eqz v11, :cond_132

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isHeaderEnable()Z

    move-result v2

    if-nez v2, :cond_132

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_132

    sget-object v2, Lcom/android/quickstep/views/TaskMenuView;->sTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v16, v2, v1

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_132

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    sub-float v16, v16, v1

    :cond_132
    move/from16 v1, v16

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_165

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPosition: isRtl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", finalX="

    const-string v4, ", finalY="

    move/from16 v5, p2

    invoke-static {v2, v5, v3, v1, v4}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    const-string v3, "OplusTaskMenuView"

    invoke-static {v2, v0, v3}, Lcom/android/common/util/v;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    :cond_165
    iget-object v2, v9, Lcom/android/quickstep/views/TaskMenuView;->mTaskView:Lcom/android/quickstep/views/TaskView;

    const-string/jumbo v3, "mTaskView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->getOplusTaskMenuXOffset(Lcom/android/quickstep/views/TaskView;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setX(F)V

    iget-object v1, v9, Lcom/android/quickstep/views/TaskMenuView;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10, v1}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->getOplusTaskMenuYOffset(Lcom/android/quickstep/views/TaskView;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setY(F)V

    return-void
.end method

.method public final updateTaskSize(II)V
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->mTaskSize:Landroid/graphics/Point;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Point;->set(II)V

    return-void
.end method
