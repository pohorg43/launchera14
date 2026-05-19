.class public Lcom/android/launcher3/taskbar/NavbarButtonsViewController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;,
        Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonImpl;,
        Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonListener;
    }
.end annotation


# static fields
.field public static final ALPHA_INDEX_IMMERSIVE_MODE:I = 0x0

.field public static final ALPHA_INDEX_KEYGUARD_OR_DISABLE:I = 0x1

.field public static final FLAG_A11Y_VISIBLE:I = 0x8

.field public static final FLAG_DISABLE_BACK:I = 0x200

.field public static final FLAG_DISABLE_HOME:I = 0x80

.field public static final FLAG_DISABLE_RECENTS:I = 0x100

.field public static final FLAG_IME_VISIBLE:I = 0x2

.field public static final FLAG_KEYGUARD_OCCLUDED:I = 0x40

.field public static final FLAG_KEYGUARD_VISIBLE:I = 0x20

.field private static final FLAG_NOTIFICATION_SHADE_EXPANDED:I = 0x400

.field public static final FLAG_ONLY_BACK_FOR_BOUNCER_VISIBLE:I = 0x10

.field public static final FLAG_ROTATION_BUTTON_VISIBLE:I = 0x4

.field public static final FLAG_SCREEN_PINNING_ACTIVE:I = 0x800

.field private static final FLAG_SWITCHER_SUPPORTED:I = 0x1

.field private static final MASK_IME_SWITCHER_VISIBLE:I = 0x3

.field public static final NAV_BUTTONS_SEPARATE_WINDOW_TITLE:Ljava/lang/String; = "Taskbar Nav Buttons"

.field public static final NUM_ALPHA_CHANNELS:I = 0x2

.field private static final STASH_ANIMATION_TIME:I = 0x352

.field public static final TAG:Ljava/lang/String; = "NavbarButtonsViewController"


# instance fields
.field private mA11yButton:Landroid/view/View;

.field public final mAllButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field public mAreNavButtonsInSeparateWindow:Z

.field private mBackButton:Landroid/view/View;

.field public mBackButtonAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

.field public final mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field public mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field public final mDarkIconColor:I

.field public final mEndContextualContainer:Landroid/view/ViewGroup;

.field private mFloatingRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

.field private final mFloatingRotationButtonBounds:Landroid/graphics/Rect;

.field public final mHitboxExtender:Lcom/android/launcher3/taskbar/RecentsHitboxExtender;

.field private mHomeButton:Landroid/view/View;

.field public mHomeButtonAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

.field public mIconColor:F

.field public mIsImeRenderingNavButtons:Z

.field public final mLightIconColor:I

.field public final mNavButtonContainer:Landroid/view/ViewGroup;

.field private final mNavButtonDarkIntensityMultiplier:Lcom/android/quickstep/AnimatedFloat;

.field private final mNavButtonInAppDisplayProgressForSysui:Lcom/android/quickstep/AnimatedFloat;

.field public final mNavButtonsView:Landroid/widget/FrameLayout;

.field public final mPropertyHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mRotationButtonListener:Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonListener;

.field public final mSeparateWindowInsetsComputer:Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$OnComputeInsetsListener;

.field public mSeparateWindowParent:Lcom/android/launcher3/views/BaseDragLayer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/views/BaseDragLayer<",
            "Lcom/android/launcher3/taskbar/TaskbarActivityContext;",
            ">;"
        }
    .end annotation
.end field

.field public final mStartContextualContainer:Landroid/view/ViewGroup;

.field private mState:I

.field public mSysuiStateFlags:I

.field public final mTaskbarNavButtonDarkIntensity:Lcom/android/quickstep/AnimatedFloat;

.field private final mTaskbarNavButtonTranslationY:Lcom/android/quickstep/AnimatedFloat;

.field public final mTaskbarNavButtonTranslationYForEnableChange:Lcom/android/quickstep/AnimatedFloat;

.field private final mTaskbarNavButtonTranslationYForIme:Lcom/android/quickstep/AnimatedFloat;

