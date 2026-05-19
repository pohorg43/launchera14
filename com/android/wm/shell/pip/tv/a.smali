.class public final synthetic Lcom/android/wm/shell/pip/tv/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/pip/PipMediaController$ActionListener;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/a;->a:Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;

    return-void
.end method


# virtual methods
.method public final onMediaActionsChanged(Ljava/util/List;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/a;->a:Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->onMediaActionsChanged(Ljava/util/List;)V

    return-void
.end method
