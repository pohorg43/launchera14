.class public final synthetic Lcom/android/wm/shell/common/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Landroid/window/DisplayAreaInfo;

.field public final synthetic f:Landroid/view/IDisplayChangeWindowCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl;IIILandroid/window/DisplayAreaInfo;Landroid/view/IDisplayChangeWindowCallback;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/b;->a:Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl;

    iput p2, p0, Lcom/android/wm/shell/common/b;->b:I

    iput p3, p0, Lcom/android/wm/shell/common/b;->c:I

    iput p4, p0, Lcom/android/wm/shell/common/b;->d:I

    iput-object p5, p0, Lcom/android/wm/shell/common/b;->e:Landroid/window/DisplayAreaInfo;

    iput-object p6, p0, Lcom/android/wm/shell/common/b;->f:Landroid/view/IDisplayChangeWindowCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/common/b;->a:Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl;

    iget v1, p0, Lcom/android/wm/shell/common/b;->b:I

    iget v2, p0, Lcom/android/wm/shell/common/b;->c:I

    iget v3, p0, Lcom/android/wm/shell/common/b;->d:I

    iget-object v4, p0, Lcom/android/wm/shell/common/b;->e:Landroid/window/DisplayAreaInfo;

    iget-object v5, p0, Lcom/android/wm/shell/common/b;->f:Landroid/view/IDisplayChangeWindowCallback;

    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl;->a(Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl;IIILandroid/window/DisplayAreaInfo;Landroid/view/IDisplayChangeWindowCallback;)V

    return-void
.end method