.field private final mTaskbarNavButtonTranslationYForInAppDisplay:Lcom/android/quickstep/AnimatedFloat;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Landroid/widget/FrameLayout;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTempRect:Landroid/graphics/Rect;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAllButtons:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/k;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/taskbar/k;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;I)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonTranslationY:Lcom/android/quickstep/AnimatedFloat;

    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/pullup/controller/a;

    invoke-direct {v1, p0}, Lcom/android/launcher3/pullup/controller/a;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonTranslationYForInAppDisplay:Lcom/android/quickstep/AnimatedFloat;

    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/p0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/p0;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonTranslationYForIme:Lcom/android/quickstep/AnimatedFloat;

    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/model/c1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/model/c1;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonTranslationYForEnableChange:Lcom/android/quickstep/AnimatedFloat;

    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/folder/t;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/t;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonInAppDisplayProgressForSysui:Lcom/android/quickstep/AnimatedFloat;

    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/l;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/l;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonDarkIntensity:Lcom/android/quickstep/AnimatedFloat;

    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/k;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Lcom/android/launcher3/taskbar/k;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;I)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonDarkIntensityMultiplier:Lcom/android/quickstep/AnimatedFloat;

    new-instance v0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonListener;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;Lcom/android/launcher3/taskbar/NavbarButtonsViewController$1;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mRotationButtonListener:Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonListener;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mFloatingRotationButtonBounds:Landroid/graphics/Rect;

    iput-boolean v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAreNavButtonsInSeparateWindow:Z

    new-instance v0, Lcom/android/launcher3/taskbar/a;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/a;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSeparateWindowInsetsComputer:Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$OnComputeInsetsListener;

    new-instance v0, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHitboxExtender:Lcom/android/launcher3/taskbar/RecentsHitboxExtender;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0280

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0a027f

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mEndContextualContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0a05b4

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mStartContextualContainer:Landroid/view/ViewGroup;

    const p2, 0x7f060822

    invoke-virtual {p1, p2}, Landroid/view/ContextThemeWrapper;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mLightIconColor:I

    const p2, 0x7f060821

    invoke-virtual {p1, p2}, Landroid/view/ContextThemeWrapper;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mDarkIconColor:I

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;ILandroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->lambda$addButton$15(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mFloatingRotationButtonBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)Lcom/android/systemui/shared/rotation/FloatingRotationButton;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mFloatingRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    return-object p0
.end method

.method public static synthetic access$472(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;I)I
    .registers 3

    iget v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mState:I

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mState:I

    return p1
.end method

.method public static synthetic access$476(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;I)I
    .registers 3

    iget v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mState:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mState:I

    return p1
.end method

