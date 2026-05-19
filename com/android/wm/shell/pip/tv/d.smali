.class public final synthetic Lcom/android/wm/shell/pip/tv/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/d;->a:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/d;->a:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->c(Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;Landroid/animation/ValueAnimator;)V

    return-void
.end method
