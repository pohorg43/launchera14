.class public final synthetic Lcom/android/launcher3/folder/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

.field public final synthetic b:Lcom/android/launcher3/BubbleTextView;

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:Z

.field public final synthetic h:Z

.field public final synthetic i:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/folder/OplusFolderAnimationManager;Lcom/android/launcher3/BubbleTextView;FFFFZZZ)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/r;->a:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iput-object p2, p0, Lcom/android/launcher3/folder/r;->b:Lcom/android/launcher3/BubbleTextView;

    iput p3, p0, Lcom/android/launcher3/folder/r;->c:F

    iput p4, p0, Lcom/android/launcher3/folder/r;->d:F

    iput p5, p0, Lcom/android/launcher3/folder/r;->e:F

    iput p6, p0, Lcom/android/launcher3/folder/r;->f:F

    iput-boolean p7, p0, Lcom/android/launcher3/folder/r;->g:Z

    iput-boolean p8, p0, Lcom/android/launcher3/folder/r;->h:Z

    iput-boolean p9, p0, Lcom/android/launcher3/folder/r;->i:Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 12

    iget-object v0, p0, Lcom/android/launcher3/folder/r;->a:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-object v1, p0, Lcom/android/launcher3/folder/r;->b:Lcom/android/launcher3/BubbleTextView;

    iget v2, p0, Lcom/android/launcher3/folder/r;->c:F

    iget v3, p0, Lcom/android/launcher3/folder/r;->d:F

    iget v4, p0, Lcom/android/launcher3/folder/r;->e:F

    iget v5, p0, Lcom/android/launcher3/folder/r;->f:F

    iget-boolean v6, p0, Lcom/android/launcher3/folder/r;->g:Z

    iget-boolean v7, p0, Lcom/android/launcher3/folder/r;->h:Z

    iget-boolean v8, p0, Lcom/android/launcher3/folder/r;->i:Z

    move-object v9, p1

    invoke-static/range {v0 .. v9}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->a(Lcom/android/launcher3/folder/OplusFolderAnimationManager;Lcom/android/launcher3/BubbleTextView;FFFFZZZLandroid/animation/ValueAnimator;)V

    return-void
.end method
