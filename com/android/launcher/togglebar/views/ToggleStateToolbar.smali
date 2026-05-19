.class public final Lcom/android/launcher/togglebar/views/ToggleStateToolbar;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/togglebar/views/ToggleStateToolbar$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nToggleStateToolbar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ToggleStateToolbar.kt\ncom/android/launcher/togglebar/views/ToggleStateToolbar\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,393:1\n252#2:394\n*S KotlinDebug\n*F\n+ 1 ToggleStateToolbar.kt\ncom/android/launcher/togglebar/views/ToggleStateToolbar\n*L\n305#1:394\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/togglebar/views/ToggleStateToolbar$Companion;

.field private static final TAG:Ljava/lang/String; = "ToggleStateToolbar"

.field private static final TOOL_TIPS_SHOW_TIME:J = 0x64L


# instance fields
.field private mAddCardBtn:Lcom/android/launcher/views/PressFeedbackButton;

.field private mAddCardToolTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

.field private mAnimationManager:Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;

.field private mDragCancelButton:Lcom/android/launcher/togglebar/views/DragCancelButton;

.field private mFinishBtn:Lcom/android/launcher/views/PressFeedbackButton;

.field private mIsToggleBarStateIcon:Z

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mMainPageContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mSecondaryIv:Landroid/widget/ImageView;

.field private mSecondaryTitle:Landroid/widget/TextView;

.field private mSecondaryTitleContainer:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->Companion:Lcom/android/launcher/togglebar/views/ToggleStateToolbar$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mIsToggleBarStateIcon:Z

    invoke-direct {p0, p1}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mIsToggleBarStateIcon:Z

    invoke-direct {p0, p1}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mIsToggleBarStateIcon:Z

    invoke-direct {p0, p1}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->onClick$lambda$4()V

    return-void
.end method

.method private final init(Landroid/content/Context;)V
    .registers 4

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0277

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/Launcher;

    iput-object p1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mLauncher:Lcom/android/launcher/Launcher;

    return-void
.end method

.method private static final onClick$lambda$4()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher/togglebar/ToggleBarUtils;->setCardStoreOpen(Z)V

    return-void
.end method


# virtual methods
.method public final dismissToolTip()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mAddCardToolTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    if-eqz v0, :cond_d

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mAddCardToolTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    :cond_d
    return-void
.end method

.method public final getCardStoreButton()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mAddCardBtn:Lcom/android/launcher/views/PressFeedbackButton;

    return-object p0
.end method

.method public final getDoneButton()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mFinishBtn:Lcom/android/launcher/views/PressFeedbackButton;

    return-object p0
.end method

