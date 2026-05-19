.class public final Lcom/android/launcher3/popup/PopupBlurView$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/popup/PopupBlurView;
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

    invoke-direct {p0}, Lcom/android/launcher3/popup/PopupBlurView$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPopBlurView(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/launcher3/popup/PopupBlurView;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "container"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/popup/PopupBlurView;

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/PopupBlurView;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/common/util/PlatformLevelUtils;->isBlurUnavailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    const v0, 0x7f06078e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_30

    :cond_20
    sget-object v0, Lcom/android/launcher3/popup/PopupBlurHelper;->INSTANCE:Lcom/android/launcher3/popup/PopupBlurHelper;

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    const-string v1, "fromContext(context)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher3/popup/PopupBlurHelper;->loadPopupBlurBg(Lcom/android/launcher/Launcher;Lcom/android/launcher3/popup/PopupBlurView;)V

    :goto_30
    new-instance p1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-object p0
.end method
