.class public final Lcom/android/launcher3/databinding/GuideSideslidslipCompletedBinding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final gestureFullScreenGestureAnimation:Lcom/oplus/anim/EffectiveAnimationView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final gestureUpIv:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final guideCompleteContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final radioButtonFullScreenGestures:Landroid/widget/RadioButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final radioButtonUpGesture:Landroid/widget/RadioButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final radioButtonVirtualKey:Landroid/widget/RadioButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final sideGestureAllGesturesLayout:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final sideGestureFullScreenGestureLayout:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final sideGestureUpLayout:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final sideGesturesFullScreenGesturesTv:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final sideGesturesGuideActionCompleted:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final sideGesturesLearning:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final sideGesturesLearningTipsCompleted:Landroid/widget/ScrollView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final sideGesturesNotUsing:Lcom/coui/appcompat/button/COUIButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final sideGesturesStartUsing:Lcom/coui/appcompat/button/COUIButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final sideGesturesStudyAgainBottom:Lcom/coui/appcompat/button/COUIButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final sideGesturesUpGestureTv:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final sideGesturesUse:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final sideGesturesVirtualKeyIv:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final sideGesturesVirtualKeyLayout:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final sideGesturesVirtualKeyTv:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;Lcom/oplus/anim/EffectiveAnimationView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ScrollView;Lcom/coui/appcompat/button/COUIButton;Lcom/coui/appcompat/button/COUIButton;Lcom/coui/appcompat/button/COUIButton;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .registers 25
    .param p1  # Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/oplus/anim/EffectiveAnimationView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Landroid/widget/RadioButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6  # Landroid/widget/RadioButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7  # Landroid/widget/RadioButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8  # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9  # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10  # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12  # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14  # Landroid/widget/ScrollView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15  # Lcom/coui/appcompat/button/COUIButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16  # Lcom/coui/appcompat/button/COUIButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p17  # Lcom/coui/appcompat/button/COUIButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p18  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p19  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p20  # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p21  # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p22  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/launcher3/databinding/GuideSideslidslipCompletedBinding;->rootView:Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/launcher3/databinding/GuideSideslidslipCompletedBinding;->gestureFullScreenGestureAnimation:Lcom/oplus/anim/EffectiveAnimationView;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/launcher3/databinding/GuideSideslidslipCompletedBinding;->gestureUpIv:Landroid/widget/ImageView;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/launcher3/databinding/GuideSideslidslipCompletedBinding;->guideCompleteContainer:Landroid/widget/LinearLayout;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/launcher3/databinding/GuideSideslidslipCompletedBinding;->radioButtonFullScreenGestures:Landroid/widget/RadioButton;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/launcher3/databinding/GuideSideslidslipCompletedBinding;->radioButtonUpGesture:Landroid/widget/RadioButton;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/launcher3/databinding/GuideSideslidslipCompletedBinding;->radioButtonVirtualKey:Landroid/widget/RadioButton;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/launcher3/databinding/GuideSideslidslipCompletedBinding;->sideGestureAllGesturesLayout:Landroid/widget/LinearLayout;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/launcher3/databinding/GuideSideslidslipCompletedBinding;->sideGestureFullScreenGestureLayout:Landroid/widget/LinearLayout;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/launcher3/databinding/GuideSideslidslipCompletedBinding;->sideGestureUpLayout:Landroid/widget/LinearLayout;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/launcher3/databinding/GuideSideslidslipCompletedBinding;->sideGesturesFullScreenGesturesTv:Landroid/widget/TextView;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/launcher3/databinding/GuideSideslidslipCompletedBinding;->sideGesturesGuideActionCompleted:Landroid/widget/LinearLayout;

    move-object v1, p13

    iput-object v1, v0, Lcom/android/launcher3/databinding/GuideSideslidslipCompletedBinding;->sideGesturesLearning:Landroid/widget/TextView;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/launcher3/databinding/GuideSideslidslipCompletedBinding;->sideGesturesLearningTipsCompleted:Landroid/widget/ScrollView;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/launcher3/databinding/GuideSideslidslipCompletedBinding;->sideGesturesNotUsing:Lcom/coui/appcompat/button/COUIButton;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/launcher3/databinding/GuideSideslidslipCompletedBinding;->sideGesturesStartUsing:Lcom/coui/appcompat/button/COUIButton;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/launcher3/databinding/GuideSideslidslipCompletedBinding;->sideGesturesStudyAgainBottom:Lcom/coui/appcompat/button/COUIButton;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/launcher3/databinding/GuideSideslidslipCompletedBinding;->sideGesturesUpGestureTv:Landroid/widget/TextView;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/launcher3/databinding/GuideSideslidslipCompletedBinding;->sideGesturesUse:Landroid/widget/TextView;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/launcher3/databinding/GuideSideslidslipCompletedBinding;->sideGesturesVirtualKeyIv:Landroid/widget/ImageView;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/launcher3/databinding/GuideSideslidslipCompletedBinding;->sideGesturesVirtualKeyLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/android/launcher3/databinding/GuideSideslidslipCompletedBinding;->sideGesturesVirtualKeyTv:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/android/launcher3/databinding/GuideSideslidslipCompletedBinding;
    .registers 27
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    const v1, 0x7f0a02d1

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/oplus/anim/EffectiveAnimationView;

    if-eqz v5, :cond_112

    const v1, 0x7f0a02e6

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_112

    const v1, 0x7f0a02fa

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_112

    const v1, 0x7f0a04ad

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/RadioButton;

    if-eqz v8, :cond_112

    const v1, 0x7f0a04ae

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/RadioButton;

    if-eqz v9, :cond_112

    const v1, 0x7f0a04af

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/RadioButton;

    if-eqz v10, :cond_112

    const v1, 0x7f0a0548

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_112

    const v1, 0x7f0a0549

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_112

    const v1, 0x7f0a054a

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_112

    const v1, 0x7f0a054b

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_112

    const v1, 0x7f0a054d

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/LinearLayout;

    if-eqz v15, :cond_112

    const v1, 0x7f0a0556

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_112

    const v1, 0x7f0a0559

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/ScrollView;

    if-eqz v17, :cond_112

    const v1, 0x7f0a055a

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/coui/appcompat/button/COUIButton;

    if-eqz v18, :cond_112

    const v1, 0x7f0a055d

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/coui/appcompat/button/COUIButton;

    if-eqz v19, :cond_112

    const v1, 0x7f0a055e

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lcom/coui/appcompat/button/COUIButton;

    if-eqz v20, :cond_112

    const v1, 0x7f0a055f

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_112

    const v1, 0x7f0a0560

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/TextView;

    if-eqz v22, :cond_112

    const v1, 0x7f0a0561

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/widget/ImageView;

    if-eqz v23, :cond_112

    const v1, 0x7f0a0562

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroid/widget/LinearLayout;

    if-eqz v24, :cond_112

    const v1, 0x7f0a0563

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Landroid/widget/TextView;

    if-eqz v25, :cond_112

    new-instance v1, Lcom/android/launcher3/databinding/GuideSideslidslipCompletedBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;

    invoke-direct/range {v3 .. v25}, Lcom/android/launcher3/databinding/GuideSideslidslipCompletedBinding;-><init>(Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;Lcom/oplus/anim/EffectiveAnimationView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ScrollView;Lcom/coui/appcompat/button/COUIButton;Lcom/coui/appcompat/button/COUIButton;Lcom/coui/appcompat/button/COUIButton;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    return-object v1

    :cond_112
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/android/launcher3/databinding/GuideSideslidslipCompletedBinding;
    .registers 3
    .param p0  # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/databinding/GuideSideslidslipCompletedBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/GuideSideslidslipCompletedBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/GuideSideslidslipCompletedBinding;
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

    const v0, 0x7f0d014c

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_d
    invoke-static {p0}, Lcom/android/launcher3/databinding/GuideSideslidslipCompletedBinding;->bind(Landroid/view/View;)Lcom/android/launcher3/databinding/GuideSideslidslipCompletedBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/databinding/GuideSideslidslipCompletedBinding;->getRoot()Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/databinding/GuideSideslidslipCompletedBinding;->rootView:Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;

    return-object p0
.end method
