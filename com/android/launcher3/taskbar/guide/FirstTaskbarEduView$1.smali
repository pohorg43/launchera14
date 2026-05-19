.class Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->handleClose(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView$1;->this$0:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView$1;->this$0:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->access$000(Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView$1;->this$0:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->onCloseComplete()V

    return-void
.end method