.method public final notifyDragButtonState(Z)V
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mDragCancelButton:Lcom/android/launcher/togglebar/views/DragCancelButton;

    if-nez p1, :cond_a

    goto :goto_d

    :cond_a
    invoke-virtual {p1, v0}, Lcom/android/launcher/views/PressFeedbackButton;->setVisibility(I)V

    :goto_d
    iget-object p1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mDragCancelButton:Lcom/android/launcher/togglebar/views/DragCancelButton;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lcom/android/launcher/togglebar/views/DragCancelButton;->enableDrop()V

    :cond_14
    iget-object p0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mSecondaryTitleContainer:Landroid/view/View;

    if-nez p0, :cond_19

    goto :goto_34

    :cond_19
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_34

    :cond_1d
    iget-object p1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mDragCancelButton:Lcom/android/launcher/togglebar/views/DragCancelButton;

    if-nez p1, :cond_22

    goto :goto_25

    :cond_22
    invoke-virtual {p1, v1}, Lcom/android/launcher/views/PressFeedbackButton;->setVisibility(I)V

    :goto_25
    iget-object p1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mDragCancelButton:Lcom/android/launcher/togglebar/views/DragCancelButton;

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Lcom/android/launcher/togglebar/views/DragCancelButton;->disableDrop()V

    :cond_2c
    iget-object p0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mSecondaryTitleContainer:Landroid/view/View;

    if-nez p0, :cond_31

    goto :goto_34

    :cond_31
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_34
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9

    sget-object v0, Lcom/android/common/util/ClickUtils;->INSTANCE:Lcom/android/common/util/ClickUtils;

    invoke-virtual {v0}, Lcom/android/common/util/ClickUtils;->shortClickable()Z

    move-result v0

    if-eqz v0, :cond_179

    iget-object v0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    goto :goto_13

    :cond_12
    move-object v0, v1

    :goto_13
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto/16 :goto_179

    :cond_1e
    if-eqz p1, :cond_29

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2a

    :cond_29
    move-object v0, v1

    :goto_2a
    const v2, 0x7f0a00d2

    const v3, 0x7f0a0286

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_35

    goto :goto_3d

    :cond_35
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v3, :cond_3d

    :goto_3b
    move v6, v5

    goto :goto_48

    :cond_3d
    :goto_3d
    if-nez v0, :cond_40

    goto :goto_47

    :cond_40
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v2, :cond_47

    goto :goto_3b

    :cond_47
    :goto_47
    move v6, v4

    :goto_48
    if-eqz v6, :cond_be

    if-eqz p1, :cond_54

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v3, :cond_54

    move v0, v5

    goto :goto_55

    :cond_54
    move v0, v4

    :goto_55
    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    const-string v1, "add_btn"

    invoke-virtual {v0, v1}, Lcom/android/statistics/LauncherStatistics;->statsEnterEditBtnClick(Ljava/lang/String;)V

    :cond_62
    iget-object v0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mMainPageContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_73

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6e

    move v0, v5

    goto :goto_6f

    :cond_6e
    move v0, v4

    :goto_6f
    if-ne v0, v5, :cond_73

    move v0, v5

    goto :goto_74

    :cond_73
    move v0, v4

    :goto_74
    if-eqz v0, :cond_84

    if-eqz p1, :cond_80

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne p1, v2, :cond_80

    move p1, v5

    goto :goto_81

    :cond_80
    move p1, v4

    :goto_81
    if-eqz p1, :cond_84

    return-void

    :cond_84
    iget-object p1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_95

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p1

    if-eqz p1, :cond_95

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result p1

    if-ne p1, v5, :cond_95

    move v4, v5

    :cond_95
    if-eqz v4, :cond_98

    return-void

    :cond_98
    iget-object p1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p1}, Lcom/android/launcher3/AbstractFloatingView;->getOpenFolder(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    if-eqz p1, :cond_b5

    iget-object p1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/LauncherState;

    iget-object p0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/LauncherState;->onBackPressed(Lcom/android/launcher3/Launcher;)V

    return-void

    :cond_b5
    iget-object p0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_179

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->onBackPressed()V

    goto/16 :goto_179

    :cond_be
    const v2, 0x7f0a007e

    if-nez v0, :cond_c5

    goto/16 :goto_179

    :cond_c5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_179

    invoke-static {v5}, Lcom/android/launcher/togglebar/ToggleBarUtils;->setCardStoreOpen(Z)V

    if-eqz p1, :cond_d7

    sget-object v0, Lf0/a;->a:Lf0/a;

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_d7
    invoke-virtual {p0}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->dismissToolTip()V

    iget-object p1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->checkLauncherLockedAndToast(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_e3

    return-void

    :cond_e3
    iget-object p1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mAddCardBtn:Lcom/android/launcher/views/PressFeedbackButton;

    if-eqz p1, :cond_ef

    invoke-virtual {p1}, Landroid/widget/Button;->getAlpha()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :cond_ef
    const/4 p1, 0x0

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result p1

    if-eqz p1, :cond_f7

    return-void

    :cond_f7
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportCard()Z

    move-result p1

    if-nez p1, :cond_101

    invoke-virtual {p0, v5}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->startWidgetSheetPanel(Z)V

    return-void

    :cond_101
    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result p1

    if-nez p1, :cond_11d

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/card/CardPermissionManager;->isFirstTimeClickCardEntry()Z

    move-result p1

    if-eqz p1, :cond_11d

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/card/CardPermissionManager;->launchCardPermissionActivity()V

    return-void

    :cond_11d
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportCardGlobalDrag()Z

    move-result p1

    if-nez p1, :cond_127

    invoke-virtual {p0, v5}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->startWidgetSheetPanel(Z)V

    return-void

    :cond_127
    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result p1

    if-nez p1, :cond_139

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/card/CardPermissionManager;->launchCardPermissionActivity()V

    return-void

    :cond_139
    sget-object p1, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/oplus/card/manager/domain/CardManager;->reFetchCardList(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_154

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenContainer(Lcom/android/launcher3/views/ActivityContext;I)V

    :cond_154
    iget-object p1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p1}, Lcom/android/launcher/togglebar/ToggleBarUtils;->startCardStoreActivity(Lcom/android/launcher/Launcher;)V

    iget-object p1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_166

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p1

    if-eqz p1, :cond_166

    invoke-virtual {p1, v5, v4}, Lcom/android/launcher/togglebar/ToggleBarManager;->animCardStoreExpandCollapse(ZZ)V

    :cond_166
    iget-object p0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_179

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_179

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_179

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    :cond_179
    :goto_179
    return-void
.end method

.method public onFinishInflate()V
    .registers 7

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0a03b3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mMainPageContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a0286

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/views/PressFeedbackButton;

    iput-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mFinishBtn:Lcom/android/launcher/views/PressFeedbackButton;

    const v1, 0x7f0a007e

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/views/PressFeedbackButton;

    iput-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mAddCardBtn:Lcom/android/launcher/views/PressFeedbackButton;

    const v1, 0x7f0a00d2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mSecondaryIv:Landroid/widget/ImageView;

    const v1, 0x7f0a0524

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mSecondaryTitle:Landroid/widget/TextView;

    const v1, 0x7f0a0527

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mSecondaryTitleContainer:Landroid/view/View;

    const v1, 0x7f0a0251

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/togglebar/views/DragCancelButton;

    iput-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mDragCancelButton:Lcom/android/launcher/togglebar/views/DragCancelButton;

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isSupportMinimumMemory()Z

    move-result v1

    const v2, 0x7f0a0526

    if-eqz v1, :cond_67

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v3, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mDragCancelButton:Lcom/android/launcher/togglebar/views/DragCancelButton;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mDragCancelButton:Lcom/android/launcher/togglebar/views/DragCancelButton;

    :cond_67
    iget-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mSecondaryTitle:Landroid/widget/TextView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x4

    invoke-static {v1, v3}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->b(Landroid/widget/TextView;I)V

    iget-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mFinishBtn:Lcom/android/launcher/views/PressFeedbackButton;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1, v3}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->b(Landroid/widget/TextView;I)V

    sget-object v1, Lcom/android/launcher/wallpaper/WallpaperResolver;->Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    invoke-virtual {v1}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceEditModeBright()Z

    move-result v1

    if-eqz v1, :cond_d7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f060837

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060839

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    iget-object v5, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mFinishBtn:Lcom/android/launcher/views/PressFeedbackButton;

    if-eqz v5, :cond_a0

    invoke-virtual {v5, v1}, Lcom/android/launcher/views/PressFeedbackButton;->setDrawableColor(I)V

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setTextColor(I)V

    :cond_a0
    iget-object v5, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mAddCardBtn:Lcom/android/launcher/views/PressFeedbackButton;

    if-eqz v5, :cond_aa

    invoke-virtual {v5, v1}, Lcom/android/launcher/views/PressFeedbackButton;->setDrawableColor(I)V

    invoke-virtual {v5, v3}, Lcom/android/launcher/views/PressFeedbackButton;->setSrcDrawableColor(I)V

    :cond_aa
    iget-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mDragCancelButton:Lcom/android/launcher/togglebar/views/DragCancelButton;

    if-eqz v1, :cond_bc

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f060536

    invoke-virtual {v3, v5}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/launcher/views/PressFeedbackButton;->setDisableColor(I)V

    :cond_bc
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mSecondaryIv:Landroid/widget/ImageView;

    if-nez v3, :cond_cd

    goto :goto_d0

    :cond_cd
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :goto_d0
    iget-object v3, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mSecondaryTitle:Landroid/widget/TextView;

    if-eqz v3, :cond_d7

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_d7
    iget-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mFinishBtn:Lcom/android/launcher/views/PressFeedbackButton;

    if-eqz v1, :cond_de

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_de
    iget-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mSecondaryIv:Landroid/widget/ImageView;

    if-eqz v1, :cond_e5

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e5
    iget-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mAddCardBtn:Lcom/android/launcher/views/PressFeedbackButton;

    if-eqz v1, :cond_ec

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_ec
    new-instance v1, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v3, "findViewById(R.id.main_page_container)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "findViewById(R.id.secondary_container)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0, v2}, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mAnimationManager:Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;

    iget-object v0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mDragCancelButton:Lcom/android/launcher/togglebar/views/DragCancelButton;

    if-nez v0, :cond_10a

    goto :goto_10e

    :cond_10a
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher/views/PressFeedbackButton;->setEnabled(Z)V

    :goto_10e
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportCard()Z

    move-result v0

    if-eqz v0, :cond_118

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isSupportCardAndWidgetCombine:Z

    if-eqz v0, :cond_129

    :cond_118
    iget-object v0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mAddCardBtn:Lcom/android/launcher/views/PressFeedbackButton;

    if-nez v0, :cond_11d

    goto :goto_122

    :cond_11d
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher/views/PressFeedbackButton;->setVisibility(I)V

    :goto_122
    iget-object p0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mAddCardBtn:Lcom/android/launcher/views/PressFeedbackButton;

    if-eqz p0, :cond_129

    invoke-virtual {p0}, Lcom/android/launcher/views/PressFeedbackButton;->markKeepVisibility()V

    :cond_129
    return-void
