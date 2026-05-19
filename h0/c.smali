.class public final synthetic Lh0/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroid/animation/ValueAnimator;

.field public final synthetic b:Lcom/android/launcher3/OplusHotseat;

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:Lcom/android/launcher3/OplusWorkspace;

.field public final synthetic f:F

.field public final synthetic g:Lcom/android/launcher/pageindicators/OplusPageIndicator;

.field public final synthetic h:F


# direct methods
.method public synthetic constructor <init>(Landroid/animation/ValueAnimator;Lcom/android/launcher3/OplusHotseat;FFLcom/android/launcher3/OplusWorkspace;FLcom/android/launcher/pageindicators/OplusPageIndicator;F)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh0/c;->a:Landroid/animation/ValueAnimator;

    iput-object p2, p0, Lh0/c;->b:Lcom/android/launcher3/OplusHotseat;

    iput p3, p0, Lh0/c;->c:F

    iput p4, p0, Lh0/c;->d:F

    iput-object p5, p0, Lh0/c;->e:Lcom/android/launcher3/OplusWorkspace;

    iput p6, p0, Lh0/c;->f:F

    iput-object p7, p0, Lh0/c;->g:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    iput p8, p0, Lh0/c;->h:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 11

    iget-object v0, p0, Lh0/c;->a:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lh0/c;->b:Lcom/android/launcher3/OplusHotseat;

    iget v2, p0, Lh0/c;->c:F

    iget v3, p0, Lh0/c;->d:F

    iget-object v4, p0, Lh0/c;->e:Lcom/android/launcher3/OplusWorkspace;

    iget v5, p0, Lh0/c;->f:F

    iget-object v6, p0, Lh0/c;->g:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    iget v7, p0, Lh0/c;->h:F

    move-object v8, p1

    invoke-static/range {v0 .. v8}, Lcom/android/launcher3/anim/light/FolderAnimUtil;->e(Landroid/animation/ValueAnimator;Lcom/android/launcher3/OplusHotseat;FFLcom/android/launcher3/OplusWorkspace;FLcom/android/launcher/pageindicators/OplusPageIndicator;FLandroid/animation/ValueAnimator;)V

    return-void
.end method
