.class public final synthetic Lcom/android/wm/shell/pip/tv/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/pip/tv/TvPipController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/c;->a:Lcom/android/wm/shell/pip/tv/TvPipController;

    return-void
.end method


# virtual methods
.method public final executeAction(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/c;->a:Lcom/android/wm/shell/pip/tv/TvPipController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipController;->a(Lcom/android/wm/shell/pip/tv/TvPipController;I)V

    return-void
.end method