.method public static synthetic b(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->lambda$initButtons$14(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->lambda$init$5(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->lambda$initButtons$10(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->lambda$init$0(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->lambda$init$1(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateNavButtonTranslationY()V

    return-void
.end method

.method private static getStateString(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/util/StringJoiner;

    const-string/jumbo v1, "|"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    const-string v2, "FLAG_SWITCHER_SUPPORTED"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/4 v1, 0x2

    const-string v2, "FLAG_IME_VISIBLE"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/4 v1, 0x4

    const-string v2, "FLAG_ROTATION_BUTTON_VISIBLE"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v1, 0x8

    const-string v2, "FLAG_A11Y_VISIBLE"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v1, 0x10

    const-string v2, "FLAG_ONLY_BACK_FOR_BOUNCER_VISIBLE"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v1, 0x20

    const-string v2, "FLAG_KEYGUARD_VISIBLE"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v1, 0x40

    const-string v2, "FLAG_KEYGUARD_OCCLUDED"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v1, 0x80

    const-string v2, "FLAG_DISABLE_HOME"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v1, 0x100

    const-string v2, "FLAG_DISABLE_RECENTS"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v1, 0x200

    const-string v2, "FLAG_DISABLE_BACK"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v1, 0x400

    const-string v2, "FLAG_NOTIFICATION_SHADE_EXPANDED"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v1, 0x800

    const-string v2, "FLAG_SCREEN_PINNING_ACTIVE"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->lambda$initButtons$7(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(ZI)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->lambda$init$4(ZI)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;Landroid/view/View;)[F
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->lambda$initButtons$11(Landroid/view/View;)[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->lambda$initButtons$9(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->lambda$initButtons$12(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$addButton$15(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;ILandroid/view/View;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->onButtonClick(I)V

    return-void
.end method

.method private static synthetic lambda$addButton$16(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;ILandroid/view/View;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->onButtonLongClick(I)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$init$0(I)Z
    .registers 3

    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    and-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method private static synthetic lambda$init$1(I)Z
    .registers 2

    and-int/lit8 v0, p0, 0x20

    if-nez v0, :cond_a

    and-int/lit16 p0, p0, 0x800

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static synthetic lambda$init$2(I)Z
    .registers 1

    and-int/lit8 p0, p0, 0x20

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private static synthetic lambda$init$3(II)Z
    .registers 2

    and-int/2addr p0, p1

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method private static synthetic lambda$init$4(ZI)Z
    .registers 2

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_8

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private static synthetic lambda$init$5(I)Z
    .registers 2

    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_8

    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_c

    :cond_8
    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_e

    :cond_c
    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private static synthetic lambda$init$6(I)Z
    .registers 1

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private static synthetic lambda$initButtons$10(I)Z
    .registers 2

    and-int/lit8 v0, p0, 0x20

    if-nez v0, :cond_a

    and-int/lit16 p0, p0, 0x80

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private synthetic lambda$initButtons$11(Landroid/view/View;)[F
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-static {p1, p0, v0, v1}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZ)F

    return-object v0
.end method

.method private synthetic lambda$initButtons$12(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;Landroid/view/View;)V
    .registers 3

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->onButtonClick(I)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHitboxExtender:Lcom/android/launcher3/taskbar/RecentsHitboxExtender;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->onRecentsButtonClicked()V

    return-void
.end method

.method private synthetic lambda$initButtons$13(I)Z
    .registers 3

    and-int/lit8 v0, p1, 0x20

    if-nez v0, :cond_12

    and-int/lit16 p1, p1, 0x100

    if-nez p1, :cond_12

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isNavBarKidsModeActive()Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private static synthetic lambda$initButtons$14(I)Z
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

.method private static synthetic lambda$initButtons$7(I)Z
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

.method private synthetic lambda$initButtons$8(I)Z
    .registers 2

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_e

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isNavBarKidsModeActive()Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private static synthetic lambda$initButtons$9(I)Z
    .registers 2

    and-int/lit8 v0, p0, 0x10

    if-nez v0, :cond_b

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static synthetic m(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$InsetsInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->onComputeInsetsForSeparateWindow(Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$InsetsInfo;)V

    return-void
.end method

.method public static synthetic n(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->lambda$init$6(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic o(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->lambda$init$2(I)Z

    move-result p0

    return p0
.end method

.method private onComputeInsetsForSeparateWindow(Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$InsetsInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSeparateWindowParent:Lcom/android/launcher3/views/BaseDragLayer;

    iget-object v1, p1, Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$InsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->addVisibleButtonsRegion(Lcom/android/launcher3/views/BaseDragLayer;Landroid/graphics/Region;)V

    const/4 p0, 0x3

    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$InsetsInfo;->setTouchableInsets(I)V

    return-void
.end method

.method public static synthetic p(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->lambda$initButtons$8(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic q(II)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->lambda$init$3(II)Z

    move-result p0

    return p0
.end method

.method public static synthetic r(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;ILandroid/view/View;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->lambda$addButton$16(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;ILandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic s(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateNavButtonInAppDisplayProgressForSysui()V

    return-void
.end method

.method public static synthetic t(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->lambda$initButtons$13(I)Z

    move-result p0

    return p0
.end method

.method private updateNavButtonInAppDisplayProgressForSysui()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    instance-of v1, v0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    if-eqz v1, :cond_12

    check-cast v0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonInAppDisplayProgressForSysui:Lcom/android/quickstep/AnimatedFloat;

    iget p0, p0, Lcom/android/quickstep/AnimatedFloat;->value:F

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->onTaskbarInAppDisplayProgressUpdate(FI)V

    :cond_12
    return-void
.end method

.method private updateNavButtonTranslationY()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->isSmallScreenButtonNavMode(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonTranslationY:Lcom/android/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonTranslationYForIme:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v2, v2, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    instance-of v3, v2, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    if-eqz v3, :cond_26

    check-cast v2, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->shouldUseInAppLayout()Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonTranslationYForInAppDisplay:Lcom/android/quickstep/AnimatedFloat;

    iget v2, v2, Lcom/android/quickstep/AnimatedFloat;->value:F

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    :goto_27
    iget-object v3, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonTranslationYForEnableChange:Lcom/android/quickstep/AnimatedFloat;

    iget p0, p0, Lcom/android/quickstep/AnimatedFloat;->value:F

    add-float/2addr v0, p0

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public addButton(IILandroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;I)Landroid/widget/ImageView;
    .registers 13

    const v6, 0x7f0d0257

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->addButton(IILandroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;II)Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method public addButton(IILandroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;II)Landroid/widget/ImageView;
    .registers 7

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

    new-instance p1, Lcom/android/launcher3/taskbar/v0;

    invoke-direct {p1, p4, p2}, Lcom/android/launcher3/taskbar/v0;-><init>(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;I)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/android/launcher3/taskbar/c;

    const/4 p3, 0x0

    invoke-direct {p1, p4, p2, p3}, Lcom/android/launcher3/taskbar/c;-><init>(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;II)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object p0
.end method

.method public addButton(Landroid/view/ViewGroup;II)Landroid/widget/ImageView;
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setId(I)V

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAllButtons:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p3
.end method

.method public addVisibleButtonsRegion(Lcom/android/launcher3/views/BaseDragLayer;Landroid/graphics/Region;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/views/BaseDragLayer<",
            "*>;",
            "Landroid/graphics/Region;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAllButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_39

    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAllButtons:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_36

    iget-object v3, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHitboxExtender:Lcom/android/launcher3/taskbar/RecentsHitboxExtender;

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->extendedHitboxEnabled()Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTempRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarNavBtnOffsetY()I

    move-result v4

    add-int/2addr v4, v3

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    :cond_2f
    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTempRect:Landroid/graphics/Rect;

    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_39
    return-void
.end method

.method public applyState()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_4b

    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/quickstep/common/settingsvalue/NavigationSettingsValueProxy;->getNavButtonsSwitchDirect(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_3b

    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    invoke-static {v2}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->access$100(Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-boolean v2, v2, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mIsEnabled:Z

    if-nez v2, :cond_48

    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->mIsEnabled:Z

    goto :goto_48

    :cond_3b
    iget-object v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget v3, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mState:I

    invoke-virtual {v2, v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->setState(I)V

    :cond_48
    :goto_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_4b
    return-void
.end method

.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 8

    const-string v0, "NavbarButtonsViewController:"

    invoke-static {p1, v0, p2}, Lcom/android/launcher/download/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonTranslationY:Lcom/android/quickstep/AnimatedFloat;

    iget v3, v3, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "%s\tmTaskbarNavButtonTranslationY=%.1f"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonTranslationYForInAppDisplay:Lcom/android/quickstep/AnimatedFloat;

    iget v3, v3, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\tmTaskbarNavButtonTranslationYForInAppDisplay=%.1f"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonTranslationYForIme:Lcom/android/quickstep/AnimatedFloat;

    iget v3, v3, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\tmTaskbarNavButtonTranslationYForIme=%.1f"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonTranslationYForEnableChange:Lcom/android/quickstep/AnimatedFloat;

    iget v3, v3, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\tmTaskbarNavButtonTranslationYForEnableChange=%.1f"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget v3, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mState:I

    invoke-static {v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->getStateString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\tmState=%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget v3, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mLightIconColor:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\tmLightIconColor=0x%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget v3, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mDarkIconColor:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\tmDarkIconColor=0x%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mFloatingRotationButtonBounds:Landroid/graphics/Rect;

    aput-object v3, v1, v4

    const-string v3, "%s\tmFloatingRotationButtonBounds=%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    iget p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSysuiStateFlags:I

    invoke-static {p0}, Lcom/android/systemui/shared/system/QuickStepContract;->getSystemUiStateString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v4

    const-string p0, "%s\tmSysuiStateFlags=%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getBackButtonAlpha()Lcom/android/launcher3/util/MultiValueAlpha;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mBackButtonAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    return-object p0
.end method

.method public getHomeButtonAlpha()Lcom/android/launcher3/util/MultiValueAlpha;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHomeButtonAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    return-object p0
.end method

.method public getNavButtonDarkIntensityMultiplier()Lcom/android/quickstep/AnimatedFloat;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonDarkIntensityMultiplier:Lcom/android/quickstep/AnimatedFloat;

    return-object p0
.end method

.method public getTaskbarNavButtonDarkIntensity()Lcom/android/quickstep/AnimatedFloat;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonDarkIntensity:Lcom/android/quickstep/AnimatedFloat;

    return-object p0
.end method

.method public getTaskbarNavButtonTranslationY()Lcom/android/quickstep/AnimatedFloat;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonTranslationY:Lcom/android/quickstep/AnimatedFloat;

    return-object p0
.end method

.method public getTaskbarNavButtonTranslationYForInAppDisplay()Lcom/android/quickstep/AnimatedFloat;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonTranslationYForInAppDisplay:Lcom/android/quickstep/AnimatedFloat;

    return-object p0
.end method

.method public getTouchController()Lcom/android/launcher3/util/TouchController;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHitboxExtender:Lcom/android/launcher3/taskbar/RecentsHitboxExtender;

    return-object p0
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .registers 24

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    iput-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarSizePx(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isThreeButtonNav()Z

    move-result v7

    invoke-static {}, Landroid/inputmethodservice/InputMethodService;->canImeRenderGesturalNavButtons()Z

    move-result v0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_30

    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->imeDrawsImeNavBar()Z

    move-result v0

    if-eqz v0, :cond_30

    move v0, v8

    goto :goto_31

    :cond_30
    move v0, v9

    :goto_31
    iput-boolean v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mIsImeRenderingNavButtons:Z

    if-nez v0, :cond_61

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isDisplayImeButton()Z

    move-result v0

    if-eqz v0, :cond_61

    const v1, 0x7f0806ef

    const/16 v2, 0x8

    if-eqz v7, :cond_45

    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mStartContextualContainer:Landroid/view/ViewGroup;

    goto :goto_47

    :cond_45
    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mEndContextualContainer:Landroid/view/ViewGroup;

    :goto_47
    move-object v3, v0

    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    const v5, 0x7f0a0342

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->addButton(IILandroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;I)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    sget-object v3, Lcom/android/launcher3/taskbar/e;->a:Lcom/android/launcher3/taskbar/e;

    invoke-direct {v2, v0, v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Landroid/view/View;Ljava/util/function/IntPredicate;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_61
    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v2, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v2, v2, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getTaskbarIconAlpha()Lcom/android/launcher3/util/MultiValueAlpha;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/taskbar/f;->a:Lcom/android/launcher3/taskbar/f;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;Ljava/util/function/IntPredicate;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v2, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v2, v2, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->getKeyguardBgTaskbar()Lcom/android/quickstep/AnimatedFloat;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/taskbar/j;->a:Lcom/android/launcher3/taskbar/j;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Lcom/android/quickstep/AnimatedFloat;Ljava/util/function/IntPredicate;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isUserSetupComplete()Z

    move-result v0

    xor-int/2addr v0, v8

    iget-object v1, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isNavBarKidsModeActive()Z

    move-result v1

    if-nez v7, :cond_a1

    if-eqz v0, :cond_9f

    goto :goto_a1

    :cond_9f
    move v2, v9

    goto :goto_a2

    :cond_a1
    :goto_a1
    move v2, v8

    :goto_a2
    const/16 v3, 0x402

    iget-object v4, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v11, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonInAppDisplayProgressForSysui:Lcom/android/quickstep/AnimatedFloat;

    new-instance v12, Lcom/android/launcher3/taskbar/o;

    invoke-direct {v12, v3}, Lcom/android/launcher3/taskbar/o;-><init>(I)V

    sget-object v16, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    const/high16 v14, 0x3f800000  # 1.0f

    const/4 v15, 0x0

    move-object v10, v5

    move-object/from16 v13, v16

    invoke-direct/range {v10 .. v15}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Ljava/lang/Object;Ljava/util/function/IntPredicate;Landroid/util/Property;FF)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->taskbarSize:I

    iget-object v3, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v3, v3, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarInsetsController:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->getTaskbarHeightForIme()I

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget-object v3, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v14, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonTranslationYForIme:Lcom/android/quickstep/AnimatedFloat;

    new-instance v15, Lcom/android/launcher3/taskbar/q;

    invoke-direct {v15, v1}, Lcom/android/launcher3/taskbar/q;-><init>(Z)V

    move-object v13, v4

    invoke-direct/range {v13 .. v18}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Ljava/lang/Object;Ljava/util/function/IntPredicate;Landroid/util/Property;FF)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    if-eqz v2, :cond_262

    iget-object v2, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonContainer:Landroid/view/ViewGroup;

    iget-object v3, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mEndContextualContainer:Landroid/view/ViewGroup;

    iget-object v4, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v4, v4, Lcom/android/launcher3/taskbar/TaskbarControllers;->navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    invoke-virtual {v6, v2, v3, v4}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->initButtons(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;)V

    const/high16 v2, 0x3f800000  # 1.0f

    if-eqz v0, :cond_135

    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/FrameLayout$LayoutParams;->getMarginEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    const v1, 0x800003

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_123

    goto :goto_124

    :cond_123
    move v8, v9

    :goto_124
    const-string v0, "isDarkTheme："

    const-string v1, "NavbarButtonsViewController"

    invoke-static {v0, v8, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonDarkIntensity:Lcom/android/quickstep/AnimatedFloat;

    if-eqz v8, :cond_130

    const/4 v2, 0x0

    :cond_130
    invoke-virtual {v0, v2}, Lcom/android/quickstep/AnimatedFloat;->updateValue(F)V

    goto/16 :goto_229

    :cond_135
    if-eqz v1, :cond_229

    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070fe5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070ff3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070feb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070fe9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int v5, v1, v0

    div-int/lit8 v5, v5, 0x2

    sub-int v0, v3, v0

    div-int/lit8 v0, v0, 0x2

    iget-object v8, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mBackButton:Landroid/view/View;

    move-object v10, v8

    check-cast v10, Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const v11, 0x7f08075e

    invoke-virtual {v8, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mBackButton:Landroid/view/View;

    check-cast v8, Landroid/widget/ImageView;

    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v8, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mBackButton:Landroid/view/View;

    invoke-virtual {v8, v5, v0, v5, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object v8, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHomeButton:Landroid/view/View;

    move-object v10, v8

    check-cast v10, Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const v11, 0x7f080762

    invoke-virtual {v8, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHomeButton:Landroid/view/View;

    check-cast v8, Landroid/widget/ImageView;

    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v8, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHomeButton:Landroid/view/View;

    invoke-virtual {v8, v5, v0, v5, v0}, Landroid/view/View;->setPadding(IIII)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v5, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f070fe1

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v0, v5, v9, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v5, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHomeButton:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070fc1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1, v9, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mBackButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x3dcccccd  # 0.1f

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v0

    new-instance v1, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    int-to-float v0, v4

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHomeButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mBackButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/FrameLayout$LayoutParams;->getMarginEnd()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHomeButton:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_229
    :goto_229
    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v2, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v2, v2, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->getNavbarBackgroundAlpha()Lcom/android/quickstep/AnimatedFloat;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/taskbar/s;->a:Lcom/android/launcher3/taskbar/s;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Lcom/android/quickstep/AnimatedFloat;Ljava/util/function/IntPredicate;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonImpl;

    iget-object v1, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mEndContextualContainer:Landroid/view/ViewGroup;

    const v2, 0x7f0a04ea

    const v3, 0x7f0d0252

    invoke-virtual {v6, v1, v2, v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->addButton(Landroid/view/ViewGroup;II)Landroid/widget/ImageView;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonImpl;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;Landroid/widget/ImageView;)V

    invoke-interface {v0}, Lcom/android/systemui/shared/rotation/RotationButton;->hide()Z

    invoke-interface {v0}, Lcom/android/systemui/shared/rotation/RotationButton;->getCurrentView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x3c

    invoke-static {v1, v2}, Lcom/coui/appcompat/rippleutil/COUIRippleDrawableUtil;->a(Landroid/view/View;I)V

    iget-object v1, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->rotationButtonController:Lcom/android/launcher3/taskbar/OplusRotationButtonController;

    invoke-virtual {v1, v0, v7}, Lcom/android/systemui/shared/rotation/RotationButtonController;->setRotationButton(Lcom/android/systemui/shared/rotation/RotationButton;Lcom/android/systemui/shared/rotation/RotationButton$RotationButtonUpdatesCallback;)V

    goto :goto_2d0

    :cond_262
    new-instance v0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    iget-object v11, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const v12, 0x7f12009e

    const v13, 0x7f0d0211

    const v14, 0x7f0a04ea

    const v15, 0x7f07081c

    const v16, 0x7f070ddc

    const v17, 0x7f07081e

    const v18, 0x7f07081d

    const v19, 0x7f07081b

    const v20, 0x7f07097a

    const v21, 0x7f080938

    move-object v10, v0

    invoke-direct/range {v10 .. v21}, Lcom/android/systemui/shared/rotation/FloatingRotationButton;-><init>(Landroid/content/Context;IIIIIIIIII)V

    iput-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mFloatingRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    iget-object v1, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->rotationButtonController:Lcom/android/launcher3/taskbar/OplusRotationButtonController;

    iget-object v2, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mRotationButtonListener:Lcom/android/launcher3/taskbar/NavbarButtonsViewController$RotationButtonListener;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/shared/rotation/RotationButtonController;->setRotationButton(Lcom/android/systemui/shared/rotation/RotationButton;Lcom/android/systemui/shared/rotation/RotationButton$RotationButtonUpdatesCallback;)V

    iget-boolean v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mIsImeRenderingNavButtons:Z

    if-nez v0, :cond_2d0

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isDisplayImeButton()Z

    move-result v0

    if-eqz v0, :cond_2d0

    const v1, 0x7f08075d

    const/4 v2, 0x1

    iget-object v3, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mStartContextualContainer:Landroid/view/ViewGroup;

    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    const v5, 0x7f0a00d0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->addButton(IILandroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;I)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_2bf

    const/high16 v1, 0x42b40000  # 90.0f

    goto :goto_2c1

    :cond_2bf
    const/high16 v1, -0x3d4c0000  # -90.0f

    :goto_2c1
    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    iget-object v1, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    sget-object v3, Lcom/android/launcher3/taskbar/i;->a:Lcom/android/launcher3/taskbar/i;

    invoke-direct {v2, v0, v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Landroid/view/View;Ljava/util/function/IntPredicate;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d0
    :goto_2d0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->applyState()V

    iget-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/launcher3/taskbar/m;->b:Lcom/android/launcher3/taskbar/m;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    new-instance v0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$1;

    iget-object v1, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-direct {v0, v6, v1, v7, v9}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$1;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, v6, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSeparateWindowParent:Lcom/android/launcher3/views/BaseDragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/views/BaseDragLayer;->recreateControllers()V

    return-void
.end method

.method public initButtons(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;)V
    .registers 19

    move-object v7, p0

    iget-object v3, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonContainer:Landroid/view/ViewGroup;

    iget-object v0, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    const v1, 0x7f08075d

    const/4 v2, 0x1

    const v5, 0x7f0a00d0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->addButton(IILandroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mBackButton:Landroid/view/View;

    new-instance v0, Lcom/android/launcher3/util/MultiValueAlpha;

    iget-object v1, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mBackButton:Landroid/view/View;

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6}, Lcom/android/launcher3/util/MultiValueAlpha;-><init>(Landroid/view/View;I)V

    iput-object v0, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mBackButtonAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/android/launcher3/util/MultiValueAlpha;->setUpdateVisibility(Z)V

    iget-object v0, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v2, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mBackButtonAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    invoke-virtual {v2, v8}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/taskbar/g;->a:Lcom/android/launcher3/taskbar/g;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;Ljava/util/function/IntPredicate;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iget-object v1, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v10, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mBackButton:Landroid/view/View;

    new-instance v11, Lcom/android/launcher3/hybridhotseat/a;

    invoke-direct {v11, p0}, Lcom/android/launcher3/hybridhotseat/a;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    sget-object v12, Landroid/view/View;->ROTATION:Landroid/util/Property;

    if-eqz v0, :cond_51

    const/high16 v3, 0x42b40000  # 90.0f

    goto :goto_53

    :cond_51
    const/high16 v3, -0x3d4c0000  # -90.0f

    :goto_53
    move v13, v3

    const/4 v14, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Ljava/lang/Object;Ljava/util/function/IntPredicate;Landroid/util/Property;FF)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070fec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v10, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mBackButton:Landroid/view/View;

    sget-object v11, Lcom/android/launcher3/taskbar/h;->a:Lcom/android/launcher3/taskbar/h;

    sget-object v12, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_X:Landroid/util/FloatProperty;

    if-eqz v0, :cond_77

    const/4 v0, -0x2

    goto :goto_78

    :cond_77
    move v0, v6

    :goto_78
    mul-int/2addr v1, v0

    int-to-float v13, v1

    const/4 v14, 0x0

    move-object v9, v3

    invoke-direct/range {v9 .. v14}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Ljava/lang/Object;Ljava/util/function/IntPredicate;Landroid/util/Property;FF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f080761

    const/4 v2, 0x2

    const v5, 0x7f0a0317

    move-object v0, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->addButton(IILandroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHomeButton:Landroid/view/View;

    new-instance v0, Lcom/android/launcher3/util/MultiValueAlpha;

    iget-object v1, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHomeButton:Landroid/view/View;

    invoke-direct {v0, v1, v6}, Lcom/android/launcher3/util/MultiValueAlpha;-><init>(Landroid/view/View;I)V

    iput-object v0, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHomeButtonAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    invoke-virtual {v0, v8}, Lcom/android/launcher3/util/MultiValueAlpha;->setUpdateVisibility(Z)V

    iget-object v0, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v2, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHomeButtonAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    invoke-virtual {v2, v8}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/taskbar/d;->a:Lcom/android/launcher3/taskbar/d;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;Ljava/util/function/IntPredicate;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f080767

    const/4 v2, 0x4

    const v5, 0x7f0a04be

    move-object v0, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->addButton(IILandroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;I)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v8, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHitboxExtender:Lcom/android/launcher3/taskbar/RecentsHitboxExtender;

    iget-object v10, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    iget-object v1, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v11

    new-instance v12, Lcom/android/launcher3/d0;

    invoke-direct {v12, p0, v0}, Lcom/android/launcher3/d0;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;Landroid/view/View;)V

    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    move-object v9, v0

    invoke-virtual/range {v8 .. v13}, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->init(Landroid/view/View;Landroid/view/View;Lcom/android/launcher3/DeviceProfile;Ljava/util/function/Supplier;Landroid/os/Handler;)V

    new-instance v1, Lcom/android/launcher3/allapps/a;

    invoke-direct {v1, p0, v4}, Lcom/android/launcher3/allapps/a;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    new-instance v3, Lcom/android/launcher3/taskbar/p;

    invoke-direct {v3, p0}, Lcom/android/launcher3/taskbar/p;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    invoke-direct {v2, v0, v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Landroid/view/View;Ljava/util/function/IntPredicate;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f08075c

    const/16 v2, 0x10

    const v5, 0x7f0a001d

    const v6, 0x7f0d0252

    move-object v0, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->addButton(IILandroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;II)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mA11yButton:Landroid/view/View;

    const-string v0, "NavbarButtonsViewController"

    const-string/jumbo v1, "notifyA11yClick ======addButton  mA11yButton"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    iget-object v2, v7, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mA11yButton:Landroid/view/View;

    sget-object v3, Lcom/android/launcher3/taskbar/r;->a:Lcom/android/launcher3/taskbar/r;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Landroid/view/View;Ljava/util/function/IntPredicate;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isEventOverAnyItem(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mFloatingRotationButtonBounds:Landroid/graphics/Rect;

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

.method public isHomeDisabled()Z
    .registers 1

    iget p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mState:I

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isImeVisible()Z
    .registers 1

    iget p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mState:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isRecentsDisabled()Z
    .registers 1

    iget p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mState:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public moveNavButtonsBackToTaskbarWindow()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAreNavButtonsInSeparateWindow:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAreNavButtonsInSeparateWindow:Z

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSeparateWindowParent:Lcom/android/launcher3/views/BaseDragLayer;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->removeWindowView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public moveNavButtonsToNewWindow()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAreNavButtonsInSeparateWindow:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mIsImeRenderingNavButtons:Z

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSeparateWindowParent:Lcom/android/launcher3/views/BaseDragLayer;

    new-instance v1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$2;-><init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAreNavButtonsInSeparateWindow:Z

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSeparateWindowParent:Lcom/android/launcher3/views/BaseDragLayer;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->createDefaultWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v1, "Taskbar Nav Buttons"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSeparateWindowParent:Lcom/android/launcher3/views/BaseDragLayer;

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->addWindowView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onConfigurationChanged(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mFloatingRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->onConfigurationChanged(I)V

    :cond_7
    return-void
.end method

.method public onDestroy()V
    .registers 3

    const-string v0, "NavbarButtonsViewController"

    const-string/jumbo v1, "onDestroy--->mPropertyHolders.clear()"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->rotationButtonController:Lcom/android/launcher3/taskbar/OplusRotationButtonController;

    invoke-virtual {v0}, Lcom/android/systemui/shared/rotation/RotationButtonController;->unregisterListeners()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mFloatingRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->hide()Z

    :cond_1b
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->moveNavButtonsBackToTaskbarWindow()V

    return-void
.end method

.method public parseSystemUiFlags(I)V
    .registers 13

    iput p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSysuiStateFlags:I

    const/high16 v0, 0x40000

    and-int/2addr v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    move v0, v2

    goto :goto_c

    :cond_b
    move v0, v1

    :goto_c
    const/high16 v3, 0x100000

    and-int/2addr v3, p1

    if-eqz v3, :cond_13

    move v3, v2

    goto :goto_14

    :cond_13
    move v3, v1

    :goto_14
    and-int/lit8 v4, p1, 0x10

    if-eqz v4, :cond_1a

    move v4, v2

    goto :goto_1b

    :cond_1a
    move v4, v1

    :goto_1b
    and-int/lit16 v5, p1, 0x100

    if-eqz v5, :cond_21

    move v5, v2

    goto :goto_22

    :cond_21
    move v5, v1

    :goto_22
    and-int/lit16 v6, p1, 0x80

    if-eqz v6, :cond_28

    move v6, v2

    goto :goto_29

    :cond_28
    move v6, v1

    :goto_29
    const/high16 v7, 0x400000

    and-int/2addr v7, p1

    if-eqz v7, :cond_30

    move v7, v2

    goto :goto_31

    :cond_30
    move v7, v1

    :goto_31
    and-int/lit16 v8, p1, 0x804

    if-eqz v8, :cond_37

    move v8, v2

    goto :goto_38

    :cond_37
    move v8, v1

    :goto_38
    and-int/lit8 v9, p1, 0x1

    if-eqz v9, :cond_3e

    move v9, v2

    goto :goto_3f

    :cond_3e
    move v9, v1

    :goto_3f
    const/4 v10, 0x2

    invoke-virtual {p0, v10, v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateStateForFlag(IZ)V

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateStateForFlag(IZ)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0, v4}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateStateForFlag(IZ)V

    const/16 v0, 0x80

    invoke-virtual {p0, v0, v5}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateStateForFlag(IZ)V

    const/16 v0, 0x100

    invoke-virtual {p0, v0, v6}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateStateForFlag(IZ)V

    const/16 v0, 0x200

    invoke-virtual {p0, v0, v7}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateStateForFlag(IZ)V

    const/16 v0, 0x400

    invoke-virtual {p0, v0, v8}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateStateForFlag(IZ)V

    const/16 v0, 0x800

    invoke-virtual {p0, v0, v9}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateStateForFlag(IZ)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mA11yButton:Landroid/view/View;

    if-eqz p0, :cond_70

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_6d

    move v1, v2

    :cond_6d
    invoke-virtual {p0, v1}, Landroid/view/View;->setLongClickable(Z)V

    :cond_70
    return-void
.end method

.method public setBackForBouncer(Z)V
    .registers 3

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateStateForFlag(IZ)V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->applyState()V

    return-void
.end method

.method public setKeyguardVisible(ZZ)V
    .registers 4

    if-nez p1, :cond_7

    if-eqz p2, :cond_5

    goto :goto_7

    :cond_5
    const/4 p1, 0x0

    goto :goto_8

    :cond_7
    :goto_7
    const/4 p1, 0x1

    :goto_8
    const/16 v0, 0x20

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateStateForFlag(IZ)V

    const/16 p1, 0x40

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateStateForFlag(IZ)V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->applyState()V

    return-void
.end method

.method public updateNavButtonDarkIntensity()V
    .registers 5

    const-string v0, "NavbarButtonsViewController"

    const-string v1, "---->updateNavButtonDarkIntensity"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mTaskbarNavButtonDarkIntensity:Lcom/android/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mNavButtonDarkIntensityMultiplier:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    mul-float/2addr v0, v1

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mLightIconColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mDarkIconColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mAllButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_30

    :cond_44
    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mIconColor:F

    return-void
.end method

.method public updatePostionSwitchVisible(F)V
    .registers 2

    return-void
.end method

.method public updateStateForFlag(IZ)V
    .registers 3

    if-eqz p2, :cond_8

    iget p2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mState:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mState:I

    goto :goto_e

    :cond_8
    iget p2, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mState:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mState:I

    :goto_e
    return-void
.end method

.method public updateStateForSysuiFlags(IZ)V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSysuiStateFlags:I

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->parseSystemUiFlags(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->applyState()V

    if-eqz p2, :cond_14

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mPropertyHolders:Ljava/util/ArrayList;

    sget-object p1, Lcom/android/launcher3/taskbar/n;->b:Lcom/android/launcher3/taskbar/n;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_14
    return-void
.end method

.method public updateTaskbarAlignment(F)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mHitboxExtender:Lcom/android/launcher3/taskbar/RecentsHitboxExtender;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/RecentsHitboxExtender;->onAnimationProgressToOverview(F)V

    return-void
.end method
