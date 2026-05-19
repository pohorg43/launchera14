.class public Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;
.super Lcom/android/launcher3/taskbar/NavbarButtonsViewController;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController$Companion;

.field public static final FLAG_WORKSPACE_STATE_ACTIVE:I = 0x1000

.field public static final LIMIT_TASKBAR:F = 0.0f

.field public static final LIMIT_WORKSPACE:F = 1.0f

.field public static final POSITION_DEGREE_0:F = 0.0f

.field public static final POSITION_DEGREE_180:F = 180.0f

.field public static final RTL_ENABLE_VALUE:I = 0x5a


# instance fields
.field private a11yPropertyHolder:Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

.field private angle:I

.field private mA11yButton:Landroid/widget/ImageView;

.field private mBackAlphaAnimationHolder:Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

.field private mBackAnimationHolder:Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

.field private mBackButton:Landroid/widget/ImageView;

.field private mHomeAlphaAnimationHolder:Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

.field private mHomeAnimationHolder:Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

.field private mHomeButton:Landroid/widget/ImageView;

.field private mIsNavButtonsAtLeft:Z

.field private mIsNotificationShadeExpanded:Z

.field private mIsRecentLeftofHome:Z

.field private mLeftButton:Landroid/view/View;

.field private mNavButtonWidthInWorkspaceByWeight:I

.field private mNavbarDarkChangeListeners:Lcom/oplus/quickstep/common/IObserverListener;

.field private mPenddingAddWindow:Z

.field private mRecentAlphaAnimationHolder:Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

.field private mRecentAnimationHolder:Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

.field private mRecentsButton:Landroid/widget/ImageView;

.field private mRightButton:Landroid/view/View;

.field private mSwitchViewController:Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;

.field private mTempIsWorkspace:Z

.field private final mTempPropertyHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mTempalignment:F

.field private mVirtualKeyCombinationListener:Lcom/oplus/quickstep/common/IObserverListener;

.field private mVirtualKeyDirectionListener:Lcom/oplus/quickstep/common/IObserverListener;

.field private mWindowIsAdded:Z

.field private switchFlag:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->Companion:Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Landroid/widget/FrameLayout;)V
    .registers 4

    const-string/jumbo v0, "navButtonsView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Landroid/widget/FrameLayout;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mTempPropertyHolders:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_19

    const/16 p1, 0x2d

    goto :goto_1b

    :cond_19
    const/16 p1, 0x3c

    :goto_1b
    iput p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->angle:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->switchFlag:Z

    return-void
.end method

