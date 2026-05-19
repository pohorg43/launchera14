.class Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->buttonTextAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;

.field public final synthetic val$originColor:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView$3;->this$0:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;

    iput p2, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView$3;->val$originColor:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView$3;->this$0:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->access$400(Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;)Lcom/coui/appcompat/button/COUIButton;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView$3;->val$originColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView$3;->val$originColor:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget p0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView$3;->val$originColor:I

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1, v1, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method
