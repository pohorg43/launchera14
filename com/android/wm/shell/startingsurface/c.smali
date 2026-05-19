.class public final synthetic Lcom/android/wm/shell/startingsurface/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Landroid/view/ViewGroup;

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;

.field public final synthetic i:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;


# direct methods
.method public synthetic constructor <init>(IILandroid/view/ViewGroup;FFIILcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/startingsurface/c;->a:I

    iput p2, p0, Lcom/android/wm/shell/startingsurface/c;->b:I

    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/c;->c:Landroid/view/ViewGroup;

    iput p4, p0, Lcom/android/wm/shell/startingsurface/c;->d:F

    iput p5, p0, Lcom/android/wm/shell/startingsurface/c;->e:F

    iput p6, p0, Lcom/android/wm/shell/startingsurface/c;->f:I

    iput p7, p0, Lcom/android/wm/shell/startingsurface/c;->g:I

    iput-object p8, p0, Lcom/android/wm/shell/startingsurface/c;->h:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;

    iput-object p9, p0, Lcom/android/wm/shell/startingsurface/c;->i:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 12

    iget v0, p0, Lcom/android/wm/shell/startingsurface/c;->a:I

    iget v1, p0, Lcom/android/wm/shell/startingsurface/c;->b:I

    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/c;->c:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/android/wm/shell/startingsurface/c;->d:F

    iget v4, p0, Lcom/android/wm/shell/startingsurface/c;->e:F

    iget v5, p0, Lcom/android/wm/shell/startingsurface/c;->f:I

    iget v6, p0, Lcom/android/wm/shell/startingsurface/c;->g:I

    iget-object v7, p0, Lcom/android/wm/shell/startingsurface/c;->h:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;

    iget-object v8, p0, Lcom/android/wm/shell/startingsurface/c;->i:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;

    move-object v9, p1

    invoke-static/range {v0 .. v9}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils;->a(IILandroid/view/ViewGroup;FFIILcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;Landroid/animation/ValueAnimator;)V

    return-void
.end method
