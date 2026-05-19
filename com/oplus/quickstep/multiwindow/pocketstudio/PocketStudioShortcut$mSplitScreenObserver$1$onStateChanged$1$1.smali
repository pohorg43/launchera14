.class public final Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut$mSplitScreenObserver$1$onStateChanged$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut$mSplitScreenObserver$1;->onStateChanged(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut$mSplitScreenObserver$1$onStateChanged$1$1;->$taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut$mSplitScreenObserver$1$onStateChanged$1$1;->$taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut$mSplitScreenObserver$1$onStateChanged$1$1;->$taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
