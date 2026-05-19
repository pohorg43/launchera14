.class public final synthetic Lcom/android/wm/shell/draganddrop/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/draganddrop/DragLayoutExt;

.field public final synthetic b:Landroid/animation/ValueAnimator;

.field public final synthetic c:Z

.field public final synthetic d:Landroid/graphics/Rect;

.field public final synthetic e:I

.field public final synthetic f:Landroid/graphics/Rect;

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:Landroid/widget/LinearLayout$LayoutParams;

.field public final synthetic j:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/draganddrop/DragLayoutExt;Landroid/animation/ValueAnimator;ZLandroid/graphics/Rect;ILandroid/graphics/Rect;IILandroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/d;->a:Lcom/android/wm/shell/draganddrop/DragLayoutExt;

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/d;->b:Landroid/animation/ValueAnimator;

    iput-boolean p3, p0, Lcom/android/wm/shell/draganddrop/d;->c:Z

    iput-object p4, p0, Lcom/android/wm/shell/draganddrop/d;->d:Landroid/graphics/Rect;

    iput p5, p0, Lcom/android/wm/shell/draganddrop/d;->e:I

    iput-object p6, p0, Lcom/android/wm/shell/draganddrop/d;->f:Landroid/graphics/Rect;

    iput p7, p0, Lcom/android/wm/shell/draganddrop/d;->g:I

    iput p8, p0, Lcom/android/wm/shell/draganddrop/d;->h:I

    iput-object p9, p0, Lcom/android/wm/shell/draganddrop/d;->i:Landroid/widget/LinearLayout$LayoutParams;

    iput-object p10, p0, Lcom/android/wm/shell/draganddrop/d;->j:Landroid/widget/LinearLayout$LayoutParams;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 13

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/d;->a:Lcom/android/wm/shell/draganddrop/DragLayoutExt;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/d;->b:Landroid/animation/ValueAnimator;

    iget-boolean v2, p0, Lcom/android/wm/shell/draganddrop/d;->c:Z

    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/d;->d:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/wm/shell/draganddrop/d;->e:I

    iget-object v5, p0, Lcom/android/wm/shell/draganddrop/d;->f:Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/wm/shell/draganddrop/d;->g:I

    iget v7, p0, Lcom/android/wm/shell/draganddrop/d;->h:I

    iget-object v8, p0, Lcom/android/wm/shell/draganddrop/d;->i:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v9, p0, Lcom/android/wm/shell/draganddrop/d;->j:Landroid/widget/LinearLayout$LayoutParams;

    move-object v10, p1

    invoke-static/range {v0 .. v10}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->a(Lcom/android/wm/shell/draganddrop/DragLayoutExt;Landroid/animation/ValueAnimator;ZLandroid/graphics/Rect;ILandroid/graphics/Rect;IILandroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method
