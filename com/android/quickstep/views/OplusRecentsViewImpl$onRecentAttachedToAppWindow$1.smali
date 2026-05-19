.class public final Lcom/android/quickstep/views/OplusRecentsViewImpl$onRecentAttachedToAppWindow$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/OplusRecentsViewImpl;->onRecentAttachedToAppWindow(ZLandroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusRecentsViewImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusRecentsViewImpl.kt\ncom/android/quickstep/views/OplusRecentsViewImpl$onRecentAttachedToAppWindow$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,4563:1\n1#2:4564\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $checkAttachOnFinish:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field

.field private isCanceled:Z

.field public final synthetic this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "TT;TSTATE_TYPE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lkotlin/jvm/functions/Function0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "TT;TSTATE_TYPE;>;",
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$onRecentAttachedToAppWindow$1;->this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iput-object p2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$onRecentAttachedToAppWindow$1;->$checkAttachOnFinish:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$onRecentAttachedToAppWindow$1;->isCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$onRecentAttachedToAppWindow$1;->this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-static {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->access$isAttachedToWindow$p(Lcom/android/quickstep/views/OplusRecentsViewImpl;)Z

    move-result p1

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$onRecentAttachedToAppWindow$1;->isCanceled:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$onRecentAttachedToAppWindow$1;->$checkAttachOnFinish:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_14
    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$onRecentAttachedToAppWindow$1;->isCanceled:Z

    if-nez v0, :cond_1f

    if-eqz p1, :cond_1f

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$onRecentAttachedToAppWindow$1;->this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->isCompleteAttachToWindow:Z

    :cond_1f
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$onRecentAttachedToAppWindow$1;->isCanceled:Z

    return-void
.end method
