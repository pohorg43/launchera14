.class public final synthetic Lcom/android/wm/shell/pip/tv/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/f;->a:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/f;->a:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    invoke-static {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->b(Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;)V

    return-void
.end method
