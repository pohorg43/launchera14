.class public final synthetic Lcom/oplus/quickstep/anim/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:F

.field public final synthetic h:Lcom/android/launcher3/uioverrides/states/OplusDepthController;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;FFFFFFLcom/android/launcher3/uioverrides/states/OplusDepthController;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/anim/a;->a:Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

    iput p2, p0, Lcom/oplus/quickstep/anim/a;->b:F

    iput p3, p0, Lcom/oplus/quickstep/anim/a;->c:F

    iput p4, p0, Lcom/oplus/quickstep/anim/a;->d:F

    iput p5, p0, Lcom/oplus/quickstep/anim/a;->e:F

    iput p6, p0, Lcom/oplus/quickstep/anim/a;->f:F

    iput p7, p0, Lcom/oplus/quickstep/anim/a;->g:F

    iput-object p8, p0, Lcom/oplus/quickstep/anim/a;->h:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 11

    iget-object v0, p0, Lcom/oplus/quickstep/anim/a;->a:Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

    iget v1, p0, Lcom/oplus/quickstep/anim/a;->b:F

    iget v2, p0, Lcom/oplus/quickstep/anim/a;->c:F

    iget v3, p0, Lcom/oplus/quickstep/anim/a;->d:F

    iget v4, p0, Lcom/oplus/quickstep/anim/a;->e:F

    iget v5, p0, Lcom/oplus/quickstep/anim/a;->f:F

    iget v6, p0, Lcom/oplus/quickstep/anim/a;->g:F

    iget-object v7, p0, Lcom/oplus/quickstep/anim/a;->h:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-object v8, p1

    invoke-static/range {v0 .. v8}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->a(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;FFFFFFLcom/android/launcher3/uioverrides/states/OplusDepthController;Landroid/animation/ValueAnimator;)V

    return-void
.end method
