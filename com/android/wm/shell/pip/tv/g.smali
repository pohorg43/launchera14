.class public final synthetic Lcom/android/wm/shell/pip/tv/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

.field public final synthetic b:Landroid/text/SpannableString;

.field public final synthetic c:Landroid/text/SpannedString;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;Landroid/text/SpannableString;Landroid/text/SpannedString;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/g;->a:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/g;->b:Landroid/text/SpannableString;

    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/g;->c:Landroid/text/SpannedString;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/g;->a:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/g;->b:Landroid/text/SpannableString;

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/g;->c:Landroid/text/SpannedString;

    check-cast p1, Landroid/text/Annotation;

    invoke-static {v0, v1, p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->d(Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;Landroid/text/SpannableString;Landroid/text/SpannedString;Landroid/text/Annotation;)V

    return-void
.end method
