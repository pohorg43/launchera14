.class Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowAttachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->scheduleLifecycleEvents()V
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

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowAttached()V
    .registers 1

    return-void
.end method

.method public onWindowDetached()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    invoke-static {v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->access$000(Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    invoke-static {v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->access$200(Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    invoke-static {v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->access$100(Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    invoke-static {v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->access$200(Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    invoke-static {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->access$300(Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
