.class public final Lcom/android/launcher3/databinding/GestureTutorialFragmentBinding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final bottomTaskView:Landroidx/cardview/widget/CardView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final fullTaskView:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final gestureTutorialEdgeGestureVideo:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final gestureTutorialFakeHotseatView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final gestureTutorialFakeIconView:Lcom/android/launcher3/views/ClipIconView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final gestureTutorialFakeLauncherView:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final gestureTutorialFakePreviousTaskView:Lcom/android/quickstep/interaction/AnimatedTaskView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final gestureTutorialFakeTaskView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final gestureTutorialFakeTaskbarView:Lcom/android/launcher3/databinding/GestureTutorialTabletMockTaskbarBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final gestureTutorialFingerDot:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final gestureTutorialFragmentActionButton:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final gestureTutorialFragmentCloseButton:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final gestureTutorialFragmentFeedbackSubtitle:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final gestureTutorialFragmentFeedbackTitle:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final gestureTutorialFragmentFeedbackTutorialStep:Lcom/android/quickstep/interaction/TutorialStepIndicator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final gestureTutorialFragmentFeedbackView:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final gestureTutorialRippleView:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/android/quickstep/interaction/RootSandboxLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final topTaskView:Landroidx/cardview/widget/CardView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/quickstep/interaction/RootSandboxLayout;Landroidx/cardview/widget/CardView;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Lcom/android/launcher3/views/ClipIconView;Landroid/widget/RelativeLayout;Lcom/android/quickstep/interaction/AnimatedTaskView;Landroid/widget/FrameLayout;Lcom/android/launcher3/databinding/GestureTutorialTabletMockTaskbarBinding;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/android/quickstep/interaction/TutorialStepIndicator;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroidx/cardview/widget/CardView;)V
    .registers 22
    .param p1  # Lcom/android/quickstep/interaction/RootSandboxLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroidx/cardview/widget/CardView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6  # Lcom/android/launcher3/views/ClipIconView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7  # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8  # Lcom/android/quickstep/interaction/AnimatedTaskView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9  # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10  # Lcom/android/launcher3/databinding/GestureTutorialTabletMockTaskbarBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11  # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12  # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13  # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16  # Lcom/android/quickstep/interaction/TutorialStepIndicator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p17  # Landroidx/constraintlayout/widget/ConstraintLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p18  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p19  # Landroidx/cardview/widget/CardView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/launcher3/databinding/GestureTutorialFragmentBinding;->rootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/launcher3/databinding/GestureTutorialFragmentBinding;->bottomTaskView:Landroidx/cardview/widget/CardView;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/launcher3/databinding/GestureTutorialFragmentBinding;->fullTaskView:Landroid/view/View;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/launcher3/databinding/GestureTutorialFragmentBinding;->gestureTutorialEdgeGestureVideo:Landroid/widget/ImageView;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/launcher3/databinding/GestureTutorialFragmentBinding;->gestureTutorialFakeHotseatView:Landroid/widget/FrameLayout;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/launcher3/databinding/GestureTutorialFragmentBinding;->gestureTutorialFakeIconView:Lcom/android/launcher3/views/ClipIconView;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/launcher3/databinding/GestureTutorialFragmentBinding;->gestureTutorialFakeLauncherView:Landroid/widget/RelativeLayout;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/launcher3/databinding/GestureTutorialFragmentBinding;->gestureTutorialFakePreviousTaskView:Lcom/android/quickstep/interaction/AnimatedTaskView;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/launcher3/databinding/GestureTutorialFragmentBinding;->gestureTutorialFakeTaskView:Landroid/widget/FrameLayout;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/launcher3/databinding/GestureTutorialFragmentBinding;->gestureTutorialFakeTaskbarView:Lcom/android/launcher3/databinding/GestureTutorialTabletMockTaskbarBinding;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/launcher3/databinding/GestureTutorialFragmentBinding;->gestureTutorialFingerDot:Landroid/widget/ImageView;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/launcher3/databinding/GestureTutorialFragmentBinding;->gestureTutorialFragmentActionButton:Landroid/widget/Button;

    move-object v1, p13

    iput-object v1, v0, Lcom/android/launcher3/databinding/GestureTutorialFragmentBinding;->gestureTutorialFragmentCloseButton:Landroid/widget/Button;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/launcher3/databinding/GestureTutorialFragmentBinding;->gestureTutorialFragmentFeedbackSubtitle:Landroid/widget/TextView;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/launcher3/databinding/GestureTutorialFragmentBinding;->gestureTutorialFragmentFeedbackTitle:Landroid/widget/TextView;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/launcher3/databinding/GestureTutorialFragmentBinding;->gestureTutorialFragmentFeedbackTutorialStep:Lcom/android/quickstep/interaction/TutorialStepIndicator;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/launcher3/databinding/GestureTutorialFragmentBinding;->gestureTutorialFragmentFeedbackView:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/launcher3/databinding/GestureTutorialFragmentBinding;->gestureTutorialRippleView:Landroid/view/View;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/launcher3/databinding/GestureTutorialFragmentBinding;->topTaskView:Landroidx/cardview/widget/CardView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/android/launcher3/databinding/GestureTutorialFragmentBinding;
    .registers 24
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    const v1, 0x7f0a00eb

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/cardview/widget/CardView;

    if-eqz v5, :cond_e5

    const v1, 0x7f0a02cd

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_e5

    const v1, 0x7f0a02d6

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_e5

    const v1, 0x7f0a02d7

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_e5

    const v1, 0x7f0a02d8

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/android/launcher3/views/ClipIconView;

    if-eqz v9, :cond_e5

    const v1, 0x7f0a02d9

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/RelativeLayout;

    if-eqz v10, :cond_e5

    const v1, 0x7f0a02da

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/quickstep/interaction/AnimatedTaskView;

    if-eqz v11, :cond_e5

    const v1, 0x7f0a02db

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/FrameLayout;

    if-eqz v12, :cond_e5

    const v1, 0x7f0a02dc

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_e5

    invoke-static {v2}, Lcom/android/launcher3/databinding/GestureTutorialTabletMockTaskbarBinding;->bind(Landroid/view/View;)Lcom/android/launcher3/databinding/GestureTutorialTabletMockTaskbarBinding;

    move-result-object v13

    const v1, 0x7f0a02dd

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/ImageView;

    if-eqz v14, :cond_e5

    const v1, 0x7f0a02de

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/Button;

    if-eqz v15, :cond_e5

    const v1, 0x7f0a02df

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/Button;

    if-eqz v16, :cond_e5

    const v1, 0x7f0a02e1

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_e5

    const v1, 0x7f0a02e2

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_e5

    const v1, 0x7f0a02e3

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/android/quickstep/interaction/TutorialStepIndicator;

    if-eqz v19, :cond_e5

    const v1, 0x7f0a02e4

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v20, :cond_e5

    const v1, 0x7f0a02e5

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v21

    if-eqz v21, :cond_e5

    const v1, 0x7f0a0645

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroidx/cardview/widget/CardView;

    if-eqz v22, :cond_e5

    new-instance v1, Lcom/android/launcher3/databinding/GestureTutorialFragmentBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Lcom/android/quickstep/interaction/RootSandboxLayout;

    invoke-direct/range {v3 .. v22}, Lcom/android/launcher3/databinding/GestureTutorialFragmentBinding;-><init>(Lcom/android/quickstep/interaction/RootSandboxLayout;Landroidx/cardview/widget/CardView;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Lcom/android/launcher3/views/ClipIconView;Landroid/widget/RelativeLayout;Lcom/android/quickstep/interaction/AnimatedTaskView;Landroid/widget/FrameLayout;Lcom/android/launcher3/databinding/GestureTutorialTabletMockTaskbarBinding;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/android/quickstep/interaction/TutorialStepIndicator;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroidx/cardview/widget/CardView;)V

    return-object v1

    :cond_e5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/android/launcher3/databinding/GestureTutorialFragmentBinding;
    .registers 3
    .param p0  # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/databinding/GestureTutorialFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/GestureTutorialFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/GestureTutorialFragmentBinding;
    .registers 5
    .param p0  # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0d0133

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_d
    invoke-static {p0}, Lcom/android/launcher3/databinding/GestureTutorialFragmentBinding;->bind(Landroid/view/View;)Lcom/android/launcher3/databinding/GestureTutorialFragmentBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/databinding/GestureTutorialFragmentBinding;->getRoot()Lcom/android/quickstep/interaction/RootSandboxLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/android/quickstep/interaction/RootSandboxLayout;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/databinding/GestureTutorialFragmentBinding;->rootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

    return-object p0
.end method
