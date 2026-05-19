.class public final Lcom/android/launcher/widget/RemoveWidgetDialog;
.super Lcom/android/launcher3/views/AbstractSlideInView;
.source ""

# interfaces
.implements Lcom/android/launcher3/Insettable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/widget/RemoveWidgetDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/views/AbstractSlideInView<",
        "Lcom/android/launcher/Launcher;",
        ">;",
        "Lcom/android/launcher3/Insettable;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/widget/RemoveWidgetDialog$Companion;

.field private static final FINAL_SCRIM_BG_COLOR:J = 0x88000000L

.field private static final HALF_VALUE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RemoveWidgetDialog"


# instance fields
.field private mIsCardFlag:Z

.field private mMessageTv:Landroid/widget/TextView;

.field private mNegativeButton:Landroid/widget/Button;

.field private mNeutralButton:Landroid/widget/Button;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/widget/RemoveWidgetDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/widget/RemoveWidgetDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/widget/RemoveWidgetDialog;->Companion:Lcom/android/launcher/widget/RemoveWidgetDialog$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/widget/RemoveWidgetDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/widget/RemoveWidgetDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/views/AbstractSlideInView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/widget/RemoveWidgetDialog;->mIsCardFlag:Z

    iput-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/widget/RemoveWidgetDialog;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/widget/RemoveWidgetDialog;->onFinishInflate$lambda$0(Lcom/android/launcher/widget/RemoveWidgetDialog;Landroid/view/View;)V

    return-void
.end method

