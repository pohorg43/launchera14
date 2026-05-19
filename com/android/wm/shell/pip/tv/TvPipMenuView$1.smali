.class Lcom/android/wm/shell/pip/tv/TvPipMenuView$1;
.super Landroid/view/ViewOutlineProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/pip/tv/TvPipMenuView;->initMoveArrows()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipMenuView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->access$000(Lcom/android/wm/shell/pip/tv/TvPipMenuView;I)Landroid/graphics/Path;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    return-void
.end method
