.class public final Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createPanel(Landroid/content/Context;ILcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;)V
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    const-string v0, "launcher.dragLayer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    const/16 v2, 0x51

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v2, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/LayoutInflater;

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.launcher3.allapps.branch.BranchGuidePagePanel"

    const/4 v3, 0x0

    if-eq p2, v1, :cond_5f

    const/4 v1, 0x2

    if-ne p2, v1, :cond_56

    new-instance v1, Lio/branch/search/CustomEvent;

    invoke-direct {v1}, Lio/branch/search/CustomEvent;-><init>()V

    const-string v4, "OPT_IN"

    const-string v5, "IMPRESSION"

    invoke-virtual {v1, v4, v5}, Lio/branch/search/CustomEvent;->set(Ljava/lang/String;Ljava/lang/Object;)Lio/branch/search/CustomEvent;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/AnalyticsEvent;->track()V

    const v1, 0x7f0d0063

    invoke-virtual {p1, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;

    goto :goto_6b

    :cond_56
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "not support type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5f
    const v1, 0x7f0d005e

    invoke-virtual {p1, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;

    :goto_6b
    const v1, 0x7f0805af

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    invoke-static {p1, p2}, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->access$setMViewType$p(Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;I)V

    invoke-static {p1, p3}, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->access$setMColorAllAppsContainerView$p(Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;)V

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->animateShow()V

    return-void
.end method
