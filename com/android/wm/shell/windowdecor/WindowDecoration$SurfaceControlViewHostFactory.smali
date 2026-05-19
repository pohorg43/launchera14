.class interface abstract Lcom/android/wm/shell/windowdecor/WindowDecoration$SurfaceControlViewHostFactory;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/windowdecor/WindowDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SurfaceControlViewHostFactory"
.end annotation


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;)Landroid/view/SurfaceControlViewHost;
    .registers 5

    new-instance p0, Landroid/view/SurfaceControlViewHost;

    const-string v0, "WindowDecoration"

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;Ljava/lang/String;)V

    return-object p0
.end method
