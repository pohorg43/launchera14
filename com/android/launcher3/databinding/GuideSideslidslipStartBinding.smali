.class public final Lcom/android/launcher3/databinding/GuideSideslidslipStartBinding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final guideAnimation:Lcom/oplus/anim/EffectiveAnimationView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final guideStartContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/android/launcher/guide/side/SideSlipGesturesGuideStartPage;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final sideGesturesGuideActionButton:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final sideGesturesLearning:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final sideGesturesLearningMsg:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final sideGesturesLearningTips:Landroid/widget/ScrollView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final sideGesturesSkip:Lcom/coui/appcompat/button/COUIButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final sideGesturesStartLearning:Lcom/coui/appcompat/button/COUIButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/launcher/guide/side/SideSlipGesturesGuideStartPage;Lcom/oplus/anim/EffectiveAnimationView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ScrollView;Lcom/coui/appcompat/button/COUIButton;Lcom/coui/appcompat/button/COUIButton;)V
    .registers 10
    .param p1  # Lcom/android/launcher/guide/side/SideSlipGesturesGuideStartPage;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/oplus/anim/EffectiveAnimationView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7  # Landroid/widget/ScrollView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8  # Lcom/coui/appcompat/button/COUIButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9  # Lcom/coui/appcompat/button/COUIButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/databinding/GuideSideslidslipStartBinding;->rootView:Lcom/android/launcher/guide/side/SideSlipGesturesGuideStartPage;

    iput-object p2, p0, Lcom/android/launcher3/databinding/GuideSideslidslipStartBinding;->guideAnimation:Lcom/oplus/anim/EffectiveAnimationView;

    iput-object p3, p0, Lcom/android/launcher3/databinding/GuideSideslidslipStartBinding;->guideStartContainer:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/android/launcher3/databinding/GuideSideslidslipStartBinding;->sideGesturesGuideActionButton:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/android/launcher3/databinding/GuideSideslidslipStartBinding;->sideGesturesLearning:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/android/launcher3/databinding/GuideSideslidslipStartBinding;->sideGesturesLearningMsg:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/android/launcher3/databinding/GuideSideslidslipStartBinding;->sideGesturesLearningTips:Landroid/widget/ScrollView;

    iput-object p8, p0, Lcom/android/launcher3/databinding/GuideSideslidslipStartBinding;->sideGesturesSkip:Lcom/coui/appcompat/button/COUIButton;

    iput-object p9, p0, Lcom/android/launcher3/databinding/GuideSideslidslipStartBinding;->sideGesturesStartLearning:Lcom/coui/appcompat/button/COUIButton;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/android/launcher3/databinding/GuideSideslidslipStartBinding;
    .registers 13
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a02f8

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/oplus/anim/EffectiveAnimationView;

    if-eqz v4, :cond_6a

    const v0, 0x7f0a0304

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_6a

    const v0, 0x7f0a054c

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_6a

    const v0, 0x7f0a0556

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_6a

    const v0, 0x7f0a0557

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_6a

    const v0, 0x7f0a0558

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ScrollView;

    if-eqz v9, :cond_6a

    const v0, 0x7f0a055b

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/coui/appcompat/button/COUIButton;

    if-eqz v10, :cond_6a

    const v0, 0x7f0a055c

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/coui/appcompat/button/COUIButton;

    if-eqz v11, :cond_6a

    new-instance v0, Lcom/android/launcher3/databinding/GuideSideslidslipStartBinding;

    move-object v3, p0

    check-cast v3, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStartPage;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/android/launcher3/databinding/GuideSideslidslipStartBinding;-><init>(Lcom/android/launcher/guide/side/SideSlipGesturesGuideStartPage;Lcom/oplus/anim/EffectiveAnimationView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ScrollView;Lcom/coui/appcompat/button/COUIButton;Lcom/coui/appcompat/button/COUIButton;)V

    return-object v0

    :cond_6a
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/android/launcher3/databinding/GuideSideslidslipStartBinding;
    .registers 3
    .param p0  # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/databinding/GuideSideslidslipStartBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/GuideSideslidslipStartBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/GuideSideslidslipStartBinding;
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

    const v0, 0x7f0d014d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_d
    invoke-static {p0}, Lcom/android/launcher3/databinding/GuideSideslidslipStartBinding;->bind(Landroid/view/View;)Lcom/android/launcher3/databinding/GuideSideslidslipStartBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/databinding/GuideSideslidslipStartBinding;->getRoot()Lcom/android/launcher/guide/side/SideSlipGesturesGuideStartPage;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/android/launcher/guide/side/SideSlipGesturesGuideStartPage;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/databinding/GuideSideslidslipStartBinding;->rootView:Lcom/android/launcher/guide/side/SideSlipGesturesGuideStartPage;

    return-object p0
.end method
