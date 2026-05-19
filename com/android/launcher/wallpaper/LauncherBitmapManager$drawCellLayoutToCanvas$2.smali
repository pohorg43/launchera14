.class final Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/wallpaper/LauncherBitmapManager;->drawCellLayoutToCanvas(Lcom/android/launcher3/OplusCellLayout;Landroid/graphics/Canvas;[ILandroid/graphics/Paint;Ll4/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/j;",
        "Lkotlin/jvm/functions/Function2<",
        "Lm7/j0;",
        "Ll4/d<",
        "-",
        "Lh4/z;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "com.android.launcher.wallpaper.LauncherBitmapManager$drawCellLayoutToCanvas$2"
    f = "LauncherBitmapManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $canvas:Landroid/graphics/Canvas;

.field public final synthetic $paint:Landroid/graphics/Paint;

.field public final synthetic $pos:[I

.field public final synthetic $view:Lcom/android/launcher3/OplusCellLayout;

.field public label:I

.field public final synthetic this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/OplusCellLayout;[ILcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/graphics/Canvas;Landroid/graphics/Paint;Ll4/d;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/OplusCellLayout;",
            "[I",
            "Lcom/android/launcher/wallpaper/LauncherBitmapManager;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Ll4/d<",
            "-",
            "Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->$view:Lcom/android/launcher3/OplusCellLayout;

    iput-object p2, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->$pos:[I

    iput-object p3, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iput-object p4, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->$canvas:Landroid/graphics/Canvas;

    iput-object p5, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->$paint:Landroid/graphics/Paint;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ll4/d<",
            "*>;)",
            "Ll4/d<",
            "Lh4/z;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;

    iget-object v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->$view:Lcom/android/launcher3/OplusCellLayout;

    iget-object v2, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->$pos:[I

    iget-object v3, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v4, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->$canvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->$paint:Landroid/graphics/Paint;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;-><init>(Lcom/android/launcher3/OplusCellLayout;[ILcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/graphics/Canvas;Landroid/graphics/Paint;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/j0;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->label:I

    if-nez v0, :cond_6a

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->$view:Lcom/android/launcher3/OplusCellLayout;

    iget-object v0, p1, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    iget-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->$pos:[I

    const/4 v2, 0x0

    aget p1, p1, v2

    aput p1, v1, v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-gtz p1, :cond_23

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_23
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move v3, v2

    :goto_28
    if-ge v3, p1, :cond_67

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_31

    goto :goto_64

    :cond_31
    instance-of v5, v4, Lcom/android/launcher3/card/LauncherCardView;

    const/4 v6, 0x1

    if-eqz v5, :cond_3e

    move-object v5, v4

    check-cast v5, Lcom/android/launcher3/card/LauncherCardView;

    invoke-interface {v5, v6, v6}, Lcom/android/common/util/IViewToBitmap;->getViewScreenshot(ZZ)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_44

    :cond_3e
    iget-object v5, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    invoke-static {v5, v4}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$getSoftBitmapOfView(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v5

    :goto_44
    if-eqz v5, :cond_64

    iget-object v7, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v8, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->$pos:[I

    aget v8, v8, v2

    aget v6, v1, v6

    invoke-static {v7, v4, v8, v6}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$getViewBoundsInCanvas(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v6, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->$canvas:Landroid/graphics/Canvas;

    iget v7, v4, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget-object v8, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->$paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5, v7, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v4, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    invoke-static {v4, v5}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$recycleBitmap(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/graphics/Bitmap;)V

    :cond_64
    :goto_64
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    :cond_67
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_6a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
