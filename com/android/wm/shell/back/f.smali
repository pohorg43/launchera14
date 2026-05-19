.class public final synthetic Lcom/android/wm/shell/back/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;FFFFII)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/back/f;->a:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    iput p2, p0, Lcom/android/wm/shell/back/f;->b:F

    iput p3, p0, Lcom/android/wm/shell/back/f;->c:F

    iput p4, p0, Lcom/android/wm/shell/back/f;->d:F

    iput p5, p0, Lcom/android/wm/shell/back/f;->e:F

    iput p6, p0, Lcom/android/wm/shell/back/f;->f:I

    iput p7, p0, Lcom/android/wm/shell/back/f;->g:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/back/f;->a:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    iget v1, p0, Lcom/android/wm/shell/back/f;->b:F

    iget v2, p0, Lcom/android/wm/shell/back/f;->c:F

    iget v3, p0, Lcom/android/wm/shell/back/f;->d:F

    iget v4, p0, Lcom/android/wm/shell/back/f;->e:F

    iget v5, p0, Lcom/android/wm/shell/back/f;->f:I

    iget v6, p0, Lcom/android/wm/shell/back/f;->g:I

    invoke-static/range {v0 .. v6}, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;->a(Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;FFFFII)V

    return-void
.end method
