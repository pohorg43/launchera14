.class public Lcom/android/wm/shell/pip/PipDisplayLayoutState;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PipDisplayLayoutState"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayId:I

.field private mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/wm/shell/common/DisplayLayout;

    invoke-direct {p1}, Lcom/android/wm/shell/common/DisplayLayout;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    const-string v0, "  "

    invoke-static {p2, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object v1, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->TAG:Ljava/lang/String;

    const-string v2, "mDisplayId="

    invoke-static {p2, v1, p1, v0, v2}, Lcom/android/launcher3/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v1, p0, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->mDisplayId:I

    const-string v2, "getDisplayBounds="

    invoke-static {p2, v1, p1, v0, v2}, Lcom/android/launcher3/e;->a(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getDisplayBounds()Landroid/graphics/Rect;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v1

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getDisplayId()I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->mDisplayId:I

    return p0
.end method

.method public getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/android/wm/shell/common/DisplayLayout;

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/common/DisplayLayout;-><init>(Lcom/android/wm/shell/common/DisplayLayout;)V

    return-object v0
.end method

.method public rotateTo(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/wm/shell/common/DisplayLayout;->rotateTo(Landroid/content/res/Resources;I)V

    return-void
.end method

.method public setDisplayId(I)V
    .registers 2

    iput p1, p0, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->mDisplayId:I

    return-void
.end method

.method public setDisplayLayout(Lcom/android/wm/shell/common/DisplayLayout;)V
    .registers 2
    .param p1  # Lcom/android/wm/shell/common/DisplayLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DisplayLayout;->set(Lcom/android/wm/shell/common/DisplayLayout;)V

    return-void
.end method
