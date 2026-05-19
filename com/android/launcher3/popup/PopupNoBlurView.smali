.class public final Lcom/android/launcher3/popup/PopupNoBlurView;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/popup/PopupNoBlurView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/popup/PopupNoBlurView$Companion;

.field private static final DURATION_ALPHA_ANIM:J = 0x14aL


# instance fields
.field private alertDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/popup/PopupNoBlurView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/popup/PopupNoBlurView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/popup/PopupNoBlurView;->Companion:Lcom/android/launcher3/popup/PopupNoBlurView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/popup/PopupNoBlurView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/popup/PopupNoBlurView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/app/AlertDialog;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/popup/PopupNoBlurView;->removeBySelf$lambda$2$lambda$1(Landroidx/appcompat/app/AlertDialog;)V

    return-void
.end method

.method public static final synthetic access$finish(Lcom/android/launcher3/popup/PopupNoBlurView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/popup/PopupNoBlurView;->finish()V

    return-void
.end method

.method private final finish()V
    .registers 3

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/OplusDragController;->runDeferredRemoveCallback()V

    :cond_11
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0, p0}, Lcom/android/launcher3/OplusDragLayer;->removeView(Landroid/view/View;)V

    :cond_1c
    return-void
.end method

.method public static final getPopNoBlurView(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/launcher3/popup/PopupNoBlurView;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/popup/PopupNoBlurView;->Companion:Lcom/android/launcher3/popup/PopupNoBlurView$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/popup/PopupNoBlurView$Companion;->getPopNoBlurView(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/launcher3/popup/PopupNoBlurView;

    move-result-object p0

    return-object p0
.end method

.method private static final removeBySelf$lambda$2$lambda$1(Landroidx/appcompat/app/AlertDialog;)V
    .registers 2

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public final createBlurAnim(Z)Landroid/animation/ObjectAnimator;
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    move v1, v0

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    :goto_9
    if-eqz p1, :cond_d

    const/high16 v0, 0x3f800000  # 1.0f

    :cond_d
    sget-object v2, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v1, 0x1

    aput v0, v3, v1

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x14a

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/android/launcher3/popup/PopupNoBlurView$createBlurAnim$1$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/popup/PopupNoBlurView$createBlurAnim$1$1;-><init>(Lcom/android/launcher3/popup/PopupNoBlurView;)V

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2b
    const-string/jumbo p0, "ofFloat(this, ALPHA, sta…)\n            }\n        }"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final removeBySelf()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupNoBlurView;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_c

    new-instance v1, Lcom/android/launcher3/popup/z;

    invoke-direct {v1, v0}, Lcom/android/launcher3/popup/z;-><init>(Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method public final setDialog(Landroidx/appcompat/app/AlertDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/popup/PopupNoBlurView;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
