.class Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->textFadeInAndOut(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Ljava/lang/CharSequence;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;

.field public final synthetic val$finalText:Ljava/lang/CharSequence;

.field public final synthetic val$in:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;Ljava/lang/CharSequence;Landroid/animation/ValueAnimator;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView$4;->this$0:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView$4;->val$finalText:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView$4;->val$in:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView$4;->this$0:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->access$400(Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;)Lcom/coui/appcompat/button/COUIButton;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView$4;->val$finalText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView$4;->val$in:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