.method private final animateOpen()V
    .registers 7

    iget-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_31

    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    new-array v2, v0, [Landroid/animation/PropertyValuesHolder;

    sget-object v3, Lcom/android/launcher3/views/AbstractSlideInView;->TRANSLATION_SHIFT:Landroid/util/Property;

    new-array v0, v0, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v0, v5

    invoke-static {v3, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_31
    :goto_31
    return-void
.end method

.method public static final getDialog(Lcom/android/launcher/Launcher;)Lcom/android/launcher/widget/RemoveWidgetDialog;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/widget/RemoveWidgetDialog;->Companion:Lcom/android/launcher/widget/RemoveWidgetDialog$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher/widget/RemoveWidgetDialog$Companion;->getDialog(Lcom/android/launcher/Launcher;)Lcom/android/launcher/widget/RemoveWidgetDialog;

    move-result-object p0

    return-object p0
.end method

.method private static final onFinishInflate$lambda$0(Lcom/android/launcher/widget/RemoveWidgetDialog;Landroid/view/View;)V
    .registers 2

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    return-void
.end method


# virtual methods
.method public attachToContainer()V
    .registers 5

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mColorScrim:Landroid/view/View;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mColorScrim:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_13
    new-instance v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    new-instance v1, Lcom/android/launcher/UninstallRemoveAppPanel;

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-string v3, "mContext"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/launcher/UninstallRemoveAppPanel;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/launcher/UninstallRemoveAppPanel;->getDialogMarginBottomHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070775

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4c

    :cond_49
    invoke-super {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->attachToContainer()V

    :goto_4c
    return-void
.end method

.method public final getIsCard()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/widget/RemoveWidgetDialog;->mIsCardFlag:Z

    return p0
.end method

.method public getScrimColor(Landroid/content/Context;)I
    .registers 2

    const/high16 p0, -0x78000000

    return p0
.end method

.method public getShiftRange()F
    .registers 5

    invoke-super {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getShiftRange()F

    sget-object v0, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/common/config/ScreenInfo$Companion;->getDisplayScreenSize(Landroid/content/Context;)[I

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0}, Lcom/android/common/config/ScreenInfo$Companion;->getWindowBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    :cond_1f
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusDeviceProfile;->getWorkspaceInsets()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string/jumbo v3, "null cannot be cast to non-null type com.android.launcher3.views.BaseDragLayer.LayoutParams"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    iget-object v3, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v0

    iget v0, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr p0, v0

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v0

    if-eqz v0, :cond_55

    goto :goto_56

    :cond_55
    move v3, p0

    :goto_56
    int-to-float p0, v3

    return p0
.end method

.method public handleClose(Z)V
    .registers 4

    const-wide/16 v0, 0xf0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/views/AbstractSlideInView;->handleClose(ZJ)V

    return-void
.end method

.method public isOfType(I)Z
    .registers 2

    const/high16 p0, 0x100000

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    const-string v1, "mActivityContext.dragLayer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v1}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->isAllAppsViewInSelectState()Z

    move-result v1

    if-eqz v1, :cond_2c

    return v2

    :cond_2c
    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_36

    invoke-virtual {p0, v2}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    return v2

    :cond_36
    const/4 p0, 0x0

    return p0
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public onFinishInflate()V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    const v0, 0x7f0a03d8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher/widget/RemoveWidgetDialog;->mMessageTv:Landroid/widget/TextView;

    const v0, 0x7f0a0423

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/launcher/widget/RemoveWidgetDialog;->mNeutralButton:Landroid/widget/Button;

    const v0, 0x7f0a0421

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/launcher/widget/RemoveWidgetDialog;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/launcher/widget/RemoveWidgetDialog;->getIsCard()Z

    move-result v0

    const v1, 0x7f0809c5

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/launcher/widget/RemoveWidgetDialog;->mNeutralButton:Landroid/widget/Button;

    if-eqz v0, :cond_34

    const v2, 0x7f08052a

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_34
    iget-object v0, p0, Lcom/android/launcher/widget/RemoveWidgetDialog;->mNegativeButton:Landroid/widget/Button;

    if-eqz v0, :cond_4d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_4d

    :cond_3c
    iget-object v0, p0, Lcom/android/launcher/widget/RemoveWidgetDialog;->mNeutralButton:Landroid/widget/Button;

    if-eqz v0, :cond_46

    const v2, 0x7f0809c6

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_46
    iget-object v0, p0, Lcom/android/launcher/widget/RemoveWidgetDialog;->mNegativeButton:Landroid/widget/Button;

    if-eqz v0, :cond_4d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_4d
    :goto_4d
    iget-object v0, p0, Lcom/android/launcher/widget/RemoveWidgetDialog;->mNegativeButton:Landroid/widget/Button;

    if-eqz v0, :cond_59

    new-instance v1, Lcom/android/launcher/guide/side/b;

    invoke-direct {v1, p0}, Lcom/android/launcher/guide/side/b;-><init>(Lcom/android/launcher/widget/RemoveWidgetDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_59
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mTranslationShift:F

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/AbstractSlideInView;->setTranslationShift(F)V

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .registers 5

    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_1b

    const v1, 0x7f07070a

    goto :goto_1e

    :cond_1b
    const v1, 0x7f070708

    :goto_1e
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, p1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    sget-object v1, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/common/config/ScreenInfo$Companion;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-virtual {v0}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_68

    :cond_56
    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz p1, :cond_63

    invoke-virtual {v0}, Landroid/widget/FrameLayout$LayoutParams;->getMarginEnd()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_68

    :cond_63
    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr p1, v1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_68
    :goto_68
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setIsCard(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/widget/RemoveWidgetDialog;->mIsCardFlag:Z

    return-void
.end method

.method public final setMessageTv(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/widget/RemoveWidgetDialog;->mMessageTv:Landroid/widget/TextView;

    if-nez v0, :cond_5

    goto :goto_10

    :cond_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_10
    return-void
.end method

.method public final setMessageTv(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/widget/RemoveWidgetDialog;->mMessageTv:Landroid/widget/TextView;

    if-nez p0, :cond_b

    goto :goto_e

    :cond_b
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_e
    return-void
.end method

.method public final setNeutralButton(ILandroid/view/View$OnClickListener;)V
    .registers 5

    const-string v0, "clickListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/widget/RemoveWidgetDialog;->mNeutralButton:Landroid/widget/Button;

    if-nez v0, :cond_a

    goto :goto_15

    :cond_a
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_15
    iget-object p0, p0, Lcom/android/launcher/widget/RemoveWidgetDialog;->mNeutralButton:Landroid/widget/Button;

    if-eqz p0, :cond_1c

    invoke-virtual {p0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1c
    return-void
.end method

.method public final show(Z)V
    .registers 3

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/android/launcher/widget/RemoveWidgetDialog;->mMessageTv:Landroid/widget/TextView;

    if-nez p1, :cond_7

    goto :goto_c

    :cond_7
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_c
    :goto_c
    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {p1}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V

    invoke-virtual {p0}, Lcom/android/launcher/widget/RemoveWidgetDialog;->attachToContainer()V

    invoke-direct {p0}, Lcom/android/launcher/widget/RemoveWidgetDialog;->animateOpen()V

    return-void
.end method