.method public static synthetic A(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->addA11yButton$lambda$14(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic B(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->addA11yButton$lambda$13(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic C(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->addRecentButton$lambda$4(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic D(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->addAnimationBetweenWorkSpaceAndTaskbar$lambda$6(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic E(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->addAnimationBetweenWorkSpaceAndTaskbar$lambda$9(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic F(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;I)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->addBackButton$lambda$1(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic G(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->addBackButton$lambda$0(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic H(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->addAnimationBetweenWorkSpaceAndTaskbar$lambda$10(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic I(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->moveNavButtonsToNewWindow$lambda$20(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)V

    return-void
.end method

.method public static synthetic J(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->moveNavButtonsBackToTaskbarWindow$lambda$26$lambda$25(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)V

    return-void
.end method

.method public static synthetic K(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->addAnimationBetweenWorkSpaceAndTaskbar$lambda$11(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic L(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->addAnimationBetweenWorkSpaceAndTaskbar$lambda$8(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic M(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->moveNavButtonsBackToTaskbarWindow$lambda$26(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)V

    return-void
.end method

.method public static synthetic N(Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->updateStateForSysuiFlags$lambda$12(Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;)V

    return-void
.end method

.method public static final synthetic access$getMBackAnimationHolder$p(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mBackAnimationHolder:Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    return-object p0
.end method

.method public static final synthetic access$getMHomeAnimationHolder$p(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mHomeAnimationHolder:Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    return-object p0
.end method

.method public static final synthetic access$getMIsNavButtonsAtLeft$p(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mIsNavButtonsAtLeft:Z

    return p0
.end method

.method public static final synthetic access$getMIsRecentLeftofHome$p(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mIsRecentLeftofHome:Z

    return p0
.end method

.method public static final synthetic access$getMRecentAnimationHolder$p(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mRecentAnimationHolder:Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    return-object p0
.end method

.method public static final synthetic access$setMIsNavButtonsAtLeft$p(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mIsNavButtonsAtLeft:Z

    return-void
.end method

.method public static final synthetic access$setMIsRecentLeftofHome$p(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mIsRecentLeftofHome:Z

    return-void
.end method

.method private final addA11yButton(Landroid/view/ViewGroup;Z)V
    .registers 13

    iget v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSysuiStateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    if-nez v0, :cond_e

    return-void

    :cond_e
    const-string v0, "NavbarButtonsViewController"

    const-string v3, "---->add A11yButton"

    invoke-static {v0, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1b

    const p2, 0x7f08075b

    goto :goto_1e

    :cond_1b
    const p2, 0x7f08075a

    :goto_1e
    move v4, p2

    const/16 v5, 0x10

    iget-object p2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v7, p2, Lcom/android/launcher3/taskbar/TaskbarControllers;->navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    const v8, 0x7f0a001d

    const/4 v9, 0x0

    move-object v3, p0

    move-object v6, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->addButton(IILandroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;IZ)Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mA11yButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_78

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mA11yButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_43

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    goto :goto_44

    :cond_43
    const/4 p1, 0x0

    :goto_44
    const-string/jumbo p2, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object p2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f070ff2

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-boolean p2, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mTempIsWorkspace:Z

    if-eqz p2, :cond_6d

    iget-object p2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f070fc0

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_6e

    :cond_6d
    move p2, v2

    :goto_6e
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object p2, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mA11yButton:Landroid/widget/ImageView;

    if-nez p2, :cond_75

    goto :goto_78

    :cond_75
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_78
    :goto_78
    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mA11yButton:Landroid/widget/ImageView;

    if-nez p1, :cond_7d

    goto :goto_80

    :cond_7d
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setForceDarkAllowed(Z)V

    :goto_80
    const-string/jumbo p1, "notifyA11yClick ====== addButton  mA11yButton"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object p2, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mA11yButton:Landroid/widget/ImageView;

    sget-object v0, Lcom/android/launcher3/taskbar/y;->a:Lcom/android/launcher3/taskbar/y;

    invoke-direct {p1, p2, v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Landroid/view/View;Ljava/util/function/IntPredicate;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->a11yPropertyHolder:Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->setA11yButtonValue(Z)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mA11yButton:Landroid/widget/ImageView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance p2, Lcom/android/launcher/guide/side/b;

    invoke-direct {p2, p0}, Lcom/android/launcher/guide/side/b;-><init>(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mTempPropertyHolders:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->a11yPropertyHolder:Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->a11yPropertyHolder:Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mA11yButton:Landroid/widget/ImageView;

    iget p0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->angle:I

    invoke-static {p1, p0}, Lcom/coui/appcompat/rippleutil/COUIRippleDrawableUtil;->a(Landroid/view/View;I)V

    return-void
.end method

.method private static final addA11yButton$lambda$13(I)Z
    .registers 2

    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_a

    and-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static final addA11yButton$lambda$14(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;Landroid/view/View;)V
    .registers 2

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->onButtonClick(I)V

    return-void
.end method

.method private static final addAnimationBetweenWorkSpaceAndTaskbar$lambda$10(I)Z
    .registers 1

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private static final addAnimationBetweenWorkSpaceAndTaskbar$lambda$11(I)Z
    .registers 1

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private static final addAnimationBetweenWorkSpaceAndTaskbar$lambda$6(I)Z
    .registers 1

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private static final addAnimationBetweenWorkSpaceAndTaskbar$lambda$7(I)Z
    .registers 1

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private static final addAnimationBetweenWorkSpaceAndTaskbar$lambda$8(I)Z
    .registers 1

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private static final addAnimationBetweenWorkSpaceAndTaskbar$lambda$9(I)Z
    .registers 1

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private final addBackButton(Landroid/view/ViewGroup;Z)V
    .registers 11

    const-string v0, "NavbarButtonsViewController"

    const-string v1, "---->add BackButton"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_d

    const p2, 0x7f080760

    goto :goto_10

    :cond_d
    const p2, 0x7f08075f

    :goto_10
    move v1, p2

    const/4 v2, 0x1

    iget-object p2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v4, p2, Lcom/android/launcher3/taskbar/TaskbarControllers;->navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    const v5, 0x7f0a00d0

    iget-boolean v6, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mTempIsWorkspace:Z

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->addButton(IILandroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;IZ)Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mBackButton:Landroid/widget/ImageView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setForceDarkAllowed(Z)V

    new-instance p1, Lcom/android/launcher3/util/MultiValueAlpha;

    iget-object p2, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mBackButton:Landroid/widget/ImageView;

    const/4 v0, 0x2

    invoke-direct {p1, p2, v0}, Lcom/android/launcher3/util/MultiValueAlpha;-><init>(Landroid/view/View;I)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mBackButtonAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/MultiValueAlpha;->setUpdateVisibility(Z)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mTempPropertyHolders:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mBackButtonAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/taskbar/b0;->a:Lcom/android/launcher3/taskbar/b0;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;Ljava/util/function/IntPredicate;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mTempPropertyHolders:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mBackButton:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/launcher3/model/p0;

    invoke-direct {v3, p0}, Lcom/android/launcher3/model/p0;-><init>(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)V

    sget-object v4, Landroid/view/View;->ROTATION:Landroid/util/Property;

    if-eqz p1, :cond_66

    const/16 p1, 0x5a

    goto :goto_68

    :cond_66
    const/16 p1, -0x5a

    :goto_68
    int-to-float v5, p1

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Ljava/lang/Object;Ljava/util/function/IntPredicate;Landroid/util/Property;FF)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mBackButton:Landroid/widget/ImageView;

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.taskbar.navbar.NavBarImageView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/taskbar/navbar/NavBarImageView;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    const-string v1, "mControllers.navButtonController"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, p2}, Lcom/android/launcher3/taskbar/navbar/NavBarImageView;->init(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;I)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mBackButton:Landroid/widget/ImageView;

    iget p0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->angle:I

    invoke-static {p1, p0}, Lcom/coui/appcompat/rippleutil/COUIRippleDrawableUtil;->a(Landroid/view/View;I)V

    return-void
.end method

.method private static final addBackButton$lambda$0(I)Z
    .registers 5

    and-int/lit8 v0, p0, 0x20

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    and-int/lit8 v3, p0, 0x10

    if-nez v3, :cond_11

    and-int/lit8 v3, p0, 0x40

    if-eqz v3, :cond_f

    goto :goto_11

    :cond_f
    move v3, v1

    goto :goto_12

    :cond_11
    :goto_11
    move v3, v2

    :goto_12
    and-int/lit16 p0, p0, 0x200

    if-nez p0, :cond_1b

    if-eqz v0, :cond_1a

    if-eqz v3, :cond_1b

    :cond_1a
    move v1, v2

    :cond_1b
    return v1
.end method

.method private static final addBackButton$lambda$1(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;I)Z
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_14

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isNavBarKidsModeActive()Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method private final addButton(IILandroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;IZ)Landroid/widget/ImageView;
    .registers 14

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz p6, :cond_c

    const p6, 0x7f0d0259

    goto :goto_f

    :cond_c
    const p6, 0x7f0d0258

    :goto_f
    move v6, p6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->addButton(IILandroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;II)Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method private final addButton(ILandroid/view/ViewGroup;II)Landroid/widget/ImageView;
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p4, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.taskbar.navbar.TaskbarNavbarPositionSwitchView"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchView;

    invoke-virtual {p4, p3}, Landroid/widget/ImageView;->setId(I)V

    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAllButtons:Ljava/util/ArrayList;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mSwitchViewController:Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;

    invoke-virtual {p4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p4
.end method

.method private static final addButton$lambda$15(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;ILandroid/view/View;)Z
    .registers 3

    const-string p2, "$navButtonController"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->onButtonLongClick(I)Z

    move-result p0

    return p0
.end method

.method private final addHomeButton(Landroid/view/ViewGroup;Z)V
    .registers 10

    const-string v0, "NavbarButtonsViewController"

    const-string v1, "---->add HomeButton"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_d

    const p2, 0x7f080764

    goto :goto_10

    :cond_d
    const p2, 0x7f080763

    :goto_10
    move v1, p2

    const/4 v2, 0x2

    iget-object p2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v4, p2, Lcom/android/launcher3/taskbar/TaskbarControllers;->navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    const v5, 0x7f0a0317

    iget-boolean v6, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mTempIsWorkspace:Z

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->addButton(IILandroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;IZ)Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mHomeButton:Landroid/widget/ImageView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setForceDarkAllowed(Z)V

    new-instance p1, Lcom/android/launcher3/util/MultiValueAlpha;

    iget-object p2, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mHomeButton:Landroid/widget/ImageView;

    const/4 v0, 0x2

    invoke-direct {p1, p2, v0}, Lcom/android/launcher3/util/MultiValueAlpha;-><init>(Landroid/view/View;I)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHomeButtonAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/MultiValueAlpha;->setUpdateVisibility(Z)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mTempPropertyHolders:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHomeButtonAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    invoke-virtual {v2, p2}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object p2

    sget-object v2, Lcom/android/launcher3/taskbar/w;->a:Lcom/android/launcher3/taskbar/w;

    invoke-direct {v1, p2, v2}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;Ljava/util/function/IntPredicate;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mHomeButton:Landroid/widget/ImageView;

    const-string/jumbo p2, "null cannot be cast to non-null type com.android.launcher3.taskbar.navbar.NavBarImageView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/taskbar/navbar/NavBarImageView;

    iget-object p2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p2, p2, Lcom/android/launcher3/taskbar/TaskbarControllers;->navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    const-string v1, "mControllers.navButtonController"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Lcom/android/launcher3/taskbar/navbar/NavBarImageView;->init(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;I)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mHomeButton:Landroid/widget/ImageView;

    iget p0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->angle:I

    invoke-static {p1, p0}, Lcom/coui/appcompat/rippleutil/COUIRippleDrawableUtil;->a(Landroid/view/View;I)V

    return-void
.end method

.method private static final addHomeButton$lambda$2(I)Z
    .registers 2

    and-int/lit8 v0, p0, 0x20

    if-nez v0, :cond_8

    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_c

    :cond_8
    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_e

    :cond_c
    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private final addRecentButton(Landroid/view/ViewGroup;Z)V
    .registers 10

    if-eqz p2, :cond_6

    const p2, 0x7f080769

    goto :goto_9

    :cond_6
    const p2, 0x7f080768

    :goto_9
    move v1, p2

    const/4 v2, 0x4

    iget-object p2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v4, p2, Lcom/android/launcher3/taskbar/TaskbarControllers;->navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    const v5, 0x7f0a04be

    iget-boolean v6, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mTempIsWorkspace:Z

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->addButton(IILandroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;IZ)Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mRecentsButton:Landroid/widget/ImageView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setForceDarkAllowed(Z)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHitboxExtender:Lcom/android/launcher3/taskbar/RecentsHitboxExtender;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mRecentsButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/q1;

    invoke-direct {v4, p0}, Lcom/android/launcher3/q1;-><init>(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)V

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->init(Landroid/view/View;Landroid/view/View;Lcom/android/launcher3/DeviceProfile;Ljava/util/function/Supplier;Landroid/os/Handler;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mRecentsButton:Landroid/widget/ImageView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/android/common/util/b1;

    invoke-direct {v0, p0}, Lcom/android/common/util/b1;-><init>(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mTempPropertyHolders:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mRecentsButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/launcher3/taskbar/v;

    invoke-direct {v2, p0}, Lcom/android/launcher3/taskbar/v;-><init>(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)V

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Landroid/view/View;Ljava/util/function/IntPredicate;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mRecentsButton:Landroid/widget/ImageView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setForceDarkAllowed(Z)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mRecentsButton:Landroid/widget/ImageView;

    const-string/jumbo p2, "null cannot be cast to non-null type com.android.launcher3.taskbar.navbar.NavBarImageView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/taskbar/navbar/NavBarImageView;

    iget-object p2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p2, p2, Lcom/android/launcher3/taskbar/TaskbarControllers;->navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    const-string v0, "mControllers.navButtonController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p1, p2, v0}, Lcom/android/launcher3/taskbar/navbar/NavBarImageView;->init(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;I)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mRecentsButton:Landroid/widget/ImageView;

    iget p0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->angle:I

    invoke-static {p1, p0}, Lcom/coui/appcompat/rippleutil/COUIRippleDrawableUtil;->a(Landroid/view/View;I)V

    return-void
.end method

.method private static final addRecentButton$lambda$3(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)[F
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mRecentsButton:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-static {v1, p0, v0, v2}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZ)F

    return-object v0
.end method

.method private static final addRecentButton$lambda$4(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;Landroid/view/View;)V
    .registers 2

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHitboxExtender:Lcom/android/launcher3/taskbar/RecentsHitboxExtender;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->onRecentsButtonClicked()V

    return-void
.end method

.method private static final addRecentButton$lambda$5(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;I)Z
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v0, p1, 0x20

    if-nez v0, :cond_18

    and-int/lit16 p1, p1, 0x100

    if-nez p1, :cond_18

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isNavBarKidsModeActive()Z

    move-result p0

    if-nez p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method private final calcNavButtonWidthInWorkspaceByWeight()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "mNavButtonsView.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const v2, 0x7f0b00cf

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v3, 0x7f0b00d0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const v4, 0x7f0b00d1

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit8 v4, v2, 0x3

    add-int/2addr v4, v3

    add-int/2addr v4, v0

    int-to-float v0, v2

    int-to-float v2, v4

    div-float/2addr v0, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mNavButtonWidthInWorkspaceByWeight:I

    const-string v0, "calcNavButtonWidthInWorkspace(), mNavButtonWidthInWorkspace="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mNavButtonWidthInWorkspaceByWeight:I

    const-string v1, "NavbarButtonsViewController"

    invoke-static {v0, p0, v1}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method private final changePositionButtonRotation()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    const/high16 v1, 0x43340000  # 180.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mLeftButton:Landroid/view/View;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mRightButton:Landroid/view/View;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setRotation(F)V

    goto :goto_30

    :cond_20
    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mLeftButton:Landroid/view/View;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mRightButton:Landroid/view/View;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setRotation(F)V

    :goto_30
    return-void
.end method

.method private final clearNavButtons(Landroid/view/ViewGroup;)V
    .registers 4

    const-string v0, "NavbarButtonsViewController"

    const-string v1, "clearNavButtons removeAllViewsInLayout"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mTempPropertyHolders:Ljava/util/ArrayList;

    invoke-static {v0}, Li4/v;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mTempPropertyHolders:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mRecentsButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_23

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAllButtons:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_23
    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mBackButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_2c

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAllButtons:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2c
    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mHomeButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_35

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAllButtons:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_35
    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mA11yButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_3e

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAllButtons:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3e
    return-void
.end method

.method private final initButtons(Landroid/view/ViewGroup;)V
    .registers 11

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const-string v1, "NavbarButtonsViewController"

    if-lez v0, :cond_13

    const-string p1, "initButtons updateNavPosition"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->updateNavPosition()V

    goto :goto_18

    :cond_13
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mIsRecentLeftofHome:Z

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->replacePosition(Landroid/view/ViewGroup;Z)V

    :goto_18
    const-string p1, "---->add LeftButton"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string/jumbo v0, "taskbar_region_is_dark"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const v0, 0x7f08089d

    const v3, 0x7f08089c

    if-eqz p1, :cond_35

    move v4, v0

    goto :goto_36

    :cond_35
    move v4, v3

    :goto_36
    iget-object v5, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    const-string/jumbo v6, "mNavButtonsView"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v7, 0x7f0a05d0

    const v8, 0x7f0d01a2

    invoke-direct {p0, v4, v5, v7, v8}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->addButton(ILandroid/view/ViewGroup;II)Landroid/widget/ImageView;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mLeftButton:Landroid/view/View;

    const-string v4, "---->add RightButton"

    invoke-static {v1, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_52

    goto :goto_53

    :cond_52
    move v0, v3

    :goto_53
    iget-object p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0a05d3

    const v3, 0x7f0d01a3

    invoke-direct {p0, v0, p1, v1, v3}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->addButton(ILandroid/view/ViewGroup;II)Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mRightButton:Landroid/view/View;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mLeftButton:Landroid/view/View;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setForceDarkAllowed(Z)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mRightButton:Landroid/view/View;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setForceDarkAllowed(Z)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->changePositionButtonRotation()V

    new-instance p1, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mLeftButton:Landroid/view/View;

    instance-of v1, v0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchView;

    const/4 v2, 0x0

    if-eqz v1, :cond_83

    check-cast v0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchView;

    goto :goto_84

    :cond_83
    move-object v0, v2

    :goto_84
    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mRightButton:Landroid/view/View;

    instance-of v3, v1, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchView;

    if-eqz v3, :cond_8d

    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchView;

    :cond_8d
    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    invoke-direct {p1, p0, v0, v2, v1}, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchView;Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchView;Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mSwitchViewController:Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;

    return-void
.end method

.method private static final moveNavButtonsBackToTaskbarWindow$lambda$26(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)V
    .registers 5

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "TaskView"

    const-string v1, "NavbarButtonsViewController"

    const-string/jumbo v2, "moveNavButtonsBackToTaskbarWindow: remove view from mSeparateWindowParent and add view to dragLayer"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_10
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSeparateWindowParent:Lcom/android/launcher3/views/BaseDragLayer;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v0

    const-string v2, "mContext.dragLayer"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "mNavButtonsView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/android/launcher3/taskbar/TaskbarUtils;->addViewCompat(Landroid/view/ViewGroup;Landroid/view/View;)V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_2f
    .catchall {:try_start_10 .. :try_end_2f} :catchall_30

    goto :goto_35

    :catchall_30
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_35
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_3c

    goto :goto_42

    :cond_3c
    const-string/jumbo v2, "moveNavButtonsBackToTaskbarWindow: "

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_42
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mWindowIsAdded:Z

    if-eqz v0, :cond_53

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mPenddingAddWindow:Z

    if-eqz v0, :cond_53

    new-instance v0, Lcom/android/launcher3/taskbar/l;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/l;-><init>(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)V

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/oplus/quickstep/utils/ChoreographerUtil;->postFrameCallbackDelay(Ljava/lang/Runnable;I)V

    :cond_53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mPenddingAddWindow:Z

    return-void
.end method

.method private static final moveNavButtonsBackToTaskbarWindow$lambda$26$lambda$25(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)V
    .registers 5

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "moveNavButtonsBackToTaskbarWindow: remove taskbar nav btn window, mWindowIsAdded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mWindowIsAdded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSeparateWindowParent:Lcom/android/launcher3/views/BaseDragLayer;

    invoke-static {v1}, Lcom/android/common/debug/LogUtils;->debugFormat(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskView"

    const-string v2, "NavbarButtonsViewController"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2f
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSeparateWindowParent:Lcom/android/launcher3/views/BaseDragLayer;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->removeWindowView(Landroid/view/View;)V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_39

    goto :goto_3e

    :catchall_39
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_3e
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_45

    goto :goto_61

    :cond_45
    const-string/jumbo v1, "moveNavButtonsBackToTaskbarWindow "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSeparateWindowParent:Lcom/android/launcher3/views/BaseDragLayer;

    invoke-static {v3}, Lcom/android/common/debug/LogUtils;->debugFormat(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " error, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mWindowIsAdded:Z

    return-void
.end method

.method private static final moveNavButtonsToNewWindow$lambda$20(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "moveNavButtonsToNewWindow: remove view from dragLayer and add view to mSeparateWindowParent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSeparateWindowParent:Lcom/android/launcher3/views/BaseDragLayer;

    invoke-static {v1}, Lcom/android/common/debug/LogUtils;->debugFormat(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskView"

    const-string v2, "NavbarButtonsViewController"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_25
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSeparateWindowParent:Lcom/android/launcher3/views/BaseDragLayer;

    const-string/jumbo v1, "mSeparateWindowParent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    const-string/jumbo v1, "mNavButtonsView"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->addViewCompat(Landroid/view/ViewGroup;Landroid/view/View;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_45
    .catchall {:try_start_25 .. :try_end_45} :catchall_46

    goto :goto_4b

    :catchall_46
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_4b
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_52

    goto :goto_58

    :cond_52
    const-string/jumbo v0, "moveNavButtonsToNewWindow error."

    invoke-static {v2, v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_58
    return-void
.end method

.method private final switchBetweenWorkspaceAndTaskbar(F)V
    .registers 5

    new-instance v0, Lcom/android/launcher3/graphics/h;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/graphics/h;-><init>(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;F)V

    iget v1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mTempalignment:F

    cmpg-float v1, v1, p1

    const/4 v2, 0x1

    if-nez v1, :cond_e

    move v1, v2

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    if-nez v1, :cond_14

    invoke-virtual {v0}, Lcom/android/launcher3/graphics/h;->run()V

    :cond_14
    iput p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mTempalignment:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v1, p1, v1

    if-gez v1, :cond_21

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_3c

    :cond_21
    iput-boolean v2, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->switchFlag:Z

    invoke-virtual {v0}, Lcom/android/launcher3/graphics/h;->run()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "---->alignment:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NavbarButtonsViewController"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    return-void
.end method

.method private static final switchBetweenWorkspaceAndTaskbar$lambda$27(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;F)V
    .registers 7

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mTempalignment:F

    cmpg-float v1, v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v1, :cond_25

    cmpg-float v0, v0, p1

    if-nez v0, :cond_14

    move v0, v3

    goto :goto_15

    :cond_14
    move v0, v2

    :goto_15
    if-eqz v0, :cond_23

    const/high16 v0, 0x3f800000  # 1.0f

    cmpg-float v0, p1, v0

    if-nez v0, :cond_1f

    move v0, v3

    goto :goto_20

    :cond_1f
    move v0, v2

    :goto_20
    if-eqz v0, :cond_23

    goto :goto_25

    :cond_23
    move v0, v2

    goto :goto_26

    :cond_25
    :goto_25
    move v0, v3

    :goto_26
    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->switchFlag:Z

    if-eqz v1, :cond_5f

    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mSwitchViewController:Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;

    if-eqz v1, :cond_3c

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->setTempIsWorkspace(Z)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mSwitchViewController:Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->setNavbarLayout()V

    :cond_3c
    const/16 v1, 0x1000

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateStateForFlag(IZ)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "switchBetweenWorkspaceAndTaskbar -->animation start alignment："

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NavbarButtonsViewController"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->applyState()V

    iput-boolean v2, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->switchFlag:Z

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mTempIsWorkspace:Z

    :cond_5f
    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mTempIsWorkspace:Z

    if-eq v0, p1, :cond_65

    iput-boolean v3, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->switchFlag:Z

    :cond_65
    return-void
.end method

.method public static synthetic u(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)[F
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->addRecentButton$lambda$3(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)[F

    move-result-object p0

    return-object p0
.end method

.method private final updateA11yButton()V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSysuiStateFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const-string v1, " mNavButtonContainer---> updateA11yButton,a11yVisible:"

    const-string v2, " ,mA11yButton："

    invoke-static {v1, v0, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mA11yButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NavbarButtonsViewController"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_3f

    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mA11yButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_3f

    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAllButtons:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mA11yButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->a11yPropertyHolder:Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    if-eqz v1, :cond_3a

    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3a
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mA11yButton:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->a11yPropertyHolder:Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    :cond_3f
    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mA11yButton:Landroid/widget/ImageView;

    if-nez v0, :cond_6d

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isThreeButtonNav()Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonContainer:Landroid/view/ViewGroup;

    const-string/jumbo v1, "mNavButtonContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->isRegionDark()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->addA11yButton(Landroid/view/ViewGroup;Z)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->a11yPropertyHolder:Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->a11yPropertyHolder:Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6d
    return-void
.end method

.method private final updateA11yButtonStateWhenFlagChange(I)V
    .registers 8

    iget v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSysuiStateFlags:I

    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    move v1, v2

    goto :goto_b

    :cond_a
    move v1, v3

    :goto_b
    and-int/lit8 v4, p1, 0x10

    if-eqz v4, :cond_11

    move v4, v2

    goto :goto_12

    :cond_11
    move v4, v3

    :goto_12
    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_18

    move v0, v2

    goto :goto_19

    :cond_18
    move v0, v3

    :goto_19
    and-int/lit8 v5, p1, 0x40

    if-nez v5, :cond_1e

    goto :goto_1f

    :cond_1e
    move v2, v3

    :goto_1f
    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->parseSystemUiFlags(I)V

    if-eq v0, v2, :cond_34

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mA11yButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_34

    if-eqz v4, :cond_34

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz v2, :cond_30

    goto :goto_31

    :cond_30
    const/4 v3, 0x4

    :goto_31
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_34
    if-eq v1, v4, :cond_39

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->updateA11yButton()V

    :cond_39
    return-void
.end method

.method private final updateNavPosition()V
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_bb

    iget-object v3, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const-string/jumbo v4, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/ImageView;

    sget-object v4, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v4}, Lcom/android/common/util/AppFeatureUtils;->isTaskbarSupport()Z

    move-result v4

    if-eqz v4, :cond_65

    iget-object v4, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mA11yButton:Landroid/widget/ImageView;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    iget-object v4, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070ff2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mA11yButton:Landroid/widget/ImageView;

    if-eqz v5, :cond_3e

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    goto :goto_3f

    :cond_3e
    const/4 v5, 0x0

    :goto_3f
    const-string/jumbo v6, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-boolean v6, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mTempIsWorkspace:Z

    if-eqz v6, :cond_59

    iget-object v6, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070fc0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_5a

    :cond_59
    move v6, v1

    :goto_5a
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v6, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mA11yButton:Landroid/widget/ImageView;

    if-nez v6, :cond_61

    goto :goto_8d

    :cond_61
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8d

    :cond_65
    iget-boolean v4, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mTempIsWorkspace:Z

    if-eqz v4, :cond_80

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_7d

    iget-object v4, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070ff4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_8d

    :cond_7d
    iget v4, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mNavButtonWidthInWorkspaceByWeight:I

    goto :goto_8d

    :cond_80
    iget-object v4, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070ff1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_8d
    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    if-eq v5, v4, :cond_bb

    const-string v5, " mNavButtonContainer---> changeNavPosition,img.width:"

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ,width:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NavbarButtonsViewController"

    invoke-static {v6, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    :cond_bb
    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method private static final updateStateForSysuiFlags$lambda$12(Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;)V
    .registers 2

    const-string/jumbo v0, "obj"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->endAnimation()V

    return-void
.end method

.method public static synthetic v(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;F)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->switchBetweenWorkspaceAndTaskbar$lambda$27(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;F)V

    return-void
.end method

.method public static synthetic w(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->addHomeButton$lambda$2(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic x(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;I)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->addRecentButton$lambda$5(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic y(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->addAnimationBetweenWorkSpaceAndTaskbar$lambda$7(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic z(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;ILandroid/view/View;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->addButton$lambda$15(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;ILandroid/view/View;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final addAnimationBetweenWorkSpaceAndTaskbar()V
    .registers 8

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070ff4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_16

    :cond_14
    iget v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mNavButtonWidthInWorkspaceByWeight:I

    :goto_16
    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070ff1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mBackButton:Landroid/widget/ImageView;

    const/4 v3, 0x3

    if-eqz v2, :cond_57

    new-instance v4, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v5, Lcom/android/launcher3/taskbar/z;->a:Lcom/android/launcher3/taskbar/z;

    invoke-direct {v4, v2, v5, v0, v1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Landroid/view/View;Ljava/util/function/IntPredicate;II)V

    iput-object v4, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mBackAnimationHolder:Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mTempPropertyHolders:Ljava/util/ArrayList;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v4, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mBackButton:Landroid/widget/ImageView;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v5, Lcom/android/launcher3/taskbar/x;->a:Lcom/android/launcher3/taskbar/x;

    new-array v6, v3, [F

    fill-array-data v6, :array_be

    invoke-direct {v2, v4, v5, v6}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Landroid/view/View;Ljava/util/function/IntPredicate;[F)V

    iput-object v2, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mBackAlphaAnimationHolder:Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v4, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mTempPropertyHolders:Ljava/util/ArrayList;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_57
    iget-object v2, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mHomeButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_8a

    new-instance v4, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v5, Lcom/android/launcher3/taskbar/u;->a:Lcom/android/launcher3/taskbar/u;

    invoke-direct {v4, v2, v5, v0, v1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Landroid/view/View;Ljava/util/function/IntPredicate;II)V

    iput-object v4, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mHomeAnimationHolder:Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mTempPropertyHolders:Ljava/util/ArrayList;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v4, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mHomeButton:Landroid/widget/ImageView;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v5, Lcom/android/launcher3/taskbar/a0;->a:Lcom/android/launcher3/taskbar/a0;

    new-array v6, v3, [F

    fill-array-data v6, :array_c8

    invoke-direct {v2, v4, v5, v6}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Landroid/view/View;Ljava/util/function/IntPredicate;[F)V

    iput-object v2, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mHomeAlphaAnimationHolder:Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v4, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mTempPropertyHolders:Ljava/util/ArrayList;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8a
    iget-object v2, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mRecentsButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_bd

    new-instance v4, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v5, Lcom/android/launcher3/taskbar/c0;->a:Lcom/android/launcher3/taskbar/c0;

    invoke-direct {v4, v2, v5, v0, v1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Landroid/view/View;Ljava/util/function/IntPredicate;II)V

    iput-object v4, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mRecentAnimationHolder:Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mTempPropertyHolders:Ljava/util/ArrayList;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mRecentsButton:Landroid/widget/ImageView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v2, Lcom/android/launcher3/taskbar/d0;->a:Lcom/android/launcher3/taskbar/d0;

    new-array v3, v3, [F

    fill-array-data v3, :array_d2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Landroid/view/View;Ljava/util/function/IntPredicate;[F)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mRecentAlphaAnimationHolder:Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mTempPropertyHolders:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_bd
    return-void

    :array_be
    .array-data 4
        0x3f800000  # 1.0f
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_c8
    .array-data 4
        0x3f800000  # 1.0f
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_d2
    .array-data 4
        0x3f800000  # 1.0f
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public addButton(IILandroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;II)Landroid/widget/ImageView;
    .registers 8

    const-string/jumbo v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "navButtonController"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3, p5, p6}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->addButton(Landroid/view/ViewGroup;II)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p4, p2}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->getButtonContentDescription(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/android/launcher3/taskbar/c;

    const/4 p3, 0x1

    invoke-direct {p1, p4, p2, p3}, Lcom/android/launcher3/taskbar/c;-><init>(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;II)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object p0
.end method

.method public addVisibleButtonsRegion(Lcom/android/launcher3/views/BaseDragLayer;Landroid/graphics/Region;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/views/BaseDragLayer<",
            "*>;",
            "Landroid/graphics/Region;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isSmallScreenMode()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->addVisibleButtonsRegion(Lcom/android/launcher3/views/BaseDragLayer;Landroid/graphics/Region;)V

    return-void
.end method

.method public final controlImageResource(Z)V
    .registers 4

    const-string v0, "NavbarRegionSamplingHelper  controlImageResource---->isNight:"

    const-string v1, " mSwitchViewController "

    invoke-static {v0, p1, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mSwitchViewController:Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavbarButtonsViewController"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mRecentsButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_26

    if-eqz p1, :cond_20

    const v1, 0x7f080769

    goto :goto_23

    :cond_20
    const v1, 0x7f080768

    :goto_23
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_26
    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mBackButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_36

    if-eqz p1, :cond_30

    const v1, 0x7f080760

    goto :goto_33

    :cond_30
    const v1, 0x7f08075f

    :goto_33
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_36
    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mHomeButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_46

    if-eqz p1, :cond_40

    const v1, 0x7f080764

    goto :goto_43

    :cond_40
    const v1, 0x7f080763

    :goto_43
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_46
    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mA11yButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_56

    if-eqz p1, :cond_50

    const v1, 0x7f08075b

    goto :goto_53

    :cond_50
    const v1, 0x7f08075a

    :goto_53
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_56
    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mSwitchViewController:Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;

    if-eqz p0, :cond_5d

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->updateImageResource(Z)V

    :cond_5d
    return-void
.end method

.method public final createNavTransYAnimForEnableChange(ZFF)Landroid/animation/Animator;
    .registers 5

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonTranslationYForEnableChange:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v0, p2}, Lcom/android/quickstep/AnimatedFloat;->updateValue(F)V

    :cond_7
    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonTranslationYForEnableChange:Lcom/android/quickstep/AnimatedFloat;

    const-string/jumbo v0, "mTaskbarNavButtonTranslationYForEnableChange"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p3, p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->createTaskbarTransYAnimForEnableChange(ZFFLcom/android/quickstep/AnimatedFloat;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public final getAngle()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->angle:I

    return p0
.end method

.method public final getMA11yButton()Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mA11yButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getMBackButton()Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mBackButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getMHomeButton()Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mHomeButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getMIsNotificationShadeExpanded()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mIsNotificationShadeExpanded:Z

    return p0
.end method

.method public final getMNavButtonWidthInWorkspaceByWeight()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mNavButtonWidthInWorkspaceByWeight:I

    return p0
.end method

.method public final getMNavbarDarkChangeListeners()Lcom/oplus/quickstep/common/IObserverListener;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mNavbarDarkChangeListeners:Lcom/oplus/quickstep/common/IObserverListener;

    return-object p0
.end method

.method public final getMPenddingAddWindow()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mPenddingAddWindow:Z

    return p0
.end method

.method public final getMRecentsButton()Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mRecentsButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getMSwitchViewController()Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mSwitchViewController:Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;

    return-object p0
.end method

.method public final getMTempIsWorkspace()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mTempIsWorkspace:Z

    return p0
.end method

.method public final getMTempalignment()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mTempalignment:F

    return p0
.end method

.method public final getMVirtualKeyCombinationListener()Lcom/oplus/quickstep/common/IObserverListener;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mVirtualKeyCombinationListener:Lcom/oplus/quickstep/common/IObserverListener;

    return-object p0
.end method

.method public final getMVirtualKeyDirectionListener()Lcom/oplus/quickstep/common/IObserverListener;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mVirtualKeyDirectionListener:Lcom/oplus/quickstep/common/IObserverListener;

    return-object p0
.end method

.method public final getMWindowIsAdded()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mWindowIsAdded:Z

    return p0
.end method

.method public final getNavButtonContainer()Landroid/view/ViewGroup;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonContainer:Landroid/view/ViewGroup;

    const-string/jumbo v0, "mNavButtonContainer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getSwitchFlag()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->switchFlag:Z

    return p0
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .registers 5

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->calcNavButtonWidthInWorkspaceByWeight()V

    sget-object v0, Lcom/oplus/quickstep/common/settingsvalue/NavigationSettingsValueProxy;->Companion:Lcom/oplus/quickstep/common/settingsvalue/NavigationSettingsValueProxy$Companion;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const-string v2, "mContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/common/settingsvalue/NavigationSettingsValueProxy$Companion;->isRecentLeftOfHome(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mIsRecentLeftofHome:Z

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/common/settingsvalue/NavigationSettingsValueProxy$Companion;->isNavButtonsAtLeft(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mIsNavButtonsAtLeft:Z

    invoke-super {p0, p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    new-instance p1, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController$init$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController$init$1;-><init>(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mVirtualKeyCombinationListener:Lcom/oplus/quickstep/common/IObserverListener;

    new-instance p1, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController$init$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController$init$2;-><init>(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mVirtualKeyDirectionListener:Lcom/oplus/quickstep/common/IObserverListener;

    new-instance p1, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController$init$3;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController$init$3;-><init>(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mNavbarDarkChangeListeners:Lcom/oplus/quickstep/common/IObserverListener;

    sget-object p1, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/navigation/NavigationController;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mVirtualKeyCombinationListener:Lcom/oplus/quickstep/common/IObserverListener;

    const-string/jumbo v2, "null cannot be cast to non-null type com.oplus.quickstep.common.IObserverListener"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/navigation/NavigationController;->addVirtualKeyCombinationListener(Lcom/oplus/quickstep/common/IObserverListener;)V

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/navigation/NavigationController;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mVirtualKeyDirectionListener:Lcom/oplus/quickstep/common/IObserverListener;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/navigation/NavigationController;->addVirtualKeyDirectionListener(Lcom/oplus/quickstep/common/IObserverListener;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mNavbarDarkChangeListeners:Lcom/oplus/quickstep/common/IObserverListener;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->addNavbarDarkChangeListener(Lcom/oplus/quickstep/common/IObserverListener;)V

    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isThreeButtonNav()Z

    move-result p0

    if-nez p0, :cond_79

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->isSwipeUpMode()Z

    move-result p0

    if-eqz p0, :cond_77

    goto :goto_79

    :cond_77
    const/4 p0, 0x0

    goto :goto_7a

    :cond_79
    :goto_79
    const/4 p0, 0x1

    :goto_7a
    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->setNavBarVirtualKeyHapticFeedbackEnabled(Z)V

    return-void
.end method

.method public initButtons(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;)V
    .registers 5

    const-string/jumbo v0, "navContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endContainer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p2, "navButtonController"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->initButtons(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public moveNavButtonsBackToTaskbarWindow()V
    .registers 5

    const-string/jumbo v0, "moveNavButtonsBackToTaskbarWindow: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAreNavButtonsInSeparateWindow:Z

    const-string v2, "TaskView"

    const-string v3, "NavbarButtonsViewController"

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAreNavButtonsInSeparateWindow:Z

    if-nez v0, :cond_15

    return-void

    :cond_15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAreNavButtonsInSeparateWindow:Z

    new-instance v1, Lcom/android/launcher3/taskbar/t;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/taskbar/t;-><init>(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;I)V

    invoke-static {v1, v0}, Lcom/oplus/quickstep/utils/ChoreographerUtil;->postFrameCallbackDelay(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public moveNavButtonsToNewWindow()V
    .registers 6

    const-string/jumbo v0, "moveNavButtonsToNewWindow: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAreNavButtonsInSeparateWindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mIsImeRenderingNavButtons:Z

    const-string v2, "TaskView"

    const-string v3, "NavbarButtonsViewController"

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAreNavButtonsInSeparateWindow:Z

    if-eqz v0, :cond_1f

    return-void

    :cond_1f
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mIsImeRenderingNavButtons:Z

    if-eqz v0, :cond_24

    return-void

    :cond_24
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSeparateWindowParent:Lcom/android/launcher3/views/BaseDragLayer;

    new-instance v1, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController$moveNavButtonsToNewWindow$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController$moveNavButtonsToNewWindow$1;-><init>(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAreNavButtonsInSeparateWindow:Z

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->createDefaultWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const-string v4, "Taskbar Nav Buttons"

    invoke-virtual {v1, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSeparateWindowParent:Lcom/android/launcher3/views/BaseDragLayer;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v4

    if-eqz v4, :cond_4b

    const-string/jumbo v1, "moveNavButtonsToNewWindow but SeparateWindowParent has been added!"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_52

    :cond_4b
    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget-object v3, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSeparateWindowParent:Lcom/android/launcher3/views/BaseDragLayer;

    invoke-virtual {v2, v3, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->addWindowView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    :goto_52
    new-instance v1, Lcom/android/launcher3/taskbar/t;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/taskbar/t;-><init>(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;I)V

    const/4 p0, 0x3

    invoke-static {v1, p0}, Lcom/oplus/quickstep/utils/ChoreographerUtil;->postFrameCallbackDelay(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public onConfigurationChanged(I)V
    .registers 4

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->calcNavButtonWidthInWorkspaceByWeight()V

    invoke-super {p0, p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->onConfigurationChanged(I)V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTaskbarSupport()Z

    move-result v1

    if-eqz v1, :cond_60

    and-int/lit16 p1, p1, 0x80

    if-nez p1, :cond_1e

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result p1

    if-eqz p1, :cond_60

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isChangingFoldState()Z

    move-result p1

    if-eqz p1, :cond_60

    :cond_1e
    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mSwitchViewController:Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;

    if-eqz p1, :cond_25

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->initUpdateTaskbarNavSpacing()V

    :cond_25
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->updateNavPosition()V

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_3c

    iget-object p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070ff4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_3e

    :cond_3c
    iget p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mNavButtonWidthInWorkspaceByWeight:I

    :goto_3e
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070ff1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mBackAnimationHolder:Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    if-eqz v1, :cond_52

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->setChangeValue(II)V

    :cond_52
    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mHomeAnimationHolder:Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    if-eqz v1, :cond_59

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->setChangeValue(II)V

    :cond_59
    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mRecentAnimationHolder:Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    if-eqz v1, :cond_60

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->setChangeValue(II)V

    :cond_60
    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mSwitchViewController:Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;

    if-eqz p0, :cond_67

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->setNavbarLayout()V

    :cond_67
    return-void
.end method

.method public onDestroy()V
    .registers 4

    invoke-super {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->onDestroy()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mLeftButton:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mRightButton:Landroid/view/View;

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_15
    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mHomeButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1d
    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mRecentsButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_24
    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mBackButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2b
    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mA11yButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_32

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_32
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_39
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mEndContextualContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_40
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mStartContextualContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_47
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAllButtons:Ljava/util/ArrayList;

    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_4e
    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mVirtualKeyCombinationListener:Lcom/oplus/quickstep/common/IObserverListener;

    if-eqz v0, :cond_62

    sget-object v0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/navigation/NavigationController;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mVirtualKeyCombinationListener:Lcom/oplus/quickstep/common/IObserverListener;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/oplus/quickstep/navigation/NavigationController;->removeVirtualKeyCombinationListener(Lcom/oplus/quickstep/common/IObserverListener;)V

    :cond_62
    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mVirtualKeyDirectionListener:Lcom/oplus/quickstep/common/IObserverListener;

    if-eqz v0, :cond_76

    sget-object v0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/navigation/NavigationController;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mVirtualKeyDirectionListener:Lcom/oplus/quickstep/common/IObserverListener;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/oplus/quickstep/navigation/NavigationController;->removeVirtualKeyDirectionListener(Lcom/oplus/quickstep/common/IObserverListener;)V

    :cond_76
    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mTempPropertyHolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mVirtualKeyCombinationListener:Lcom/oplus/quickstep/common/IObserverListener;

    iput-object v1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mVirtualKeyDirectionListener:Lcom/oplus/quickstep/common/IObserverListener;

    iput-object v1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mRightButton:Landroid/view/View;

    iput-object v1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mLeftButton:Landroid/view/View;

    return-void
.end method

.method public final onNavbarDirectionChange(Z)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->rotationButtonController:Lcom/android/launcher3/taskbar/OplusRotationButtonController;

    invoke-virtual {v0}, Lcom/android/systemui/shared/rotation/RotationButtonController;->getRotationButton()Lcom/android/systemui/shared/rotation/RotationButton;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/shared/rotation/RotationButton;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    if-eqz p1, :cond_24

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mA11yButton:Landroid/widget/ImageView;

    if-nez v0, :cond_16

    goto :goto_19

    :cond_16
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_19
    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mA11yButton:Landroid/widget/ImageView;

    if-nez v0, :cond_1e

    goto :goto_30

    :cond_1e
    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_30

    :cond_24
    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mA11yButton:Landroid/widget/ImageView;

    if-nez v0, :cond_29

    goto :goto_2d

    :cond_29
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2d
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->applyState()V

    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.launcher3.taskbar.OplusNavbarButtonsViewController"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mSwitchViewController:Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;

    if-eqz v0, :cond_71

    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v2

    const-string v3, "--->replacePosition,isRtl:"

    const-string v4, "NavbarButtonsViewController"

    invoke-static {v3, v2, v4}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarView()Lcom/android/launcher3/taskbar/TaskbarView;

    move-result-object v3

    const-string/jumbo v4, "null cannot be cast to non-null type com.android.launcher3.taskbar.OplusTaskbarView"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/android/launcher3/taskbar/OplusTaskbarView;

    if-eqz v2, :cond_63

    move v1, p1

    goto :goto_66

    :cond_63
    if-nez p1, :cond_66

    const/4 v1, 0x1

    :cond_66
    :goto_66
    invoke-virtual {v3, v1}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->setNavButtonsShowAtRight(Z)V

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->onDirectChanged(Z)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->updateSampleRegion()V

    :cond_71
    return-void
.end method

.method public final replacePosition(Landroid/view/ViewGroup;Z)V
    .registers 6

    const-string/jumbo v0, "navContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isThreeButtonNav()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    const-string v0, " mNavButtonContainer---> replacePosition,flag:"

    const-string v1, "NavbarButtonsViewController"

    invoke-static {v0, p2, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->clearNavButtons(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "taskbar_region_is_dark"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v1, "replacePosition--->onRegionDarknessChanged isNightEnv："

    const-string v2, "RegionSamplingUtils"

    invoke-static {v1, v0, v2, v2}, Lu/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3b

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->addRecentButton(Landroid/view/ViewGroup;Z)V

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->addHomeButton(Landroid/view/ViewGroup;Z)V

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->addBackButton(Landroid/view/ViewGroup;Z)V

    goto :goto_44

    :cond_3b
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->addBackButton(Landroid/view/ViewGroup;Z)V

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->addHomeButton(Landroid/view/ViewGroup;Z)V

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->addRecentButton(Landroid/view/ViewGroup;Z)V

    :goto_44
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->addA11yButton(Landroid/view/ViewGroup;Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->addAnimationBetweenWorkSpaceAndTaskbar()V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mTempPropertyHolders:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final setAngle(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->angle:I

    return-void
.end method

.method public final setMA11yButton(Landroid/widget/ImageView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mA11yButton:Landroid/widget/ImageView;

    return-void
.end method

.method public final setMBackButton(Landroid/widget/ImageView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mBackButton:Landroid/widget/ImageView;

    return-void
.end method

.method public final setMHomeButton(Landroid/widget/ImageView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mHomeButton:Landroid/widget/ImageView;

    return-void
.end method

.method public final setMIsNotificationShadeExpanded(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mIsNotificationShadeExpanded:Z

    return-void
.end method

.method public final setMNavButtonWidthInWorkspaceByWeight(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mNavButtonWidthInWorkspaceByWeight:I

    return-void
.end method

.method public final setMNavbarDarkChangeListeners(Lcom/oplus/quickstep/common/IObserverListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mNavbarDarkChangeListeners:Lcom/oplus/quickstep/common/IObserverListener;

    return-void
.end method

.method public final setMPenddingAddWindow(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mPenddingAddWindow:Z

    return-void
.end method

.method public final setMRecentsButton(Landroid/widget/ImageView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mRecentsButton:Landroid/widget/ImageView;

    return-void
.end method

.method public final setMSwitchViewController(Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mSwitchViewController:Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;

    return-void
.end method

.method public final setMTempIsWorkspace(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mTempIsWorkspace:Z

    return-void
.end method

.method public final setMTempalignment(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mTempalignment:F

    return-void
.end method

.method public final setMVirtualKeyCombinationListener(Lcom/oplus/quickstep/common/IObserverListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mVirtualKeyCombinationListener:Lcom/oplus/quickstep/common/IObserverListener;

    return-void
.end method

.method public final setMVirtualKeyDirectionListener(Lcom/oplus/quickstep/common/IObserverListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mVirtualKeyDirectionListener:Lcom/oplus/quickstep/common/IObserverListener;

    return-void
.end method

.method public final setMWindowIsAdded(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mWindowIsAdded:Z

    return-void
.end method

.method public final setSwitchFlag(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->switchFlag:Z

    return-void
.end method

.method public updateNavButtonDarkIntensity()V
    .registers 1

    return-void
.end method

.method public updatePostionSwitchVisible(F)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mSwitchViewController:Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;

    if-eqz p0, :cond_a

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->updateTaskbarAlignment(F)V

    :cond_a
    return-void
.end method

.method public updateStateForSysuiFlags(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mSwitchViewController:Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->updateSysuiFlags(I)V

    :cond_7
    iget v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSysuiStateFlags:I

    if-ne p1, v0, :cond_c

    return-void

    :cond_c
    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->updateA11yButtonStateWhenFlagChange(I)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->mSwitchViewController:Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->setNavbarLayout()V

    :cond_16
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->applyState()V

    if-eqz p2, :cond_22

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    sget-object p1, Lcom/android/launcher3/m0;->c:Lcom/android/launcher3/m0;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_22
    return-void
.end method

.method public updateTaskbarAlignment(F)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateTaskbarAlignment(F)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->updatePostionSwitchVisible(F)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isThreeButtonNav()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->switchBetweenWorkspaceAndTaskbar(F)V

    :cond_11
    return-void
.end method
