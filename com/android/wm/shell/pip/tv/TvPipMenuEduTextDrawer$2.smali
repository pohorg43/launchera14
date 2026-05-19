.class Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->closeDrawer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$2;->this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1  # Landroid/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$2;->this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->onCloseEduTextAnimationEnd()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2
    .param p1  # Landroid/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$2;->this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->onCloseEduTextAnimationEnd()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1  # Landroid/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1  # Landroid/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
