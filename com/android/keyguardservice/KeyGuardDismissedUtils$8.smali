.class Lcom/android/keyguardservice/KeyGuardDismissedUtils$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguardservice/KeyGuardDismissedUtils;->buildBubbleTextViewAnimation(Landroid/view/ViewGroup;JJLcom/android/launcher3/anim/OSpringInterpolator;Z)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$hasText:Z

.field public final synthetic val$shortcutAndWidgetContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(ZLandroid/view/ViewGroup;)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/keyguardservice/KeyGuardDismissedUtils$8;->val$hasText:Z

    iput-object p2, p0, Lcom/android/keyguardservice/KeyGuardDismissedUtils$8;->val$shortcutAndWidgetContainer:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 5

    iget-boolean p1, p0, Lcom/android/keyguardservice/KeyGuardDismissedUtils$8;->val$hasText:Z

    if-nez p1, :cond_5

    return-void

    :cond_5
    const/4 p1, 0x0

    :goto_6
    iget-object v0, p0, Lcom/android/keyguardservice/KeyGuardDismissedUtils$8;->val$shortcutAndWidgetContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_40

    iget-object v0, p0, Lcom/android/keyguardservice/KeyGuardDismissedUtils$8;->val$shortcutAndWidgetContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/BubbleTextView;

    const/high16 v2, 0x3f800000  # 1.0f

    if-eqz v1, :cond_20

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BubbleTextView;->setTextAlpha(F)V

    goto :goto_3d

    :cond_20
    instance-of v1, v0, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v1, :cond_34

    check-cast v0, Lcom/android/launcher3/card/LauncherCardView;

    invoke-interface {v0}, Lcom/oplus/card/manager/domain/ICardView;->getCardName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Lcom/oplus/card/manager/domain/ICardView;->getCardName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BubbleTextView;->setTextAlpha(F)V

    goto :goto_3d

    :cond_34
    instance-of v1, v0, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v1, :cond_3d

    check-cast v0, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/FolderIcon;->setTextAlpha(F)V

    :cond_3d
    :goto_3d
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_40
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->access$302(Z)Z

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->KEYGUARD_DISMISS_TEXT:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->KEYGUARD_DISMISS_TEXT:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    return-void
.end method
