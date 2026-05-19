.class public final synthetic Lcom/oplus/quickstep/anim/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

.field public final synthetic e:Z

.field public final synthetic f:Lcom/android/launcher3/OplusDragLayer;

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;ZZLcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;ZLcom/android/launcher3/OplusDragLayer;Z)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/anim/b;->a:Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

    iput-boolean p2, p0, Lcom/oplus/quickstep/anim/b;->b:Z

    iput-boolean p3, p0, Lcom/oplus/quickstep/anim/b;->c:Z

    iput-object p4, p0, Lcom/oplus/quickstep/anim/b;->d:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    iput-boolean p5, p0, Lcom/oplus/quickstep/anim/b;->e:Z

    iput-object p6, p0, Lcom/oplus/quickstep/anim/b;->f:Lcom/android/launcher3/OplusDragLayer;

    iput-boolean p7, p0, Lcom/oplus/quickstep/anim/b;->g:Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 10

    iget-object v0, p0, Lcom/oplus/quickstep/anim/b;->a:Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

    iget-boolean v1, p0, Lcom/oplus/quickstep/anim/b;->b:Z

    iget-boolean v2, p0, Lcom/oplus/quickstep/anim/b;->c:Z

    iget-object v3, p0, Lcom/oplus/quickstep/anim/b;->d:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    iget-boolean v4, p0, Lcom/oplus/quickstep/anim/b;->e:Z

    iget-object v5, p0, Lcom/oplus/quickstep/anim/b;->f:Lcom/android/launcher3/OplusDragLayer;

    iget-boolean v6, p0, Lcom/oplus/quickstep/anim/b;->g:Z

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->b(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;ZZLcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;ZLcom/android/launcher3/OplusDragLayer;ZLandroid/animation/ValueAnimator;)V

    return-void
.end method
