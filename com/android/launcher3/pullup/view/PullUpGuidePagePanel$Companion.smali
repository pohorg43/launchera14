.class public final Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;
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

    invoke-direct {p0}, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createPanel(Landroid/content/Context;ILcom/android/launcher3/OplusDragLayer;)V
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    const-string v1, "launcher.dragLayer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    const/16 v2, 0x51

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v2, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/LayoutInflater;

    const/4 v2, 0x3

    if-ne p2, v2, :cond_86

    const v2, 0x7f0d0208

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.launcher3.pullup.view.PullUpGuidePagePanel"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;

    sget-object v2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v2}, Lcom/android/common/util/AppFeatureUtils;->getRegionName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RU"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    const v2, 0x7f0a029b

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f1205a3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f0a0300

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f080741

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_73
    const p0, 0x7f0805af

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    invoke-static {p1, p2}, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->access$setMViewType$p(Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;I)V

    invoke-static {p1, p3}, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->access$setMColorDragLayer$p(Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;Lcom/android/launcher3/OplusDragLayer;)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->animateShow()V

    return-void

    :cond_86
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "not support type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
