.class public final Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController$onStateChange$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->onStateChange(IJZ)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $isHide:Z

.field public final synthetic this$0:Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;


# direct methods
.method public constructor <init>(ZLcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController$onStateChange$3;->$isHide:Z

    iput-object p2, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController$onStateChange$3;->this$0:Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController$onStateChange$3;->$isHide:Z

    if-eqz p1, :cond_13

    iget-object p0, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController$onStateChange$3;->this$0:Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->access$getMTaskbarStashedHandleAlpha$p$s-1743425996(Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;)Lcom/android/launcher3/util/MultiValueAlpha;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    :cond_13
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController$onStateChange$3;->$isHide:Z

    if-nez p1, :cond_14

    iget-object p0, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController$onStateChange$3;->this$0:Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->access$getMTaskbarStashedHandleAlpha$p$s-1743425996(Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;)Lcom/android/launcher3/util/MultiValueAlpha;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object p0

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    :cond_14
    return-void
.end method