.end method

.method public final onWallpaperBrightnessChanged()V
    .registers 6

    sget-object v0, Lcom/android/launcher/wallpaper/WallpaperResolver;->Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceEditModeBright()Z

    move-result v1

    const v2, 0x7f060839

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_27

    :cond_18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f060844

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_27
    iget-object v3, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mSecondaryIv:Landroid/widget/ImageView;

    if-nez v3, :cond_2c

    goto :goto_2f

    :cond_2c
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :goto_2f
    iget-object v3, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mSecondaryTitle:Landroid/widget/TextView;

    if-eqz v3, :cond_36

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_36
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceEditModeBright()Z

    move-result v3

    if-eqz v3, :cond_44

    const v3, 0x7f060837

    goto :goto_47

    :cond_44
    const v3, 0x7f06053c

    :goto_47
    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceEditModeBright()Z

    move-result v4

    if-eqz v4, :cond_56

    goto :goto_59

    :cond_56
    const v2, 0x7f06083a

    :goto_59
    invoke-virtual {v3, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mFinishBtn:Lcom/android/launcher/views/PressFeedbackButton;

    if-eqz v3, :cond_67

    invoke-virtual {v3, v1}, Lcom/android/launcher/views/PressFeedbackButton;->setDrawableColor(I)V

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setTextColor(I)V

    :cond_67
    iget-object v3, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mAddCardBtn:Lcom/android/launcher/views/PressFeedbackButton;

    if-eqz v3, :cond_71

    invoke-virtual {v3, v1}, Lcom/android/launcher/views/PressFeedbackButton;->setDrawableColor(I)V

    invoke-virtual {v3, v2}, Lcom/android/launcher/views/PressFeedbackButton;->setSrcDrawableColor(I)V

    :cond_71
    iget-object v2, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mDragCancelButton:Lcom/android/launcher/togglebar/views/DragCancelButton;

    if-eqz v2, :cond_78

    invoke-virtual {v2, v1}, Lcom/android/launcher/views/PressFeedbackButton;->setDrawableColor(I)V

    :cond_78
    iget-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mDragCancelButton:Lcom/android/launcher/togglebar/views/DragCancelButton;

    if-eqz v1, :cond_94

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceEditModeBright()Z

    move-result v0

    if-eqz v0, :cond_8a

    const v0, 0x7f060536

    goto :goto_8d

    :cond_8a
    const v0, 0x7f060535

    :goto_8d
    invoke-virtual {v2, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/launcher/views/PressFeedbackButton;->setDisableColor(I)V

    :cond_94
    iget-object p0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mDragCancelButton:Lcom/android/launcher/togglebar/views/DragCancelButton;

    if-eqz p0, :cond_9b

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/views/DragCancelButton;->onWallpaperBrightnessChanged()V

    :cond_9b
    return-void
.end method

.method public setAlpha(F)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mAddCardToolTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-ne v0, v1, :cond_d

    goto :goto_e

    :cond_d
    move v1, v2

    :goto_e
    if-eqz v1, :cond_1c

    iget-object v0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mAddCardToolTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1c
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final setSecondaryTitle(IZ)V
    .registers 9

    iget-object v0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mSecondaryTitle:Landroid/widget/TextView;

    if-nez v0, :cond_5

    goto :goto_1f

    :cond_5
    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10000b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1f
    iget-boolean p1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mIsToggleBarStateIcon:Z

    if-eq p2, p1, :cond_35

    iget-object p1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mSecondaryIv:Landroid/widget/ImageView;

    if-eqz p1, :cond_33

    if-eqz p2, :cond_2d

    const v0, 0x7f0806b8

    goto :goto_30

    :cond_2d
    const v0, 0x7f0806c4

    :goto_30
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_33
    iput-boolean p2, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mIsToggleBarStateIcon:Z

    :cond_35
    return-void
.end method

.method public final setSecondaryTitle(Ljava/lang/String;Z)V
    .registers 4

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mSecondaryTitle:Landroid/widget/TextView;

    if-nez v0, :cond_b

    goto :goto_e

    :cond_b
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_e
    iget-boolean p1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mIsToggleBarStateIcon:Z

    if-eq p2, p1, :cond_24

    iget-object p1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mSecondaryIv:Landroid/widget/ImageView;

    if-eqz p1, :cond_22

    if-eqz p2, :cond_1c

    const v0, 0x7f0806b8

    goto :goto_1f

    :cond_1c
    const v0, 0x7f0806c4

    :goto_1f
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_22
    iput-boolean p2, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mIsToggleBarStateIcon:Z

    :cond_24
    return-void
.end method

.method public final startWidgetSheetPanel()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->startWidgetSheetPanel(Z)V

    return-void
.end method

.method public final startWidgetSheetPanel(Z)V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher/togglebar/state/ToggleBarWidgetState;

    const-string v1, "ToggleStateToolbar"

    if-eqz v0, :cond_1a

    const-string/jumbo p0, "startWidgetSheetPanel but now is already widget state"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1a
    iget-object v0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v2, 0x0

    if-eqz v0, :cond_27

    const v3, 0x7f0a06cb

    invoke-virtual {v0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_28

    :cond_27
    move-object v0, v2

    :goto_28
    if-eqz v0, :cond_49

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exist widget sheet, remove ite, parent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_49

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_49
    new-instance v0, Lcom/android/launcher/togglebar/state/ToggleBarWidgetState;

    iget-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher/togglebar/state/ToggleBarWidgetState;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/state/ToggleBarWidgetState;->getUiController()Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;

    move-result-object v1

    instance-of v3, v1, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;

    if-eqz v3, :cond_5b

    move-object v2, v1

    check-cast v2, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;

    :cond_5b
    if-nez v2, :cond_5e

    goto :goto_61

    :cond_5e
    invoke-virtual {v2, p1}, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;->setStartByToggleBar(Z)V

    :goto_61
    iget-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v1

    if-eqz p1, :cond_6e

    const/4 p1, 0x2

    goto :goto_6f

    :cond_6e
    const/4 p1, -0x1

    :goto_6f
    invoke-virtual {v1, v0, p1}, Lcom/android/launcher/togglebar/ToggleBarManager;->changeToggleBarState(Lcom/android/launcher/togglebar/state/ToggleBarBaseState;I)V

    iget-object p0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/statistics/LauncherStatistics;->statsClickWidgetSetEntrance()V

    return-void
.end method

.method public final toolbarAnimation(FF)Landroid/animation/AnimatorSet;
    .registers 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animateView, mainTargetAlpha = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", backOpsTargetAlpha = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ToggleStateToolbar"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-nez v0, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->dismissToolTip()V

    :cond_2b
    iget-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mAnimationManager:Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-wide/16 v4, 0x1a1

    sget-object v6, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_APPEAR_TOOLBAR_ALPHA:Landroid/view/animation/PathInterpolator;

    const-wide/16 v7, 0xc8

    sget-object p0, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INSTANCE:Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->getINTERPOLATOR_DISAPPEAR_TOOLBAR_ALPHA()Landroid/view/animation/PathInterpolator;

    move-result-object v9

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v9}, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;->toolbarAnimation(FFJLandroid/view/animation/Interpolator;JLandroid/view/animation/Interpolator;)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public final toolbarAnimation(FFJLandroid/view/animation/Interpolator;)Landroid/animation/AnimatorSet;
    .registers 16

    const-string v0, "hideInterpolator"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mainUiExitOrEnterToolbarAnimation, mainTargetAlpha = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", backOpsTargetAlpha = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ToggleStateToolbar"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-nez v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->dismissToolTip()V

    :cond_31
    iget-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mAnimationManager:Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-wide/16 v4, 0x1a1

    sget-object v6, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_APPEAR_TOOLBAR_ALPHA:Landroid/view/animation/PathInterpolator;

    move v2, p1

    move v3, p2

    move-wide v7, p3

    move-object v9, p5

    invoke-virtual/range {v1 .. v9}, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;->toolbarAnimation(FFJLandroid/view/animation/Interpolator;JLandroid/view/animation/Interpolator;)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public final toolbarAnimation(FFJLandroid/view/animation/Interpolator;JLandroid/view/animation/Interpolator;)Landroid/animation/AnimatorSet;
    .registers 18

    move v1, p1

    const-string/jumbo v0, "showInterpolator"

    move-object v5, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hideInterpolator"

    move-object/from16 v8, p8

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mainUiExitOrEnterToolbarAnimation, mainTargetAlpha = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", backOpsTargetAlpha = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ToggleStateToolbar"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    cmpg-float v0, v1, v0

    if-nez v0, :cond_36

    const/4 v0, 0x1

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->dismissToolTip()V

    :cond_3c
    move-object v0, p0

    iget-object v0, v0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mAnimationManager:Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-wide v6, p6

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;->toolbarAnimation(FFJLandroid/view/animation/Interpolator;JLandroid/view/animation/Interpolator;)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method
