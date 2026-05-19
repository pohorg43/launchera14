.class public final synthetic Lcom/android/wm/shell/common/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:Z

.field public final synthetic f:F

.field public final synthetic g:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;FFFZFF)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/h;->a:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iput p2, p0, Lcom/android/wm/shell/common/h;->b:F

    iput p3, p0, Lcom/android/wm/shell/common/h;->c:F

    iput p4, p0, Lcom/android/wm/shell/common/h;->d:F

    iput-boolean p5, p0, Lcom/android/wm/shell/common/h;->e:Z

    iput p6, p0, Lcom/android/wm/shell/common/h;->f:F

    iput p7, p0, Lcom/android/wm/shell/common/h;->g:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 10

    iget-object v0, p0, Lcom/android/wm/shell/common/h;->a:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    iget v1, p0, Lcom/android/wm/shell/common/h;->b:F

    iget v2, p0, Lcom/android/wm/shell/common/h;->c:F

    iget v3, p0, Lcom/android/wm/shell/common/h;->d:F

    iget-boolean v4, p0, Lcom/android/wm/shell/common/h;->e:Z

    iget v5, p0, Lcom/android/wm/shell/common/h;->f:F

    iget v6, p0, Lcom/android/wm/shell/common/h;->g:F

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->a(Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;FFFZFFLandroid/animation/ValueAnimator;)V

    return-void
.end method
