.class public final Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController$translateYHandlerViewAnim$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->translateYHandlerViewAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController$translateYHandlerViewAnim$1;->this$0:Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController$translateYHandlerViewAnim$1;->this$0:Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->access$setMIsTranslateYAniming$p(Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;Z)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController$translateYHandlerViewAnim$1;->this$0:Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->access$getMIsEndDownAnim$p(Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;)Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p0, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController$translateYHandlerViewAnim$1;->this$0:Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->resetTranslateYHandlerViewAnim()V

    :cond_18
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController$translateYHandlerViewAnim$1;->this$0:Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->access$setMIsTranslateYAniming$p(Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;Z)V

    return-void
.end method
